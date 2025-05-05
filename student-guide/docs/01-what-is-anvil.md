
# (PART\*) What is AnVIL {-}   

# Overview {#what-is-anvil-overview}

## Background

Over the past 20 years, there has been tremendous growth in human genomics, with millions of human genomes sequenced and many more to come in the future. This data, along with other biomedical information, has the potential to greatly improve our understanding of healthy living and transform healthcare. To achieve these goals, we need new approaches to research that involve cloud computing, which is the only way to effectively share and analyze data at this scale. The traditional method of genomic data sharing through centralized data warehouses is becoming unsustainable and inefficient. It creates redundant infrastructure and administrative inefficiencies that make collaborative analysis challenging, especially as datasets increase in size. This approach also leads to high transfer and download costs and poses security and compliance risks.

The NHGRI Genomic Data Science Analysis, Visualization, and Informatics Lab-Space, or AnVIL, inverts the traditional model, providing a cloud environment for the analysis of large genomic and related datasets. By providing a secure, unified environment for data management and compute, AnVIL eliminates the need for data movement, allows for active threat detection and monitoring, and provides elastic, shared computing resources that can be acquired as needed. 

AnVIL currently provides secure access to hundreds of thousands of NHGRI datasets spanning nearly 5 petabytes of data and is built from a set of established components that are accessed and connected through the AnVIL Portal at https://anvilproject.org/ . The AnVIL homepage provides researchers an entry point into these tools, along with documentation, data browser, and links to related resources. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/XC5qzj-yZb8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

## About this Demo

The Welcome to AnVIL demo provides an overview of the AnVIL platform, its purpose, and how it can benefit researchers and the broader genomics community. We highlight some of the historic challenges of analyzing and sharing large-scale genomic data and describe how AnVIL provides a cloud-based solution for accessing and analyzing such data. We also cover key features and functionalities of AnVIL, including its compatibility with popular analysis tools/ Finally, we emphasize the importance of collaboration and community engagement in driving AnVIL's development and future growth, providing resources to customize your journey with AnVIL.

## Skills Level

::: {.notice}
_Genetics_

**Novice**: no genetics knowledge needed

_Programming skills_

**Novice**: no programming experience needed
:::

## Learning Objectives

1. Understand the benefits of using cloud computing for genomic data analysis and the limitations of traditional data-sharing paradigms.

1. Identify the main features and tools available on the AnVIL platform and their potential applications in genomics research.

1. Learn how to navigate and access a Workspace, the starting point for a basic analysis using the AnVIL tools.

1. Identify potential use cases for the AnVIL platform in your own research projects.

1. Learn about additional resources to self-guide your discovery on AnVIL.

# Preparation {#what-is-anvil-preparation}

## Review Key Concepts

Learn about why AnVIL has been created, what features AnVIL offers, how AnVIL is being used, and how to get started in this ~20 min video ([slides](https://docs.google.com/presentation/d/1wTcGBM-ZOo7SmyR7x_BCvau2bBig01Er59s4lXb1Bg4))

<iframe width="560" height="315" src="https://www.youtube.com/embed/fcMUU7NrEeM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

# Exercises {#what-is-anvil-exercises}

## Launch Terra

Open [anvilproject.org](https://anvilproject.org) and click on "Launch" Terra

![](01-what-is-anvil_files/figure-docx//1bY6V6YTMmmBtw-xiiMlVeB-KbvHE3p33R4JHTkaxcwU_g24303c0c340_0_0.png){width=100%}

## Clone HPRC Workspace

At [anvil.terra.bio/#workspaces](https://anvil.terra.bio/#workspaces)

- Enter `hprc` in the search box
- Click on the "Public" tab
- Click on AnVIL_HPRC
- Click on the circle with three vertical dots in the upper right corner and select "Clone"

![](01-what-is-anvil_files/figure-docx//1bY6V6YTMmmBtw-xiiMlVeB-KbvHE3p33R4JHTkaxcwU_g24f58a64a6b_0_1.png){width=100%}

## Start a Cloud Environment

- Click on the Environment Configuration (cloud icon)
- Select Jupyter Settings
- Scroll down and click "Create"

![](01-what-is-anvil_files/figure-docx//1bY6V6YTMmmBtw-xiiMlVeB-KbvHE3p33R4JHTkaxcwU_g24f58a64a6b_0_26.png){width=100%}

## Find Tidbits

- In the Dashboard tab, what are three types of sequencing data that are available?
- In the Data tab `participant` table, what two superpopulations have the most participants?
- In the Data tab `sample` table, how many samples lack any ilmn data?
- In the Data tab `assembly_sample` table, what is the command to download the HG002 `mat_fasta` file?

![](01-what-is-anvil_files/figure-docx//1bY6V6YTMmmBtw-xiiMlVeB-KbvHE3p33R4JHTkaxcwU_g24f58a64a6b_0_53.png){width=100%}

## Enter Terminal

- In the Analysis tab, click on Terminal
- Make a working copy of the HG002 `mat_fasta`
    - NOTE: Requester pays buckets require `-u <google-project-id>` [[ref](https://support.terra.bio/hc/en-us/articles/360029801491)]
- Examine file with `ls -l` and `zcat *.fa.gz | head`

```
gsutil cp 'gs://fc-4310e737-a388-4a10-8c9e-babe06aaf0cf/working/HPRC_PLUS/HG002/assemblies/year1_f1_assembly_v2_genbank/HG002.maternal.f1_assembly_v2_genbank.fa.gz' .
```

![](01-what-is-anvil_files/figure-docx//1bY6V6YTMmmBtw-xiiMlVeB-KbvHE3p33R4JHTkaxcwU_g24f58a64a6b_0_109.png){width=100%}

## Shut Down

- Click on the Environment Configuration (cloud icon)
- Select Jupyter Settings
- Scroll down and click "Delete Environment"
- Select "Delete" after deciding to keep or delete your persistent disk
- Click "hamburger" icon in the upper left, expand your name, select Cloud Environments and confirm no unnecessary resources are running

![](01-what-is-anvil_files/figure-docx//1bY6V6YTMmmBtw-xiiMlVeB-KbvHE3p33R4JHTkaxcwU_g24f58a64a6b_0_181.png){width=100%}

# Instructor Guide {#what-is-anvil-instructor-guide}

## Timeline

Here is one possible way to budget time for a synchronous event:

| Activity | Duration |
| :-- | :-- |
| Review Key Concepts | 15 min |
| Q & A | 5 min |
| Exercises | 15 min |
| Q & A | 5 min |

Here is one way to balance exercises between hands-on (HO) and follow-along (FA):

| Activity | Style |
| :-- | :-- |
| Launch Terra | HO |
| Clone HPRC Workspace | HO |
| Start a Cloud Environment | FA |
| Find Tidbits | HO |
| Enter Terminal | FA |
| Shut Down | FA |

