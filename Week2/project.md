---
title: Assignment 2 Introduction to WRF-ARW

authors: "Andrea Orton, Gillian Ferguson, Lev Gorenstein, and Wen-wen Tung"
---


## 1. Introduction


In this assignment, you will *run* a WRF simulation of the Jan 2016 Blizzard with a model already setup for you, then document some preliminary results using a [Quarto](https://quarto.org/) document like in Week 1. The goal is to visualize and compare the surface temperature of the blizzard among the plots from the North American Regional Reanalysis, *your* WRF simulation, and the provided CAM WRF output. Then, we will render this Quarto file to generate a polished report. A Quarto (`qmd`) file  is available in `~/M1_SP2023/Week2`, named [`Assignment2_Intro_WRF.qmd`](Assignment2_Intro_WRF.qmd). 

Please follow this video to run the WRF simulation, then complete the exercise and upload your report in Word document to the Brightspace. 

 - [![Video: Prof. Orton Video Demo of Assignment 2](../images/Assignment2.jpg)](https://mediaspace.itap.purdue.edu/media/ProfOrtonSimulationDemo/1_3ubecsur "Assignment 2 Demo")

---

## 2. Summary of activities

### Running the WRF model and gather visualization outputs

 -  Make sure you are logged into [Anvil OnDemand](https://ondemand.anvil.rcac.purdue.edu/):
 -  Then, start an instance of Desktop at [Anvil OnDemand](https://ondemand.anvil.rcac.purdue.edu/) by selecting **Interactive Apps** then **Desktop**.
     -  Select **ees230003** under Allocation
     -  Select **wholenode** under Queue 
     -  Use **1** under Wall Time in Hours
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
cp /anvil/projects/nwp/depot/DATA/Week2/Week2.tar.gz /anvil/scratch/x-[yourusername]
```

 -  The *container* is saved in a *tarball*. To unpack it, type and enter:
```
tar -zxvf Week2.tar.gz
```
Wait for several minutes for all directories and files to unpack from the tarball.

 -  After the model *container* is reconstructed in your `/scratch/x-[yourusername]`, change directories again, by typing and entering: 
```
 cd Week2/home/ec2-user/
```

 -  Now you are in the directory `/scratch/x-[yourusername]/Week2/home/ec2-user/`. List its contents using the linux command `ls`:
```
ls
```
You should see 9 items listed alphabetically:
```
container-dtc-nwp  data  gsi_4.1.0.sif  nwp-container-met_4.1.0.sif  python_4.1.0.sif  Runwrf.sh  snow  upp_4.1.0.sif  wps_wrf_4.1.0_for_singularity.sif
```

 -  Start the WRF simulation by typing and entering the name of the running script: 
```
./Runwrf.sh
```

 -  DO NOT CLOSE OUT YOUR WINDOW UNTIL YOU SEE THE MODEL HAS FINISHED RUNNING. This should take about 25 minutes.  The Python code will also post-process your WRF output and create PNG images for us to use. At the end of the run, you will see a message similar to the following two lines:
```
### Finished the run: Sat Apr  1 01:01:01 EDT 2023
### Elapsed:          1651 sec.
```

 -  Once your model has finished running, change the directory into: 
```
cd snow/pythonprd/
```
For your information, the *absolute path* of the directory is now `/anvil/scratch/x-[yourusername]/Week2/home/ec2-user/snow/pythonprd/`.

 -  Acquire a copy of the file `2mT_d01_f12.png` and save it to your Week2 report working directory by the command: 
```
cp 2mT_d01_f12.png ~/NWP1/Week2/
```

 -  Similarly, acquire a copy of the file `2mdew_d01_f12.png` by the command: 
```
cp 2mdew_d01_f12.png ~/NWP1/Week2/
```
 
 -  A copy of the CAM Physics WRF output `CAM2mT_f12.png` figure is saved as `/anvil/projects/nwp/depot/DATA/Week2/CAM2mT_f12.png`, copy it into your working directory `~/NWP1/Week2/` (how?)
 
 -  A copy of the NARR surface temperature figure produced in the assignment in Week 1 is saved as `/anvil/projects/nwp/depot/DATA/Week2/NARR_Sfc_Temp_12UTC012316.png`. Copy it into your working directory `~/NWP1/Week2/` (how?)
 

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
 -  Copy the Week 2 Assignment Quarto file into your Week2 working directory by typing the following command in the terminal:
```
cp ~/M1_SP2023/Week2/Assignment2_Intro_WRF.qmd ~/NWP1/Week2/
```

 -  **Important step** To launch Rstudio with pre-installed Python packages, type in the terminal:
     - `launchstudio`. **You shouldn't need to install any additional Python packages. Say No when asked if you want to install `miniconda`.**
     -  After the RStudio starts, use the File manager to navigate to `NWP1/Week2` in your Home directory.
     -  Double click on the file `Assignment2_Intro_WRF-ARW.qmd` to open the Quarto document.
     -  Write your name as a coauthor
 -  Place all images acquired after the WRF run separately into your Quarto file and label them: Your WRF Output Figures; NARR Observation Figure; CAM Physics Figure
 -  Answer the questions.
 -  Once done, convert the Quarto document into a Word document using the command in the *Terminal*.
```
quarto render Assignment2_Intro_WRF-ARW.qmd --to docx 
```

 - Download the rendered Word file to your own computer by selecting **Files** then **NWP1**, then **Week2**. Check the box in front of `Assignment2_Intro_WRF.docx`, then click **Download** from the top menu.
 - Submit the downloaded file to the Brightspace Assignment2 upload portal. Congratulations!