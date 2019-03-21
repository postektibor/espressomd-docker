Building:
docker build . -t espresso_build

Running:
docker run -v /Users/tiborpostek/Documents/bitbucket/espresso:/root/ -it espresso_build /bin/bash

//Change path to espresso
//Now you have session in terminal with virtual container and you can continue with next commands:

Making of espresso:
cd /root/build
cmake ../
make -j 4

//Directory is mounted to your local machine, so everything you make in local is making in virtual machine.
