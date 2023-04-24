---
title: Assignment 5 Capstone Project
authors: "Andrea Orton, Gillian Ferguson, Lev Gorenstein, and Wen-wen Tung"
---

## 1. Introduction

In this assignment, you will *run* a complete WPS to WRF simulation of either Hurricane Sandy or the 2012 Derecho. The goal is for you to run the model independently and choose appropriate figures for your capstone write-up (see Brightspace for 591CaseStudy.docx for Project syllabus).  Then you will write up a formal report with your simulation.





## 2. Summary of activities

### Running the WPS & WRF model and gather visualization outputs


 -  Make sure you are logged into [Anvil OnDemand](https://ondemand.anvil.rcac.purdue.edu/):
 -  Then, start an instance of Desktop at [Anvil OnDemand](https://ondemand.anvil.rcac.purdue.edu/) by selecting **Interactive Apps** then **Desktop**.
     -  Select **ees230003** under Allocation

     -  Select **wholenode** under Queue 

     -  Use **4** under Wall Time in Hours

     -  Use **128** under Cores

     -  Launch and wait in the Queue

     -  Before Launching the Desktop, choose higher quality image than default if you are on fast internet, such as on campus with strong WiFi signals.
 -  Right Click on the Desktop then choose "Open Terminal Here" to start a terminal.
 -  In the command line, change to your `/scratch` directory by typing and entering in the terminal: 
```
cd /anvil/scratch/x-[yourusername]/
```
Swap `[yourusername]` with your Anvil account name. The `/scratch` directory has ample space, up to 100 terabytes (TB) per person, to hold large amount of data. Your personal home directory could only hold 25 Gigabytes (GB). Therefore, it is imperative to use `/scratch` for computing workflows that generate a large amount of data, such as a WRF model simulation.

 -  Confirm that you are indeed in your `/scratch/x-[yourusername]` space by typing and entering:
```
pwd
```
You should see `/anvil/scratch/x-[yourusername]` in the returned output. If not, check and repeat the previous step.

 -  Copy the *container* for ONE of the WRF model setup for the case you want to run into your `/scratch/x-[yourusername]` space by typing and entering for Hurricane Sandy and Derecho respectively: 
```
cp /anvil/projects/nwp/depot/DATA/Week5/Sandy.tar.gz /anvil/scratch/x-[yourusername]
```
or
```
cp /anvil/projects/nwp/depot/DATA/Week5/Derecho.tar.gz /anvil/scratch/x-[yourusername]

 -  The *container* is saved in a *tarball*. To unpack it, type and enter:
```
tar -zxvf Sandy.tar.gz
```
or
```
tar -zxvf Derecho.tar.gz
```
Wait for several minutes for all directories and files to unpack from the tarball.

 -  Showing the paths if you chose Hurricane Sandy case, after the model *container* is reconstructed in your `/scratch/x-[yourusername]`, change directories again, by typing and entering: 
```
cd Sandy/home/ec2-user/
```

 -  Now you are in the directory `/scratch/x-[yourusername]/Sandy/home/ec2-user/`. List its contents using the linux command `ls`:
```
ls
```
You should see 11 items:
``` 
container-dtc-nwp  data  gsi_4.1.0.sif  nwp-container-met_4.1.0.sif  python_4.1.0.sif  Runwrf.sh  sandy  upp_4.1.0.sif  wps_wrf_4.1.0_for_singularity.sif WPS.sh Real.sh  
```

 -  Start the preprocessing (WPS) by typing and entering the name of the running script for ungrib & metgrid: 
```
./WPS.sh
```
 - Start the boundary conditions by typing and entering the name of the running script for real.exe:
```
./Real.exe
```

 -  Finally start the 24-hr WRF simulation:
```
./Runwrf.sh
```

 -  DO NOT CLOSE OUT YOUR WINDOW UNTIL YOU SEE THE MODEL HAS FINISHED RUNNING. This should take about 60 minutes.  The Python code will also post-process your WRF output and create PNG images for us to use. At the end of the run, you will see a message similar to the following two lines:
```
### Finished the run: Sat Apr  1 01:01:01 EDT 2023
### Elapsed:          1651 sec.
```

 -  Once your model has finished running, change the directory into: 
```
cd sandy/pythonprd/
```
For your information, the *absolute path* of the directory is now `/anvil/scratch/x-[yourusername]/Sandy/home/ec2-user/sandy/pythonprd/`.


cp  ~/NWP1/Week5/
```

Couple of notes:
Derecho case will be called 'derecho' once you are in the Derecho/home/ec2-user/ directory.  Derecho case has the GSI executable but Hurricane Sandy case DOES NOT.  If you choose the Derecho case you need to run the GSI executable (./GSI.sh) before ./Runwrf.sh.  At this point in the module, you should know the steps of WRF so part of completing this project is you running the case to its start to end.

Writing your Capstone Project (not in Quarto, you will do this in Word, google Doc, etc. of your preference).
 - Download the Python Figures from your WRF simulation to your own computer by selecting **Files** then **NWP1**, then **Week5**. Check the box in front of images you copied into this directory, then click **Download** from the top menu.

 - Place the images in your lab capstone write-up that you will write from your own personal Word document, Google doc, etc.  There is no quarto document for this project.  Please submit your Capstone Project write up as a PDF or .docx.
