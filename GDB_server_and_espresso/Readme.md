//Install rsync on your local machine
brew install rsync

Building:
docker build -t espresso .
//If you want install another dependencies from requirement.txt, so change last line of Dockerfile and add new dependencies to installation


Running:
docker run -d -p 3022:22 -p 7777:7777 -p 9999:9999 --restart unless-stopped --privileged --security-opt seccomp:unconfined --name espresso-container espresso

Connecting to new container, password is 'root':
ssh -X -p 3022 root@127.0.0.1

//sometimes in your local machine you must clean cache
rm ~/.ssh/known_hosts

Connecting from Clion IDE:
https://www.jetbrains.com/help/clion/remote-projects-support.html
//use port 3022



Helper commands:
Docker removing all images and containers:
docker rmi $(docker images -q)
docker rm $(docker ps -a -q)