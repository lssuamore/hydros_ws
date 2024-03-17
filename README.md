# hydros_ws
Installation

Author: Ryan Houck

System Built on:
 - Jetson Tx2
 - ROS1 (Melodic and Noetic)
 - Needs ~ 2.5 GB Memory for use ~ about 10 GB storage  

INCLUDES: 
## Update repository with master
```
cd hydros_ws/
```
Make sure you are on the master branch with the following:
```
git checkout master
```
Pull the repository to your computer with the following:
```
git pull
```
username:
```
lssuamore
```
password: (this is a token you may have to create one)
```
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
```
## Installation Process:

```
cd ~
```
```
git clone https://github.com/lssuamore/hydros_ws.git
```
username: "your username"   

password:
```
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
```
```
cd hydros_ws/
```
```
git submodule init
```
```
git submodule update
```

Possibly needed installs
```
sudo apt-get install ros-noetic-geogr*
```
```
sudo apt-get install ros-noetic-nmea-msgs
```
Delete the devel and build folders. Comment out the add_dependences and target_link_libraries from the CMakeLists.txt (amore).
```
catkin_make
```
Uncomment the add_dependences and target_link_libraries.
```
catkin_make
```

# Git Commands
git checkout is how you will switch branches. The -b indicates we are creating a new branch.
```
git checkout -b <your name>
```
The following command adds all changes to be tracked that you changed. The -A parameter is what specificlly sets everything. You can also use git rm and other similar commands. As always, see the git --help command for specifics past the tutorial.
```
git add -A
```
The commit command does what it sounds like. You are commiting to the code as it should have made some change. This can be as simple as finishing up for the night though, it doesn't need to be cohesive. This is not pushing any code github yet, this is just locally saved on your computer.
```
git commit -m "Your message here"
```
The push command sends your code to the github servers. origin just indicates that it is going where we got it from, no real need to work with this in what we develop with. Last you have to make sure you choose your branch to send it too. Again in this case the branch is your name, but if you ever forget what it is called, you can always use the git status or git branch command.
```
git push origin main
```
username: 
```
lssuamore
```

password:
```
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
```

Pull requests:
Now that you have developed all of this code (and tested), you would like it to be included in the master distribution. This is done using a pull request, and whoever maintains the repository will manage any conflicting issues. This is done by going to the repository itself, and clicking the pull request tab.
