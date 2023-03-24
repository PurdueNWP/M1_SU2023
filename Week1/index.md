---
title: Getting Started

authors: "Wen-wen Tung and Adithya Ganesh"
---

## 1. How to *clone* this GitHub repository to Anvil

You could have all of the files in this GitHub repository copied into the home directory of your Anvil account. This provides tremendous convenience for your computing. We will update the GitHub contents weekly, and will ask you to reset the copy in your Anvil account to the new contents.

### a. Generate a *SSH Key*

 - [![Adithya Video Demo of Generating and Using SSH Key ](http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg)](http://www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE "Video Title")
 -  We will take the steps following this [GitHub instruction](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key)
 -  Log into Anvil OnDemand: https://ondemand.anvil.rcac.purdue.edu/
 -  Select **Clusters** then **\>\_Anvil Shell Access**
 -  Type the following behind the command prompt:
`ssh-keygen -t ed25519 -C "your_email@purdue.edu"`
    - Enter a file in which to save the key (`~/.ssh/id_ed25519: [Press enter]`); by pressing enter you accept the suggested file name.
    - Enter a passphrase and remember this passphrase.


### b. Adding the *SSH Key* to your GitHub account

 - The video above also shows how to do this step.
 - The SSH Key comes in a pair, `id_ed25519` and `id_ed25519.pub`, both were generated in step a. and stored in `~/.ssh`.
 - We will essentially follow this [GitHub instruction](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-s[…]to-your-account) so that a copy of `id_ed25519.pub` will be saved in your GitHub account setting.
     - For step 1, in **\>\_Anvil Shell Access**, type the following behind the command prompt: `cat ~/.ssh/id_ed25519.pub`. Then, copy the entire line output on the screen, follow through the rest of the steps in the instruction.
     - Once completed, make sure you exit the **\>\_Anvil Shell Access** by typing:`exit`. Then, close the browser tab of the **\>\_Anvil Shell Access** to protect your SSH Key.

### c. To clone the GitHub for the first time

 -  [![Adithya Video Demo of Cloning GitHub Repository for the First Time](http://img.youtube.com/vi/9qNy9kjZ29Q/0.jpg)](https://mediaspace.itap.purdue.edu/media/Local+Environment+Setup/1_sgswunaa "Local Environment Setup")
 -  Make sure you are logged into Anvil OnDemand: https://ondemand.anvil.rcac.purdue.edu/
 -  Select **Clusters** then **\>\_Anvil Shell Access**
 -  Type the following behind the command prompt:

```
cd

git clone git@github.com:PurdueNWP/M1_SP2023.git
```

 -  These will make sure that your copy of the GitHub repository will be in your home directory as
```
~/M1_SP2023
```

### d. To checkout updated repository in future weeks

 - Make sure you are in the your cloned GitHub directory:
```
cd ~/M1_SP2023/
```
 - Checkout the current master branch:
```
git checkout master
```
 - *The branching step is optional*. The purpose is to preserve your changes in your local files, if any, up to this point. You could customize the branch name.
```
git branch mybranch-date
```
However, we recommend the simple practice of copying codes you need from `~/M1_SP2023` to `~/NWP1` (to be set up for you in the next step). Then, make changes in `~/NWP1` for your exercise and reports. That way, you compeltely avoid the need for branching.

 - The following steps will reset your files in `~/M1_SP2023` to those at the **origin** at https://github.com/PurdueNWP/M1_SP2023

```
git fetch --all
```
You will be asked to provide your career account and password.

```
git reset --hard origin/master
```

---

## 2. Setup your Python and Quarto environments for the course

The script [`first_launch.sh`](first_launch.sh) automates three tasks. The end of the video above also shows how to run this script.

 - Install [Quarto](https://quarto.org) in your Anvil home directory, the newest scientific and technical publishing system that you will generate your project reports with. 
 - Create a directory `~/NWP` with sub-directories by the week for you to store and develop your work with.
 - Install a Jupyter Notebook "kernel" that will load the **MetPy** Python environment built for this course.
 
To run the script, use the following two steps. 

### a. Make the script executable
The first step is to make the file executable by changing its attributes:

```
cd ~/M1_SP2023/Week1
chmod +x first_launch.sh
```

### b. Execute the script

```
./first_launch.sh
```

There will be a short run of screen output, followed by the messages:

```
Quarto CLI installed successfully!
To Use the Python MetPy environment in the future, type the following commands:
module use /anvil/projects/x-ees230003/etc/modules
module load conda-env/MetPy-py3.8.8
Or, select Python (My MetPy Kernel) in the Jupyter Notebook
```

---

## 3. Next Step

Now that you are all set up with the computing environment, please read the [Project page](project.md) to complete the Computing Lab of this week.