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
