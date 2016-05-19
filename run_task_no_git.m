close all
clear
clc
warning off all;

addpath(genpath('./'));
addpath(genpath('../SemanticTracking/'));

net.shared_layers = fullfile('models','ST_Shared_trained.mat');
net.NetC_layers   = fullfile('models','ST_NetC_trained.mat');
net.NetT_layers   = fullfile('models','ST_NetT_trained.mat');

seqs=configSeqs;

trackers=configTrackers;

shiftTypeSet = {'left','right','up','down','topLeft','topRight','bottomLeft','bottomRight','scale_8','scale_9','scale_11','scale_12'};

evalType='OPE'; %'SRE','TRE'

diary(['./tmp/' evalType '.txt']);

numSeq=length(seqs);
numTrk=length(trackers);

finalPath = ['./results/results_Ours_' evalType '/'];

if ~exist(finalPath,'dir')
    mkdir(finalPath);
end

tmpRes_path = ['./tmp/' evalType '/'];
bSaveImage=0;

if ~exist(tmpRes_path,'dir')
    mkdir(tmpRes_path);
end

pathAnno = './anno/';

start_t=clock;
start_t=uint8(start_t(2:end));

for idxSeq=1:length(seqs)
    s = seqs{idxSeq};
    
%      if ~strcmp(s.name, 'coke')
%         continue;
%      end
        
    s.len = s.endFrame - s.startFrame + 1;
    s.s_frames = cell(s.len,1);
    nz	= strcat('%0',num2str(s.nz),'d'); %number of zeros in the name of image
    for i=1:s.len
        image_no = s.startFrame + (i-1);
        id = sprintf(nz,image_no);
        s.s_frames{i} = strcat(s.path,id,'.',s.ext);
    end
    
    img = imread(s.s_frames{1});
    [imgH,imgW,ch]=size(img);
    
    rect_anno = dlmread([pathAnno s.name '.txt']);
    numSeg = 20;
    
    
    switch evalType
        case 'SRE'
            [subSeqs, subAnno]=splitSeqTRE(s,numSeg,rect_anno);
            subS = subSeqs{1};
            subA = subAnno{1};
            subSeqs=[];
            subAnno=[];
            r=subS.init_rect;
            
            for i=1:length(shiftTypeSet)
                subSeqs{i} = subS;
                shiftType = shiftTypeSet{i};
                subSeqs{i}.init_rect=shiftInitBB(subS.init_rect,shiftType,imgH,imgW);
                subSeqs{i}.shiftType = shiftType;
                
                subAnno{i} = subA;
            end

        case 'OPE'          
            [subSeqs, subAnno]=splitSeqTRE(s,numSeg,rect_anno);
            subS           = subSeqs{1};
            subA           = subAnno{1};
            subSeqs(2:end) = [];
            subAnno(2:end) = [];
        otherwise
    end

            
    for idxTrk=1:numTrk
        t = trackers{idxTrk};
        
%         if ~strcmp(t.name, 'LSK')
%             continue;
%         end

        % validate the results
        if exist([finalPath s.name '_' t.name '.mat'])
            load([finalPath s.name '_' t.name '.mat']);
            bfail=checkResult(results, subAnno);
            if bfail
                disp([s.name ' '  t.name]);
            end
            continue;
        end

        switch t.name
            case {'VTD','VTS'}
                continue;
        end

        results = [];
        for idx=1:length(subSeqs)
            disp([num2str(idxTrk) '_' t.name ', ' num2str(idxSeq) '_' s.name ': ' num2str(idx) '/' num2str(length(subSeqs))])       

            rp = [tmpRes_path s.name '_' t.name '_' num2str(idx) '/'];
            if bSaveImage&~exist(rp,'dir')
                mkdir(rp);
            end
            
            subS = subSeqs{idx};
            
            subS.name = [subS.name '_' num2str(idx)];
            
%             subS.s_frames = subS.s_frames(1:20);
%             subS.len=20;
%             subS.endFrame=subS.startFrame+subS.len-1;
            
%             try
                switch t.name
                    case {'SemanticTracking','VR','TM','RS','PD','MS'}
                    otherwise
                        cd(['./trackers/' t.name]);
                        addpath(genpath('./'))
                end
                ST_rest_bbg = demo_STinOTB(subS, net);
                res.res  = ST_rest_bbg;
                res.type = 'rect';
                
                switch t.name
                    case {'SemanticTracking','VR','TM','RS','PD','MS'}
                    otherwise
                        rmpath(genpath('./'))
                        cd('../../');
                end
                
                if isempty(res)
                    results = [];
                    break;
                end
%             catch err
%                 disp(['error in ', subS.name]);
%                 rmpath(genpath('./'))
%                 cd('../../');
%                 res=[];
%                 continue;
%             end
            
            res.len = subS.len;
            res.annoBegin = subS.annoBegin;
            res.startFrame = subS.startFrame;
                    
            switch evalType
                case 'SRE'
                    res.shiftType = shiftTypeSet{idx};
            end
            
            results{idx} = res;
            
        end
        save([finalPath s.name '_' t.name '.mat'], 'results');
        
    end
end


disp(['Start at: ' num2str(start_t(1)) '(Month)/' num2str(start_t(2)) ' ' num2str(start_t(3)) ':' num2str(start_t(4)) ':' num2str(start_t(5))]);
end_t=clock;
end_t=uint8(end_t(2:end));
disp(['Stop at: ' num2str(end_t(1)) '(Month)/' num2str(end_t(2)) ' ' num2str(end_t(3)) ':' num2str(end_t(4)) ':' num2str(end_t(5))]);