

# (PART\*) Scale with Workflows {-}   

# Overview {#scale-with-workflows-overview}

One of the great features of AnVIL is that it "brings the analysis to the data". Rather than downloading and storing your own copy of an AnVIL dataset, you can simply create links to the existing data, and run analyses using those links.

You can find a slide overview of this demo [here](https://docs.google.com/presentation/d/19A1h1t_hy14sb1W80LYmACRTT6Hl-azKuKxEBWxjtRc). You can also check out the video version [here](https://drive.google.com/file/d/1vq9l8jvTd8mIEUWdpzmSOQI7kn9vo_4g/view?usp=sharing).

<!-- <br> -->

<!-- <iframe src="https://drive.google.com/uc?id=1vq9l8jvTd8mIEUWdpzmSOQI7kn9vo_4g" width="640" height="360" allow="autoplay"></iframe> -->

## Skills Level

::: {.notice}
_Genetics_

**Novice**: no genetics knowledge needed

_Programming skills_

**Novice**: no programming experience needed
:::

## Learning Objectives

1. Identify interesting datasets in the AnVIL Dataset Catalog
1. Navigate an AnVIL Workspace
1. Combine data from multiple existing datasets into your own Workspace
1. Find Workflows in Dockstore
1. Run a Workflow on AnVIL with your combined data


# Preparation {#scale-with-workflows-preparation}

If you plan to follow along with these exercises, there are a couple of things you will need to take care of first:

<br>

:::{.notice}
### Quickstart {-}

For this Demo, you will need to:

1. Clone your own copy of the [`demos-combine-data-workspaces`](https://anvil.terra.bio/#workspaces/anvil-outreach/demos-combine-data-workspaces) Workspace.
1. Launch a Jupyter Cloud Environment with the default settings (in your cloned Workspace).
1. Review a few key AnVIL concepts to set context for the Demo.  (If you are participating in a live workshop, these will be covered by the instructor.  Otherwise, watch the video below.)

If you feel comfortable, you can take care of these things yourself and then proceed to the Exercises.  Otherwise, the instructions below will walk you through the process.
:::

## Review Key Concepts

This 5-min video provides a high level summary of the exercises to follow.  Several important concepts are introduced to provide context for the exercises including 1) the AnVIL data flow that minimizes costs and redundancy and 2) increasing number of production quality workflows in Dockstore ([slides](https://docs.google.com/presentation/d/1szpGrvCQodF1R2AaeqsvmNlJWTgzAsO8QurYfQagCf0)).

## Create AnVIL account

You will need an AnVIL account in order to view Workspaces and run analyses.

- If you do not already have an account, follow [these instructions](https://jhudatascience.org/AnVIL_Book_Getting_Started/overview-analysts.html) to set one up.  (You do not need to link any external accounts for these exercises.)
- Make sure that your Instructor (if participating in a workshop) or PI / Lab Manager has your username, so that they can add you to an appropriate *Billing Project*.  You can't clone or create Workspaces on AnVIL without a Billing Project.

## Clone Workspace

When you "clone" a copy of an AnVIL Workspace, it can take a few minutes for everything to propagate to your new Workspace. If you are participating in a course or workshop, your instructor may have you start by cloning the Workspace, so that it is ready by the time you need it. (If you are working at your own pace, feel free to come back to this step later, when you're ready to start using the Workspace.)

Follow the instructions below to clone your own copy of the Workspace for this Demo.

:::: {.borrowed_chunk}

```
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
```




:::{.warning}
This **will not work** until your instructor has given you permission to spend money to "rent" the computers that will power your analyses (by adding you to a "Billing Project").
:::

On AnVIL, you access files and computers through **Workspaces**.  Each Workspace functions almost like a mini code laboratory - it is a place where data can be examined, stored, and analyzed. The first thing we want to do is to copy or “clone” a Workspace to create a space for you to experiment.  This will give you access to

- the files you will need (data, code)
- the computing environment you will use

:::{.notice}
**Tip**
At this point, it might make things easier to open up a new window in your browser and split your screen. That way, you can follow along with this guide on one side and execute the steps on the other.
:::

To clone an AnVIL Workspace:

1. Open Terra - use a web browser to go to [`anvil.terra.bio`](https://anvil.terra.bio/)

1. In the drop-down menu on the left, navigate to "Workspaces". Click the triple bar in the top left corner to access the menu. Click "Workspaces".

    ![](02-scale-with-workflows_files/figure-docx//1a5Da6qX9BG7Q_6XAz7MvlDyWTvssm2hWwuo1WFJXb_0_g117989bd49c_0_150.png){width=100%}

1. You are automatically directed to the "MY WORKSPACES" tab.  Here you can see any Workspaces that have been shared with you, along with your permission level.  Depending on how your instructor has set things up, you may or may not see any Workspaces in this tab.

    ![](02-scale-with-workflows_files/figure-docx//1a5Da6qX9BG7Q_6XAz7MvlDyWTvssm2hWwuo1WFJXb_0_g17144dbacd0_0_303.png){width=100%}
    
1. Locate the Workspace **demos-combine-data-workspaces**.  (The images below show the SARS-CoV-2-Genome Workspace as an example, but you should look for the Workspace  **demos-combine-data-workspaces**.)
    a. If it has been shared with you ahead of time, it will appear in "MY WORKSPACES".  

    ![](02-scale-with-workflows_files/figure-docx//1a5Da6qX9BG7Q_6XAz7MvlDyWTvssm2hWwuo1WFJXb_0_g17144dbacd0_0_337.png){width=100%}
    b. Otherwise, select the "PUBLIC" tab.  In the top search bar, type the Workspace name **demos-combine-data-workspaces**.

    ![](02-scale-with-workflows_files/figure-docx//1a5Da6qX9BG7Q_6XAz7MvlDyWTvssm2hWwuo1WFJXb_0_g17144dbacd0_0_327.png){width=100%}
    c. You can also go directly to the Workspace by clicking this link: https://anvil.terra.bio/#workspaces/anvil-outreach/demos-combine-data-workspaces.
    
1. Clone the workspace by clicking the teardrop button (![teardrop button](https://raw.githubusercontent.com/jhudsl/AnVIL_Template/main/child/child_assets/teardrop_button.png){width=25px}). Select "Clone".  Or, if you have opened the Workspace, you can find the teardrop button on the top right of the Workspace.

    ![](02-scale-with-workflows_files/figure-docx//1a5Da6qX9BG7Q_6XAz7MvlDyWTvssm2hWwuo1WFJXb_0_g17144dbacd0_0_344.png){width=100%}
    ![](02-scale-with-workflows_files/figure-docx//1a5Da6qX9BG7Q_6XAz7MvlDyWTvssm2hWwuo1WFJXb_0_g117abafa453_0_577.png){width=100%}

1. You will see a popup box appear, asking you to configure your Workspace
    a. Give your Workspace clone a name by adding an underscore ("_") and your name. For example, \"demos-combine-data-workspaces_Firstname_Lastname\".
    a. Select the Billing Project provided by your instructor.
    a. Leave the bottom two boxes as-is.
    a. Click “CLONE WORKSPACE”.
    
    ![](02-scale-with-workflows_files/figure-docx//1a5Da6qX9BG7Q_6XAz7MvlDyWTvssm2hWwuo1WFJXb_0_g17144dbacd0_0_352.png){width=100%}

1. The new Workspace should now show up under "MY WORKSPACES".  You now have your own copy of the Workspace to work in.
::::

Now your Workspace should be ready for you by the time you need it.

## Start Cloud Environment

:::{.warning}
**Pause here** if you are not going to be doing the Exercises right away.  Once you start up Jupyter, it will cost money to keep it running.  It costs a few cents an hour, so it's quite cheap as long as you use it responsibly.  But it can add up if you leave it running for days or weeks when you don't need it.
:::

If you are ready to proceed through the Exercises, go ahead and follow the instructions below to start Jupyter.  It will take a few minutes to start up.  You can work through the first couple of Exercises while you wait.

:::: {.borrowed_chunk}

```
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
## Warning: Chunk option fig.alt is not supported for docx output
```






:::{.warning}
AnVIL is very versatile and can scale up to use very powerful cloud computers. It's very important that you select the cloud computing environment described here to avoid runaway costs.
:::



1. Open Terra - use a web browser to go to [`anvil.terra.bio`](https://anvil.terra.bio/)

1. In the drop-down menu on the left, navigate to "Workspaces". Click the triple bar in the top left corner to access the menu. Click "Workspaces".

    ![](02-scale-with-workflows_files/figure-docx//1-IU5l40UxmpoBqFimSUmT1PNEUij2UnXMslOsiG5ncE_g117989bd49c_0_150.png){width=100%}

1. Click on the name of your Workspace. You should be routed to a link that looks like: `https://anvil.terra.bio/#workspaces/<billing-project>/<workspace-name>`.

1. Click on the cloud icon on the far right to access your Cloud Environment options.  If you don’t see this icon, you may need to scroll to the right.

    ![](02-scale-with-workflows_files/figure-docx//1-IU5l40UxmpoBqFimSUmT1PNEUij2UnXMslOsiG5ncE_g14ea2db115d_0_22.png){width=100%}

1. In the dialogue box, click the "Settings" button under Jupyter.

    ![](02-scale-with-workflows_files/figure-docx//1-IU5l40UxmpoBqFimSUmT1PNEUij2UnXMslOsiG5ncE_g14ea2db115d_0_18.png){width=100%}

1. You will see some configuration options for the Jupyter cloud environment, and a list of costs because it costs a small amount of money to use cloud computing.

    ![](02-scale-with-workflows_files/figure-docx//1-IU5l40UxmpoBqFimSUmT1PNEUij2UnXMslOsiG5ncE_g25442045568_0_0.png){width=100%}

    

    

    

    

    

    



1. Leave everything else as-is. To create your Jupyter Cloud Environment, scroll down and click the "CREATE" button.

    ![](02-scale-with-workflows_files/figure-docx//1-IU5l40UxmpoBqFimSUmT1PNEUij2UnXMslOsiG5ncE_g14ea2db115d_0_41.png){width=100%}

1. The dialogue box will close and you will be returned to your Workspace.  You can see the status of your cloud environment by hovering over the Jupyter icon.  It will take a few minutes for Terra to request computers and install software.

    ![](02-scale-with-workflows_files/figure-docx//1-IU5l40UxmpoBqFimSUmT1PNEUij2UnXMslOsiG5ncE_g25442045568_0_60.png){width=100%}

1. When your environment is ready, its status will change to "Running".  Click on the "ANALYSES" tab to create or open a Jupyter Notebook.

    ![](02-scale-with-workflows_files/figure-docx//1-IU5l40UxmpoBqFimSUmT1PNEUij2UnXMslOsiG5ncE_g25442045568_0_66.png){width=100%}

1. From the ANALYSES tab, you can click on the name of an existing Jupyter Notebook to view and launch it, or click the "START" button to create a new Notebook.

    ![](02-scale-with-workflows_files/figure-docx//1-IU5l40UxmpoBqFimSUmT1PNEUij2UnXMslOsiG5ncE_g25442045568_0_73.png){width=100%}

    
::::

Once you have clicked "CREATE" and your cloud environment status is "Creating", you can go ahead and start the Exercises.  Your cloud environment should be ready by the time you need it.

# Exercises {#scale-with-workflows-exercises}

The following exercises will walk you through the process of finding datasets that are stored in AnVIL Workspaces and bringing that data into your own Workspace so that you can analyze it.

:::{.notice}
To follow along with these exercises, you will need to complete the steps described in the [Preparation](#scale-with-workflows-preparation) guide for this demo.
:::

## Explore Dataset Catalog

First we will take a look at the [AnVIL Dataset Catalog](https://anvilproject.org/data/).  Here you can browse the datasets available on AnVIL.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g24306c8bf8a_0_0.png){width=100%}


:::{.reflection}

### Exercise {- .unlisted}

Use a web browser to navigate to [`anvilproject.org/data/`](https://anvilproject.org/data/) and answer the following questions.

**Q1.**  Which Consortium has the most participants?
    
- You can click on a column name to sort by that column.
- Click again to switch between ascending and descending.
    
**Q2.**  Where would you find data from the Genotype-Tissue Expression (GTEx) Project?
    
- You can use the filters on the left to find specific datasets.  Click on either the Consortium or the Study filter to search for GTEx data.
    
**Q3.**  How many Workspaces have consent code NRES (No REStrictions on data use)?
    
- You can use the filters on the left to browse and narrow down on datasets that fit your needs.  Click on the Consent Code filter to select for datasets that you can access.  
- Learn more about consent codes [here](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4721915/).

:::
    
Now you know how to find AnVIL datasets!  To access the data in these datasets, you will need to access the **Terra Workspace** where the data is stored.  You can find links to the Terra Workspaces in the Workspaces tab.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g24f1d151022_0_4.png){width=100%}

Note that, if a Workspace contains protected data, you will need to obtain the appropriate permissions before you can open the Workspace.  For these GTEx datasets, `AnVIL_GTEx_public_data` (with consent code NRES) is available to anyone on AnVIL, but other GTEx Workspaces require permission to access.


## Explore HPRC Workspace

Next we will explore one of the Workspaces from the AnVIL Dataset Catalog, so you can see where the data lives.  For this exercise, we will look at data from the [Human Pangenome Reference Consortium](https://humanpangenome.org/).

You can find the Workspace that contains the data by searching for the "HPRC" Consortium in the AnVIL Dataset Catalog and clicking on the Terra Workspace link, or you can navigate there directly through this link: https://anvil.terra.bio/#workspaces/anvil-datastorage/AnVIL_HPRC.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g251288a74c6_0_85.png){width=100%}

### What is a Workspace?

Workspaces are the building blocks of projects in Terra. Inside a Workspace, you can run analyses, launch interactive tools like RStudio and Galaxy, store data, and share results.  The `AnVIL_HPRC` Workspace is being used to store and share data from the Human Pangenome Reference Consortium.

Note that, since you are only a "Reader", you will be unable to do any computations directly in this Workspace.  To run analyses, you will need a Workspace of your own.

Workspaces can serve different purposes.  For example, it's often useful to use one Workspace just for organizing primary data, and then to carry out analyses in a separate Workspace.  Storing data in a standalone Workspace helps keep it clean and organized, since it won't get cluttered up with results and intermediate files from your analyses.  It also ensures you can easily see and manage who has access to the data, and allows multiple AnVIL users to use the data without getting in each others' way.


### Dashboard

When you first open a Workspace, you will be directed to the **Dashboard** tab.  The Dashboard is like a README for the Workspace - it should contain information to help you understand the purpose and organization of the Workspace.  On the right, you can see some basic information about the Workspace such as the usernames of the Owners as well as your permission level for the Workspace.  The left side typically contains a description of the Workspace's contents and purpose.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g251288a74c6_0_94.png){width=100%}

:::{.reflection}
### Exercise {- .unlisted}

**Q1.** What three strategies were used to build pangenomes?

- Look through the Workspace's description to see what information has been provided about the data in this Workspace.

:::

### Data

The **Data** tab contains all the files associated with the Workspace - data, metadata, workflow outputs, etc.  Terra provides **Data Tables** to help organize data and results.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g24f280a88cb_0_25.png){width=100%}

:::{.reflection}
### Exercise {- .unlisted}

Take a minute to look through the Data Tables for the `AnVIL_HPRC` Workspace.

**Q2.** What demographic information is available in the Data Table named `participant`?

**Q3.** What types of files are linked to in the Data Table named `assembly_sample`?

- If you're not sure what these files are from looking at the column and file names, check the Workspace Dashboard for more information about the assemblies.

:::

A key feature of Terra is that **Data Tables can link to files in other Workspaces** or even files that live outside of Terra.  This means that you don't need to maintain your own copy of AnVIL datasets; you can simply link to the data from a Data Table within your own Workspace to use it in your workflows.


## Combine Data Workspace

Next we will go over how to set up a Data Table so that you can use data from another Workspace in your own analysis.

:::{.notice}
For this exercise, you will need your own copy of the [`demos-combine-data-workspaces`](https://anvil.terra.bio/#workspaces/anvil-outreach/demos-combine-data-workspaces) Workspace.  If you have not already done so, follow the instructions in the [Preparation](#scale-with-workflows-preparation) section to clone a copy of the Workspace now.
:::


### Open your Workspace

To get started, navigate to your cloned copy of `demos-combine-data-workspaces`.  

You can find your Workspace in Terra by clicking on "Workspaces" in the dropdown menu, or you can go there directly at [`anvil.terra.bio/#workspaces`](https://anvil.terra.bio/#workspaces).  Once there, you should see your Workspace under the "MY WORKSPACES" tab.  It may also show up in your recently viewed Workspaces.  Click on the Workspace name to open it.  **Make sure you are in *your copy* of the Workspace.**  If you are in the original Workspace, you will not have permission to start up Jupyter and run commands.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g24f280a88cb_0_44.png){width=100%}

### Open Jupyter Notebook

There are multiple ways to manage Data Tables on AnVIL; for this exercise we will use the [`Anvil`](https://bioconductor.org/packages/release/bioc/html/AnVIL.html) R package, which we will run using a Jupyter cloud environment.  The `AnVIL` package provides a wide range of functions for programmatically interacting with AnVIL.

To help you get started, we have provided a copy of a Jupyter Notebook that uses the `AnVIL` package to create Data Tables linking out to data in another Workspace.  For this exercise, you will make a couple of adjustments to the Notebook, so that it links properly to *your* Workspace (instead of the original Workspace).

Within your Workspace, the ANALYSIS tab holds your Notebooks (Jupyter and R Markdown).

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g251288a74c6_0_0.png){width=100%}

By clicking on a Notebook, you can preview a static copy of the Notebook.  Clicking the "OPEN" button launches the Notebook in a cloud environment so that you can edit and run code.  (The "PLAYGROUND" option also lets you edit and run code, but your changes will not be saved.)

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g251288a74c6_0_13.png){width=100%}

:::{.reflection}
### Exercise {- .unlisted}

In your Workspace, navigate to the "ANALYSIS" tab.  

Click on `combine-data-workspaces.ipynb` to view the Notebook for this exercise, and click the "Open" button so you can edit and run it.

- The Notebook will launch quickly if you already have a Jupyter Cloud Environment set up.
- If Jupyter is not already set up, the configuration menu will appear.  The default settings are fine for this exercise, so scroll to the bottom and click "Create".  It will take a few minutes for Jupyter to start up.
:::

This Notebook has four code cells that you will run, after making some edits.

### Load Packages

The first code cell loads R packages that are needed for this exercise.  You do not need to make any adjustments here.

:::{.reflection}
### Exercise {- .unlisted}

**1.** Click on the first code cell, then click the Run button to load the packages.

:::


### Retrieve original file locations

The next two cells find the links to the original data.  Here we are bringing in data from two different Workspaces, [`AnVIL_HPRC`](https://anvil.terra.bio/#workspaces/anvil-datastorage/AnVIL_HPRC) and [`1000G-high-coverage-2019`](https://anvil.terra.bio/#workspaces/anvil-datastorage/1000G-high-coverage-2019), which contains data from the [Human Pangenome Reference Consortium](https://humanpangenome.org/) and the [1000 Genomes Project](https://www.internationalgenome.org/), respectively.

- `avworkspace( "anvil-datastorage/AnVIL_HPRC" )` tells the AnVIL package what Workspace to access
- `df_sample_HPRC <- avtable( "sample" ) %>%` tells it to look at the table named "sample".
- The subsequent commands select which columns and rows to import into our Workspace.  These commands differ between the two code blocks because the Tables in the two source Workspaces have different structures.
- `slice_head( n=2 )` gets only the first two samples.

:::{.notice}
It's often a good idea to start off a new analysis by working with just a few samples.  This can help you minimize wasted time and computing expenses while you figure out your pipeline, and can also help you estimate what your costs will be for processing larger dataset before committing to a large Workflow run.
:::

To keep this exercise short and cheap, we're just importing a few samples into your Workspace, but when working on your own projects you can use the same process to import whole tables.

It does not cost anything to add these samples to your Data Table, since you are not storing them in your own Workspace, only linking to them in another Workspace.  Costs come into it when you start running analyses on the samples (as we will in a later exercise), so take care not to unintentionally run an expensive analysis on a large table of samples.

:::{.reflection}
### Exercise {- .unlisted}

**2.** Modify the code in both cells to get 3 samples instead of 2, and run each cell.

You should see a table listing out the samples appear below each cell.  Confirm that there are 3 samples in each table.
:::

This step chose the samples we want from the original Workspace, but has not yet created a Data Table that links to them in your own Workspace.

### Exported combined Data Table

The next code block accomplishes a few things:

1. The `bind_rows()` command combines data from the two different Workspaces into a single data table, so that you can conveniently work with all the data at once in your Workflows.  It also adds a column to keep track of which samples came from which original Workspace.
1. `avtable_import( entity="sample_id", namespace="anvil-outreach", name="demos-combine-data-workspaces" )` creates a Data Table in your Workspace that links to the original data, so that you can easily use it in your analyses.  **This is the line that we need to modify** so that the Data Table is created in *your* Workspace.

:::{.reflection}
### Exercise {- .unlisted}

You will need two pieces of information so that the AnVIL package can locate your Workspace to create the new Data Table:

1. The `namespace` (the Workspace's Billing Project)
1. The Workspace `name`

You can find both of these at the end of the URL for your Workspace which is structured like this:

```
anvil.terra.bio/#workspaces/namespace/name
```

For example, for this Workspace:

```
https://anvil.terra.bio/#workspaces/anvil-outreach/demos-combine-data-workspaces_KCox_20230616
```

- The `namespace` is `anvil-outreach`
- The `name` is `demos-combine-data-workspaces_KCox_20230616`


**3.** Modify the code in your Notebook so that it points to your Workspace, and run the cell.

If this command is successful, you will not see your new table in your Notebook, but if you look in the Data tab of your Workspace you should now see the `sample` Data Table has 6 rows in it.

:::


### Session Info

It's generally a good idea to document information about the packages (and their versions) you used while running the analysis.  The last codeblock uses the `sessionInfo()` command to do just that.

### View your new Data Table

As a last step, take a look at the Data Tab in your Workspace.  You should now see a table named `sample` that contains 6 rows - 3 with project "HPRC" and 3 with project "1000G".

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g251288a74c6_0_19.png){width=100%}


:::{.notice}
Note that for this exercise we preloaded the Workspace with 4 samples - if you only see 4 rows then double check your Notebook:

- Did you remember to "Run" each code cell after you edited it?
- Did you change the number of samples to link from 2 to 3 for each table?
- Did you update the `avtable_import` command to point to your Workspace?

If you run into any trouble, don't worry!  You can carry out the remaining exercises using the 4 samples we provided for you, and you can visit our community support forum at [`help.anvilproject.org`](https://help.anvilproject.org/) with any questions.
:::


## Explore Dockstore Workflows

Once you have set up Data Tables in your Workspace, you can analyze the data using Workflows.  To introduce you to Workflows, we will first take a look at the AnVIL Workflows available through [Dockstore](https://dockstore.org/).

The Dockstore platform is a repository for scalable bioinformatics tools and workflows.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g24306c8bf8a_0_30.png){width=100%}

You can find Workflows for AnVIL by clicking on the "Organizations" tab and searching for AnVIL.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g24306c8bf8a_0_390.png){width=100%}

Here you can find many Workflows which you can import into your AnVIL Workspace to use in your own analyses.  These Workflows are organized into collections to make them easier to find.

:::{.reflection}
### Exercise {- .unlisted}

Go to [`dockstore.org`](https://dockstore.org/), find the AnVIL Organization, and take a look at the Workflows that are available.

**Q1.** How many GATK4 workflows focus on CNVs?

:::

Now let's take a look at the `qc-analysis-pipeline`, which we will be running on our data.

Under the AnVIL Organization is a collection called "Quality Control Workflows".  Here you can find the `qc-analysis-pipeline`.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g251288a74c6_0_44.png){width=100%}

Clicking on the name of the Workflow will bring you to a page with detailed information about the Workflow, including the .wdl files for the Workflow.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g251288a74c6_0_35.png){width=100%}

From here, you can import the Workflow into your Workspace using the Launch button.  **Don't do this right now**, or, if you do, import it with a different name (not `qc-analysis-pipeline`) so you don't overwrite the Workflow that already exists in your Workspace.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g251288a74c6_0_52.png){width=100%}

There are some additional configuration steps that are needed to make sure the Workflow is set up properly to run on the desired files in your Workspace.  For the sake of time, we have provided a preconfigured version of this Workflow in the Workspace you cloned.  You can learn more about configuring Workflows in the [Terra Documentation on Workflows](https://support.terra.bio/hc/en-us/sections/360004147011).

## Run qc-analysis-pipeline

For our final exercise, we will run the `qc-analysis-pipeline` on the data we retrieved.  Note that Workflow runs can take a few hours to go through, so this exercise will walk you through submitting it, but you will need to check back later for the results.  You should receive an email when it's done (at the email address you use for AnVIL).

AnVIL Workspaces have two tabs dedicated to Workflows

- The "WORKFLOWS" tab is where you configure and submit Workflow runs for processing.
- The "JOB HISTORY" tab is where you monitor the progress of submitted Workflows.

Under the "WORKFLOWS" tab you will see any Workflows that have been imported into your Workspace.  If you import a Workflow from Dockstore (using the Launch with AnVIL button) or from another Workspace, you will see it here.  For this exercise, the `qc-analysis-pipeline` has already been imported for you.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g251288a74c6_0_65.png){width=100%}

:::{.reflection}
### Exercise {- .unlisted}

Go to your Workspace on AnVIL and open the "WORKFLOWS" tab.

**1.** Click on the `qc-analysis-pipeline` card to configure the Workflow.

**2.** Confirm settings

- "Run workflow(s) with inputs defined by data table" is selected
- The root entity type should be "sample".  This means it will look at the "sample" Data Table to find inputs.

**3.** Choose samples - click the "SELECT DATA" button and check the samples you want to run the Workflow on.  You should see 6 samples.

**4.** Click the "RUN ANALYSIS" button.
:::

You can view the status of your Workflow run by navigating to the "JOB HISTORY" tab.  You can see more details by clicking on the name of the Workflow in the "Submission" column.

![](02-scale-with-workflows_files/figure-docx//1K2qqm02W_zPhrOZsUoKj1FvKWcMO0iHgaiVwvcqMrXc_g251288a74c6_0_78.png){width=100%}

Once your Workflow run is complete, you will be able to view the results in your Workspace's "DATA" tab.

# Instructor Guide {#scale-with-workflows-instructor-guide}

## Timeline

Here is one possible way to budget time for a synchronous event:

| Activity | Duration |
| :-- | :-- |
| 1-slide Overview, Clone, Launch | 5 min |
| Key Concepts | 5 min |
| Exercises | 15 min |
| Q & A | 5 min |

Here is one way to balance exercises between hands-on (HO) and follow-along (FA):

| Activity | Style |
| :-- | :-- |
| Explore Dataset Catalog | FA |
| Explore Workspace | FA |
| Combine Data Workspace | HO |
| Explore Dockstore Workflows | FA |
| Run qc-analysis-pipeline | HO |

## Example

Here is a recording of this material at our monthly AnVIL Demos series

<iframe width="560" height="315" src="https://www.youtube.com/embed/1vz4kupdkms" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

