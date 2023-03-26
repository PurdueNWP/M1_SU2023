---
title: Assignment 1 Getting Started with Anvil and GitHub

author: "Wen-wen Tung"
---

## 1. Introduction

In this assignment, we will use Jupyter Notebook to execute python commands to visualize the surface temperature of the Jan 2016 Blizzard. Then, we will use Quarto to generate a polished report. A Jupyter Notebook is available in `~/M1_SP2023/Week1`, named [`Assignment1_Getting_Started.ipynb`](Assignment1_Getting_Started.ipynb). 
 
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
 -  Open the Jupyter Notebook `~/NWP1/Week1/Assignment1_Getting_Started.ipynb`
     -  Write your name as a coauthor
     -  Click on the "Python 3.9 (Default)" tab in the upper-right corner to activate a drop-down menu to select kernel. Select *Python (My MetPy Kernel). This kernel will give you access to the Python packages pre-installed by the instructors for you. You do not need to install additional packages.
     -  Run the code chunk by chunk.
     -  Answer the last question.
     -  Save your changes to the Jupyter Notebook.
 -  Once done, convert the Jupyter Notebook into a pdf document using the command in the **\>\_Anvil Shell Access**
 ```
 quarto render Assignment1_Getting_Started.ipynb --execute --to pdf
 ```
 - Download the rendered pdf file to your own computer by selecting **Files** then **NWP1**, then **Week1**. Check the box in front of `Assignment1_Getting_Started.pdf`, then click **Download** from the top menu.
 - Submit the downloaded file to the Brightspace Assignment1 upload portal.