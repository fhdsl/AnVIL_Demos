

# (PART\*) Human Genetic Variation in MAGE {-}   

# Overview {#human-genetic-variation-in-mage-overview}

AnVIL provides a secure, scalable computing platform for controlled access data.
Hosting over 7 petabytes of data across 113 dbGaP accessions and 103 consent codes, AnVIL inverts the model of genomics data sharing by providing tools such as Jupyter, RStudio, Galaxy, and WDL Workflows.
This AnVIL Demo introduces datasets from the [MAGE](https://github.com/mccoy-lab/MAGE) and [1000 Genomes Project (1KGP)](https://www.internationalgenome.org/) projects to showcase notable features of working in AnVIL including how to import data and export results between these various tools.

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_p.png" width="100%" />

This demonstration will specifically explore workspaces, noting how cloned workspaces differ from the original; run an analysis in a Jupyter Notebook, run an analysis using RStudio, and submit a workflow in Galaxy.
All analyses will showcase human genetic variation concepts and results from the MAGE and 1KGP datasets.

## Learning Objectives

1. Explore MAGE Workspace 
1. Analysis with Jupyter/Terminal
1. Bioconductor with RStudio
1. Workflows with Galaxy

# Preparation {#human-genetic-variation-in-mage-preparation}

## Review Background

Learn how the NHGRI Genomic Data Science Analysis, Visualization, and Informatics Lab-Space, or AnVIL, inverts the model of genomics data sharing by providing a cloud environment for the analysis of large genomic and related datasets (see [slidedeck](https://docs.google.com/presentation/d/16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak/edit?slide=id.g336d9ca244f_0_6#slide=id.g336d9ca244f_0_6)).

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g36a25834c74_19_108.png" width="100%" />

## Create AnVIL Account

Follow these instructions to create an AnVIL Account

- https://jhudatascience.org/AnVIL_Book_Getting_Started/data-analysts.html#data-analysts-step-1

::: {.notice}
Fill out [this poll](https://docs.google.com/forms/d/e/1FAIpQLScEF5Z9alzqEM3XfFFCFTcBDdm2MxCciSaMRTPehALHz4CsiA/viewform) to share your AnVIL ID
:::

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_0.png" width="100%" />

## Clone Workspace

Navigate to `demos-explore-mage` and clone the Workspace

- https://anvil.terra.bio/#workspaces/anvil-outreach/demos-explore-mage

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g36877bec10a_0_0.png" width="100%" />

# Exercises {#human-genetic-variation-in-mage-exercises}

## Explore MAGE Workspace

The demos-explore-mage Workspace allows you to explore how data is organized on AnVIL using a subset of data from the [Multi-ancestry Analysis of Gene Expression](https://pubmed.gov/39020179) (MAGE) and [1000 Genomes Project](https://www.internationalgenome.org) (1KGP) projects.
Importantly, pay close attention to the relationship between file **links** in Data Tables and the actual files in Workspace Buckets, especially after cloning a Workspace.
You can navigate to MAGE Workspace directly through this link: 

- https://anvil.terra.bio/#workspaces/anvil-outreach/demos-explore-mage

Key components of this Workspace are:

1. DASHBOARD tab - which will tell you more about the Workspace.
1. DATA tab - which has Data Tables with links to data relevant for demo exercises.
1. ANALYSES tab - which has notebooks relevant for demo exercises with Jupyter and RStudio.
1. 'Environment Configuration' button - to select the Cloud Environment of choice.
1. 'Browse workspace files' button - which contains any files stored in this Workspace (see Review Key Concepts for important note about Cloned Workspaces) as well as notebooks listed in the ANALYSES tab.

### Review Key Concepts

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g33d1f69b524_1_1.png" width="100%" />

### Scavenger Hunt

In this exercise you will go on a scavenger hunt to explore the Original Workspace and your Cloned Workspace to look for and understand the differences between them.

The focus of this scavenger hunt within the Workspaces will be on:

1. Entries in Data Tables
2. Files in Workspace Buckets

Original Workspace

- https://anvil.terra.bio/#workspaces/anvil-outreach/demos-explore-mage
- Explore Data Tables e.g. counts.csv, PCA.nb.html
- Find files in Workspace Bucket

Your Cloned Workspace

- https://anvil.terra.bio/#workspaces/ &lt;billing-project&gt; / &lt;workspace-name&gt;
- Explore Data Tables
- Look for files in Workspace Bucket

## Analysis with Jupyter/Terminal

The Jupyter Cloud Environment allows for both interactive analysis using Jupyter Notebooks as well as a UNIX Terminal.
Pre-configured with conda, Python, R, and GATK, you can further personalize your environment using startup scripts and custom Docker images.
In this Workspace you will find a Jupyter Notebook demonstrating how to generate a quick summary of 1000 Genomes variants.
In this exercise you will learn how to: 

1. Launch Jupyter Cloud Environment in your Cloned Workspace.
1. Access a UNIX Terminal.
1. Transfer data using between Workspace Bucket and  Persistent Disk using `gcloud storage`
1. Run a Jupyter Notebook to plot a histogram of 1000 Genomes variants per chromosome.


### Launch Jupyter

<img src="human-genetic-variation-in-mage_files/figure-html//1-IU5l40UxmpoBqFimSUmT1PNEUij2UnXMslOsiG5ncE_g14ea2db115d_0_22.png" width="100%" />

<img src="human-genetic-variation-in-mage_files/figure-html//1-IU5l40UxmpoBqFimSUmT1PNEUij2UnXMslOsiG5ncE_g14ea2db115d_0_18.png" width="100%" />

<img src="human-genetic-variation-in-mage_files/figure-html//1-IU5l40UxmpoBqFimSUmT1PNEUij2UnXMslOsiG5ncE_g14ea2db115d_0_41.png" width="100%" />

### Review Key Concepts

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_158.png" width="100%" />

### Enter Terminal

Copy a file from the original Workspace Bucket to your Persistent Disk using `gcloud storage`

```
gcloud storage cp gs://fc-8c4a998b-0e6f-4750-b6de-c2d8a2da9d90/sample.metadata.MAGE.v1.0.txt .
```

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_32.png" width="100%" />

### Run Jupyter Notebook

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_36.png" width="100%" />

<img src="human-genetic-variation-in-mage_files/figure-html//1-IU5l40UxmpoBqFimSUmT1PNEUij2UnXMslOsiG5ncE_g25442045568_0_82.png" width="100%" />

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_40.png" width="100%" />

## Bioconductor with RStudio

The next Cloud Environment we will explore is RStudio which comes pre-configured with support for both the recent and prior release of Bioconductor.
In 2024, the [Bioconductor project](https://www.bioconductor.org/about) provided almost 4,000 packages covering a “broad range of powerful statistical and graphical methods for the analysis of genomic data”.
AnVIL enables analysis using Bioconductor in a single secure environment with direct access to results from additional tools like Galaxy and WDL Workflows.
In this exercise you will learn how to:

1. Launch RStudio Cloud Environment in your Cloned Workspace.
2. Transfer data between your Workspace and Persistent Disk using the Bioconductor AnVILGCP package.
3. Run an R Notebook to make a PCA plot of MAGE RNA expression counts.


### Launch RStudio

<img src="human-genetic-variation-in-mage_files/figure-html//1a35Mb8f0M-bQkBcHa1cyQc6YxXoBLtExCz96nv08vkA_g14ea2db115d_0_18.png" width="100%" />

<img src="human-genetic-variation-in-mage_files/figure-html//1a35Mb8f0M-bQkBcHa1cyQc6YxXoBLtExCz96nv08vkA_g256428d32e5_0_10.png" width="100%" />

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_71.png" width="100%" />

### Review Key Concepts

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g33d1f69b524_2_78.png" width="100%" />

### Use AnVILGCP

Copy a file to your Persistent Disk using the link in the Data Table and the Bioconductor [AnVILGCP](https://bioconductor.org/packages/AnVILGCP) package

```
BiocManager::install( "AnVILGCP" )
library( "AnVILGCP" )
avtable( "MAGE" )
gcloud_storage( paste( "cp", avtable( "MAGE" )[2,2], "." ) )
```

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_80.png" width="100%" />

### Run R Notebook

Two notebooks are available showcasing notable features of Bioconductor and RStudio on AnVIL

- PCA.Rmd – Make a PCA plot of gene expression counts from MAGE, demonstrating how AnVILGCP facilitates access to Data Tables (`avtable()`) and Workspace Buckets (`gcloud_storage()`)
- eQTL.Rmd (requires using the  `install-conda.sh` startup script) – Visualize an eQTL (expression quantitative trait locus) correlated with expression of GSTP1, combining datasets from the MAGE and 1KGP Workspaces

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_84.png" width="100%" />

## Workflows with Galaxy

[Galaxy](https://usegalaxy.org) is a free, open-source web-based platform for data intensive biomedical research.
Through its graphical-user interface, over 10,000 tools are ready to run without the need for software installation or prior coding experience.
In addition to providing a secure space for analysis and data sharing, Galaxy on AnVIL automatically grants you system administrator privileges, enabling you to install and soon configure any tool in the [toolshed](https://toolshed.g2.bx.psu.edu).

In this exercise you will learn how to: 

1. Launch Galaxy Environment in your Cloned Workspace.
1. Upload and export data from/to your Workspace Bucket.
1. Run a tool.
1. Install a tool.


### Launch Galaxy

<img src="human-genetic-variation-in-mage_files/figure-html//1yYCg4cPVBMMDghT17B4XzROieqyMH99Ex9nMm_Scm9Q_ge1182914a6_0_36.png" width="100%" />

### Review Key Concepts

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g33d1f69b524_2_73.png" width="100%" />

### Run FastQC

Copy a file to your Persistent Disk using the Galaxy Upload tool

- Click "Upload" in the left hand menu
- Click "Choose remote files" at the bottom
- Select the `demos-explore-mage` Workspace
- Select `Tables` and then `1KGP`
- Tick the box next to `NA12878.1mil.fastq.gz` and click "Ok"
- Click "Start" and then "Close"

You can now

- Run the FastQC tool and view FastQC on data 1: Webpage
- Export data back to AnVIL using "Export History to File" (must target `Other Data/Files`)

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_90.png" width="100%" />

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_96.png" width="100%" />

### Install Tool

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_100.png" width="100%" />

# Wrap Up {#human-genetic-variation-in-mage-wrap-up}

## Shut Down Compute

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_110.png" width="100%" />

## Learn More

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_136.png" width="100%" />

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_126.png" width="100%" />

## Provide Feedback

::: {.notice}
Fill out [this poll](https://docs.google.com/forms/d/e/1FAIpQLScrDVb_utm55pmb_SHx-RgELTEbCCWdLea0T3IzS0Oj00GE4w/viewform?usp=pp_url&entry.1565230805=GBCC2025) to share your feedback
:::

<img src="human-genetic-variation-in-mage_files/figure-html//16DHXD2KNyjjP2mKzPDHmNE9loYy6OgqGG0-Kn8CLFak_g369240085c8_0_120.png" width="100%" />
