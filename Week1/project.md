---
title: Assignment 1 Getting Started with Anvil and Github

author: "Wen-wen Tung"
---

## 1. Introduction

In this assignment, we will use Jupyter Notebook to execute python commands to visualize the surface temperature of the Jan 2016 Blizzard. Then, we will use Quarto to generate a polished report. A Jupyter Notebook is available in `~/M1_SP2023/Week1`, named `Assignment1_Getting_Started.ipynb`. Please follow this video to complete the exercise and upload your report to the Brightspace.

 - [![Prof. Tung Video Demo of Assignment 1](http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg)](http://www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE "Video Title")
 
---

## 2. Summary of activities

 -  Make sure you are logged into [Anvil OnDemand](https://ondemand.anvil.rcac.purdue.edu/):
 -  Select **Clusters** then **\>\_Anvil Shell Access**
 -  Type the following behind the command prompt:
 -  Copy the Notebook into your working directory:
```
cp ~/M1_SP2023/Week1/Assignment1_Getting_Started.ipynb ~/NWP1/Week1/
```
 -  Then, start an instance of Jupyter Notebook at [Anvil OnDemand](https://ondemand.anvil.rcac.purdue.edu/) by selecting **Interactive Apps** then **Jupyter Notebook**.
     -  Select **ees230003** under Allocation
     -  Select **shared** under Queue 
     -  Use **4** under Wall Time in Hours
     -  Use **4** under Cores. 
     -  Click to select **Use Jupyter Lab instead of Jupyter Notebook**
     -  Launch the Jupyter Lab.
 -  Open the Jupyter Notebook, write your name as an author, then run the code chunk by chunk.
 -  Answer the last question.
 -  Once done, convert the Jupyter Notebook into a pdf document using the command in the **\>\_Anvil Shell Access**
 ```
 quarto render Assignment1_Getting_Started.ipynb --execute --to pdf
 ```
 - Download the rendered pdf file to your own computer by selecting **Files** then **NWP1**, then **Week1**. Check the box in front of `Assignment1_Getting_Started.pdf`, then click **Download** from the top menu.
 - Submit the downloaded file to the Brightspace Assignment1 upload portal.