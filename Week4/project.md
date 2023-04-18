---
title: Assignment 4 WPS to WRF
authors: "Andrea Orton, Gillian Ferguson, Lev Gorenstein, and Wen-wen Tung"
---

## 1. Introduction

In this assignment, you will *run* a complete WPS to WRF simulation of the Jan 2016 Blizzard with a model already setup for you, then document some preliminary results using a [Quarto](https://quarto.org/) document like in Week 1. The goal is to visualize the WRF pressure and wind field of the blizzard. Then, we will render this Quarto file to generate a polished report. A Quarto (`qmd`) file  is available in `~/M1_SP2023/Week4`, named [`Assignment4_WPS_WRF.qmd`](Assignment4_WPS_WRF.qmd). 


Please follow Prof. Orton's video in the Brightspace (Week4: Computing Lab/Prof. Orton Assignment 4 Demo) to run the WRF simulation, then complete the exercise and upload your report in Word document to the Brightspace. 

---


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

 -  Copy the *container* of the WRF model setup for the Jan 2016 Blizzard into your `/scratch/x-[yourusername]` space by typing and entering: 
```
cp /anvil/projects/nwp/depot/DATA/Week4/Week4.tar.gz /anvil/scratch/x-[yourusername]
```

 -  The *container* is saved in a *tarball*. To unpack it, type and enter:
```
tar -zxvf Week4.tar.gz
```
Wait for several minutes for all directories and files to unpack from the tarball.

 -  After the model *container* is reconstructed in your `/scratch/x-[yourusername]`, change directories again, by typing and entering: 
```
cd Week4/home/ec2-user/
```

 -  Now you are in the directory `/scratch/x-[yourusername]/Week4/home/ec2-user/`. List its contents using the linux command `ls`:
```
ls
```
You should see 12 items:
``` 
container-dtc-nwp  data  gsi_4.1.0.sif  nwp-container-met_4.1.0.sif  python_4.1.0.sif  Runwrf.sh  snow  upp_4.1.0.sif  wps_wrf_4.1.0_for_singularity.sif WPS.sh Real.sh  GSI.sh
```

 -  Start the preprocessing (WPS) by typing and entering the name of the running script for ungrib & metgrid: 
```
./WPS.sh
```
 - Start the boundary conditions by typing and entering the name of the running script for real.exe:
```
./Real.exe
```
 -  Once that is complete, Start the GSI executable:
```
./GSI.sh
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
cd snow/pythonprd/
```
For your information, the *absolute path* of the directory is now `/anvil/scratch/x-[yourusername]/Week4/home/ec2-user/snow/pythonprd/`.


 -  Acquire a copy of the file `500_d01_f12.png`, `500_d01_f24.png`, `250wind_d01_f12.png`, `250wind_d01_f24.png` and save it to your Week 4 report working directory by the command: 
```
cp  ~/NWP1/Week4/
```


### Creating the Quarto report


 -  Return to [Anvil OnDemand](https://ondemand.anvil.rcac.purdue.edu/) to start another instance of Desktop by selecting **Interactive Apps** then **Desktop**.
     -  Select **ees230003** under Allocation
     -  Select **shared** under Queue 
     -  Use **4** under Wall Time in Hours
     -  Use **32** under Cores
     -  Launch and wait in the Queue
     -  Before Launching the Desktop, choose higher quality image than default if you are on fast internet, such as on campus with strong WiFi signals.
 -  Right-click on the Desktop, choose "Applications" then "Web Browser" to start a Firefox browser. There, you could read, copy, and paste from the course Brightspace and GitHub at ease.
 -  Right-click on the Desktop then choose "Open Terminal Here" to start a terminal.
 -  Copy the Week 4 Assignment Quarto file into your Week4 working directory by typing the following command in the terminal:
```
cp ~/M1_SP2023/Week4/Assignment4_WPS_WRF.qmd ~/NWP1/Week4/
```

 -  **Important step** To launch Rstudio with pre-installed Python packages, type in the terminal:
     - `launchstudio`. **You shouldn't need to install any additional Python packages. Say No when asked if you want to install `miniconda`.**
     -  After the RStudio starts, use the File manager to navigate to `NWP1/Week4` in your Home directory.
     -  Double click on the file `Assignment4_WPS_WRF.qmd` to open the Quarto document.
     -  Write your name as a coauthor
 -  Place all images acquired after the WRF run separately into your Quarto file and label them: Your WRF Output Figure
 -  Answer the questions.
 -  Once done, convert the Quarto document into a Word document using the command in the *Terminal*.

```
quarto render Assignment4_WPS_WRF.qmd --to docx 
```


 - Download the rendered Word file to your own computer by selecting **Files** then **NWP1**, then **Week4**. Check the box in front of `Assignment4_WPS_WRF.docx`, then click **Download** from the top menu.

 - Submit the downloaded file to the Brightspace Assignment4 upload portal. Congratulations!
