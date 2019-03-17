Building: docker build . -t espresso

Running:
docker run -v /Users/tiborpostek/Documents/bitbucket/espresso:/root/ -it espresso /bin/bash

//Now you have session in terminal with virtual container and you can continue with next commands:

Fonstall for first time:
pip install -r /root/requirements.txt --user --upgrade

Making of espresso:
cd /root/cmake-build-debug
rm -rf *
cmake ../
make -j 4

//Directory is mounted to your local machine, so everything you make in local is making in virtual machine.