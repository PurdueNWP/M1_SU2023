---
title: Assignment 1 Getting Started with Anvil and GitHub

author: "Wen-wen Tung"
---

## 1. Introduction

In this assignment, we will work on a [Quarto](https://quarto.org/) document in RStudio to execute Python commands. Sounds intriguing? RStudio is a very good multilingual IDE (Integrated development environment). And, Quarto is an open-source document processing platform that allows users to create documents in various formats, including PDF, HTML, and Microsoft Word, using four languages: Python, R, Julia, and Observable. 

The goal is to visualize the surface temperature of the Jan 2016 Blizzard. Then, we will render this Quarto file to generate a polished report. A Quarto (`qmd`) file  is available in `~/M1_SP2023/Week1`, named [`Assignment1_Getting_Started.qmd`](Assignment1_Getting_Started.qmd). 

Please follow this video to complete the exercise and upload your report in Word document to the Brightspace. (**Important: Say No when asked if you want to install `miniconda`.**)

 - [![Video: Prof. Tung Video Demo of Assignment 1](http://img.youtube.com/vi/qKRFsKhWZVA/0.jpg)](https://mediaspace.itap.purdue.edu/media/Computing_Lab_Assignment1/1_arudt6d0 "Assignment 1 Demo")

---

## 2. Summary of activities

 -  Make sure you are logged into [Anvil OnDemand](https://ondemand.anvil.rcac.purdue.edu/):
 -  Then, start an instance of Desktop at [Anvil OnDemand](https://ondemand.anvil.rcac.purdue.edu/) by selecting **Interactive Apps** then **Desktop**.
     -  Select **ees230003** under Allocation
     -  Select **shared** under Queue 
     -  Use **4** under Wall Time in Hours
     -  Use **32** under Cores
     -  Launch and wait in the Queue
     -  Before Launching the Desktop, choose higher quality image than default if you are on fast internet, such as on campus with strong WIFI signals.
 -  Right Click on the Desktop, choose "Applications" then "Web Browser" to start a Firefox browser. There, you could read, copy, and paste from the course Brightspace and Github at ease.
 -  Right Click on the Desktop then choose "Open Terminal Here" to start a terminal.
 -  Copy the Week 1 Assignment Quarto file into your working directory:
```
cp ~/M1_SP2023/Week1/Assignment1_Getting_Started.qmd ~/NWP1/Week1/
```
 -  **Important step** To launch Rstudio with pre-installed Python packages, type in the terminal:
     - `launchstudio` This is a [small script](launchstudio.sh) installed for you by running the [first_launch.sh](first_launch.sh) earlier. **You shouldn't need to install any additional Python packages. Say No when asked if you want to install `miniconda`.**
     -  After the RStudio starts, use the File manager to navigate to `NWP1/Week1` in your Home directory.
     -  Double click on the file `Assignment1_Getting_Started.qmd` to open the Quarto document.
     -  Write your name as a coauthor
     -  Run the code chunk by chunk, pay attention to the output in the *Console*. **Again, say No when asked if you want to install `miniconda`.**
     -  Answer the last question.
     -  Save your changes frequently.
     -  You could preview the document by clicking the *Render* button. A HTML (web) file will be created.
 -  Once done, convert the Quarto document into a Word document using the command in the *Terminal*.
 ```
 quarto render Assignment1_Getting_Started.qmd --to docx
 ```
 - Download the rendered Word file to your own computer by selecting **Files** then **NWP1**, then **Week1**. Check the box in front of `Assignment1_Getting_Started.docx`, then click **Download** from the top menu.
 - Submit the downloaded file to the Brightspace Assignment1 upload portal. Congratulations!