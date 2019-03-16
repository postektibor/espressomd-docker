Install rsync on your local machine
brew install rsync


Buildovanie: docker build . -t espresso

Spustenie:
docker run -v /Users/tiborpostek/Documents/bitbucket/espresso:/root/ -it espresso /bin/bash

Treba niekedy nainštalovať:
pip install -r /root/requirements.txt --user --upgrade

buildenie espressa:
cd /root/cmake-build-debug
rm -rf *
cmake ../
make -j 4


Najnovsia verzia:
docker build -t espresso .
docker run -d -p 3022:22 -p 7777:7777 -p 9999:9999 --privileged --security-opt seccomp:unconfined --name espresso-container espresso

Pripojenie:
/*v pripade potreby*/ rm ~/.ssh/known_hosts

ssh -X -p 3022 root@127.0.0.1




Docker removing all images and containers:
docker rmi $(docker images -q)
docker rm $(docker ps -a -q)