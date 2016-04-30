function seqs=configSeqs

fprintf('********************************************************\n')
author_id = input('Who are you: 1-Jingjing; 2-Qiang; 3-Linbo; 4-All\n********************************************************\n');

seqJingjing={struct('name','soccer','path','..\dataset\OTB\soccer\img\','startFrame',1,'endFrame',392,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','matrix','path','..\dataset\OTB\matrix\img\','startFrame',1,'endFrame',100,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','ironman','path','..\dataset\OTB\ironman\img\','startFrame',1,'endFrame',166,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','deer','path','..\dataset\OTB\deer\img\','startFrame',1,'endFrame',71,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','skating1','path','..\dataset\OTB\skating1\img\','startFrame',1,'endFrame',400,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','shaking','path','..\dataset\OTB\shaking\img\','startFrame',1,'endFrame',365,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','singer1','path','..\dataset\OTB\singer1\img\','startFrame',1,'endFrame',351,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','singer2','path','..\dataset\OTB\singer2\img\','startFrame',1,'endFrame',366,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','carDark','path','..\dataset\OTB\carDark\img\','startFrame',1,'endFrame',393,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','car4','path','..\dataset\OTB\car4\img\','startFrame',1,'endFrame',659,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','david','path','..\dataset\OTB\david\img\','startFrame',300,'endFrame',770,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','coke','path','..\dataset\OTB\coke\img\','startFrame',1,'endFrame',291,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...  
    struct('name','david2','path','..\dataset\OTB\david2\img\','startFrame',1,'endFrame',537,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...    
    struct('name','sylvester','path','..\dataset\OTB\sylvester\img\','startFrame',1,'endFrame',1345,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','trellis','path','..\dataset\OTB\trellis\img\','startFrame',1,'endFrame',569,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','fish','path','..\dataset\OTB\fish\img\','startFrame',1,'endFrame',476,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','bolt','path','..\dataset\OTB\bolt\img\','startFrame',1,'endFrame',350,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','boy','path','..\dataset\OTB\boy\img\','startFrame',1,'endFrame',602,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','subway','path','..\dataset\OTB\subway\img\','startFrame',1,'endFrame',175,'nz',4,'ext','jpg','init_rect', [0 0 0 0]),...    
    struct('name','crossing','path','..\dataset\OTB\crossing\img\','startFrame',1,'endFrame',120,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','couple','path','..\dataset\OTB\couple\img\','startFrame',1,'endFrame',140,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','football1','path','..\dataset\OTB\football1\img\','startFrame',1,'endFrame',74,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','jogging-1','path','..\dataset\OTB\jogging\img\','startFrame',1,'endFrame',307,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','jogging-2','path','..\dataset\OTB\jogging\img\','startFrame',1,'endFrame',307,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','freeman4','path','..\dataset\OTB\freeman4\img\','startFrame',1,'endFrame',283,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','david3','path','..\dataset\OTB\david3\img\','startFrame',1,'endFrame',252,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','motorRolling','path','..\dataset\OTB\motorRolling\img\','startFrame',1,'endFrame',164,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','jumping','path','..\dataset\OTB\jumping\img\','startFrame',1,'endFrame',313,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','carScale','path','..\dataset\OTB\carScale\img\','startFrame',1,'endFrame',252,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','skiing','path','..\dataset\OTB\skiing\img\','startFrame',1,'endFrame',81,'nz',4,'ext','jpg','init_rect', [0,0,0,0])};
 
seqLinbo={struct('name','doll','path','..\dataset\OTB\doll\img\','startFrame',1,'endFrame',3872,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','girl','path','..\dataset\OTB\girl\img\','startFrame',1,'endFrame',500,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','walking2','path','..\dataset\OTB\walking2\img\','startFrame',1,'endFrame',500,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','walking','path','..\dataset\OTB\walking\img\','startFrame',1,'endFrame',412,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','fleetface','path','..\dataset\OTB\fleetface\img\','startFrame',1,'endFrame',707,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','freeman1','path','..\dataset\OTB\freeman1\img\','startFrame',1,'endFrame',326,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...    
    struct('name','mhyang','path','..\dataset\OTB\mhyang\img\','startFrame',1,'endFrame',1490,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','freeman3','path','..\dataset\OTB\freeman3\img\','startFrame',1,'endFrame',460,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','dog1','path','..\dataset\OTB\dog1\img\','startFrame',1,'endFrame',1350,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','dudek','path','..\dataset\OTB\dudek\img\','startFrame',1,'endFrame',1145,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','suv','path','..\dataset\OTB\suv\img\','startFrame',1,'endFrame',945,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','mountainBike','path','..\dataset\OTB\mountainBike\img\','startFrame',1,'endFrame',228,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','lemming','path','..\dataset\OTB\lemming\img\','startFrame',1,'endFrame',1336,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','liquor','path','..\dataset\OTB\liquor\img\','startFrame',1,'endFrame',1741,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','woman','path','..\dataset\OTB\woman\img\','startFrame',1,'endFrame',597,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','faceocc2','path','..\dataset\OTB\faceocc2\img\','startFrame',1,'endFrame',812,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','basketball','path','..\dataset\OTB\basketball\img\','startFrame',1,'endFrame',725,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','football','path','..\dataset\OTB\football\img\','startFrame',1,'endFrame',362,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','tiger1','path','..\dataset\OTB\tiger1\img\','startFrame',1,'endFrame',354,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','tiger2','path','..\dataset\OTB\tiger2\img\','startFrame',1,'endFrame',365,'nz',4,'ext','jpg','init_rect', [0,0,0,0])};

seqQiang={struct('name','biker','path','..\dataset\OTB\biker\img\','startFrame',1,'endFrame',142,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','faceocc1','path','..\dataset\OTB\faceocc1\img\','startFrame',1,'endFrame',892,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),...
    struct('name','bird1','path','..\dataset\OTB\bird1\img\','startFrame',1,'endFrame',408,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','bird2','path','..\dataset\OTB\bird2\img\','startFrame',1,'endFrame',99,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','blurBody','path','..\dataset\OTB\blurBody\img\','startFrame',1,'endFrame',334,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','blurCar1','path','..\dataset\OTB\blurCar1\img\','startFrame',247,'endFrame',988,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','blurCar2','path','..\dataset\OTB\blurCar2\img\','startFrame',1,'endFrame',585,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','blurCar3','path','..\dataset\OTB\blurCar3\img\','startFrame',3,'endFrame',359,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','blurCar4','path','..\dataset\OTB\blurCar4\img\','startFrame',18,'endFrame',397,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','blurFace','path','..\dataset\OTB\blurFace\img\','startFrame',1,'endFrame',493,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','blurOwl','path','..\dataset\OTB\blurOwl\img\','startFrame',1,'endFrame',631,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','board','path','..\dataset\OTB\board\img\','startFrame',1,'endFrame',698,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','bolt2','path','..\dataset\OTB\bolt2\img\','startFrame',1,'endFrame',293,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','box','path','..\dataset\OTB\box\img\','startFrame',1,'endFrame',1161,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','car1','path','..\dataset\OTB\car1\img\','startFrame',1,'endFrame',1020,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','car2','path','..\dataset\OTB\car2\img\','startFrame',1,'endFrame',913,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','car24','path','..\dataset\OTB\car24\img\','startFrame',1,'endFrame',3059,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','clifBar','path','..\dataset\OTB\clifBar\img\','startFrame',1,'endFrame',472,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','coupon','path','..\dataset\OTB\coupon\img\','startFrame',1,'endFrame',327,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','crowds','path','..\dataset\OTB\crowds\img\','startFrame',1,'endFrame',347,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','dancer','path','..\dataset\OTB\dancer\img\','startFrame',1,'endFrame',225,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','dancer2','path','..\dataset\OTB\dancer2\img\','startFrame',1,'endFrame',150,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','diving','path','..\dataset\OTB\diving\img\','startFrame',1,'endFrame',215,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','dog','path','..\dataset\OTB\dog\img\','startFrame',1,'endFrame',127,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','dragonBaby','path','..\dataset\OTB\dragonBaby\img\','startFrame',1,'endFrame',113,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','girl2','path','..\dataset\OTB\girl2\img\','startFrame',1,'endFrame',1500,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','gym','path','..\dataset\OTB\gym\img\','startFrame',1,'endFrame',767,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','human2','path','..\dataset\OTB\human2\img\','startFrame',1,'endFrame',1128,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','human3','path','..\dataset\OTB\human3\img\','startFrame',1,'endFrame',1698,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','human4','path','..\dataset\OTB\human4\img\','startFrame',1,'endFrame',667,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','human5','path','..\dataset\OTB\human5\img\','startFrame',1,'endFrame',713,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','human6','path','..\dataset\OTB\human6\img\','startFrame',1,'endFrame',792,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','human7','path','..\dataset\OTB\human7\img\','startFrame',1,'endFrame',250,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','human8','path','..\dataset\OTB\human8\img\','startFrame',1,'endFrame',128,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','human9','path','..\dataset\OTB\human9\img\','startFrame',1,'endFrame',305,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','jump','path','..\dataset\OTB\jump\img\','startFrame',1,'endFrame',122,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','kiteSurf','path','..\dataset\OTB\kiteSurf\img\','startFrame',1,'endFrame',84,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','man','path','..\dataset\OTB\man\img\','startFrame',1,'endFrame',134,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','panda','path','..\dataset\OTB\panda\img\','startFrame',1,'endFrame',1000,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','redTeam','path','..\dataset\OTB\redTeam\img\','startFrame',1,'endFrame',1918,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','rubik','path','..\dataset\OTB\rubik\img\','startFrame',1,'endFrame',1997,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','skater','path','..\dataset\OTB\skater\img\','startFrame',1,'endFrame',160,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','skater2','path','..\dataset\OTB\skater2\img\','startFrame',1,'endFrame',435,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','skating2-1','path','..\dataset\OTB\skating2\img\','startFrame',1,'endFrame',473,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','skating2-2','path','..\dataset\OTB\skating2\img\','startFrame',1,'endFrame',473,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','surfer','path','..\dataset\OTB\surfer\img\','startFrame',1,'endFrame',376,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','toy','path','..\dataset\OTB\toy\img\','startFrame',1,'endFrame',271,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','trans','path','..\dataset\OTB\trans\img\','startFrame',1,'endFrame',124,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','twinnings','path','..\dataset\OTB\twinnings\img\','startFrame',1,'endFrame',472,'nz',4,'ext','jpg','init_rect', [0,0,0,0]),... 
    struct('name','vase','path','..\dataset\OTB\vase\img\','startFrame',1,'endFrame',271,'nz',4,'ext','jpg','init_rect', [0,0,0,0])};

switch author_id
    case 1 
        seqs = seqJingjing;
    case 2
        seqs = seqQiang;
    case 3
        seqs = seqLinbo;
    case 4
        seqs = [seqJingjing, seqLinbo, seqQiang];
end


