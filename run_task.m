system('git pull');
cd ../SemanticTracking
system('git pull');
cd ../OTB_protocol

main_running

system('git rm -rf ./tmp');

system('git add -A');
system('git commit -m "resutlts-20160513"');
system('git push');
