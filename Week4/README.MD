---
title: WPS to WRF

authors: "Andrea Orton, Gillian Ferguson, Adithya Ganesh, Lev Gorenstein, and Wen-wen Tung"
---


In this class, we use the GitHub to store weekly computing project files for users to download to Anvil to work with. One advantage of using the GitHub is that the course instructors can update the course files efficiently while keeping track of the changes. Students will keep a copy of the course GitHub repository in their Anvil account, and will be asked to update this copy weekly throughout the course.

## 1. Important: Please check out the Week 4 update of course GitHub

We went through the procedure of the first cloning of the GitHub repository to Anvil in [Week 1](../Week1/index.md). Here, we demonstrate how to checkout the weekly updated repository.

  - [![Github Cloning Part d Checking-out Updated Repository](http://img.youtube.com/vi/1Zxx9PF9LJ0/0.jpg)](https://mediaspace.itap.purdue.edu/media/Github_Cloning_d_Checking_Out_Updated_Repository/1_t2nr0jv7 "Github_Cloning_d_Checking_Out_Updated_Repository")
 - In Anvil OnDemand: https://ondemand.anvil.rcac.purdue.edu/, select **Clusters** then **\>\_Anvil Shell Access**
 - Make sure you are in your cloned GitHub directory:
```
cd ~/M1_SP2023/
```

 - Checkout the local *main* branch 
```
git checkout main
```

 - *The branching step is optional*. The purpose is to preserve your changes in your local files, if any, up to this point. You could customize the branch name.
```
git branch mybranch-date
```
However, we recommend the simple practice of copying codes you need from `~/M1_SP2023` to `~/NWP1` (set up in [Week1](../Week1/index.md)). Then, make changes in `~/NWP1` for your exercise and reports. That way, you completely avoid the need for branching.

 - The following steps will reset your files in `~/M1_SP2023` to those at the *origin* at https://github.com/PurdueNWP/M1_SP2023

```
git fetch --all
```
You will be asked to provide the passphrase you created in step 1.a.

```
git reset --hard origin/main
```

---

## 2. Next Step

Now that you are all set up with the computing environment, please read the [Project page](project.md) to complete the Computing Lab of this week.