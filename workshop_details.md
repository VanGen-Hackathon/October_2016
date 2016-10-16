# Descriptions of the workshops and talks

## Saturday

### Introduction to HGVS Nomenclature and the Python hgvs package
_Reece Hart_

The [HGVS sequence variant nomenclature](http://varnomen.hgvs.org/) is a set of recommendations for presenting biological sequence variants to humans. Unfortunately, humans aren’t very good at distinguishing formats that are convenient for them from representations that are convenient for computers. As a result, humans put HGVS variant strings into databases and web pages and clinical reports, making it difficult to compute on these variants. The [Python hgvs package](https://bitbucket.org/biocommons/hgvs/) (Apache 2.0 license) parses, formats, validates, and shifts/normalizes variants, and projects (maps) variants between aligned sequences. An important distinguishing feature of the hgvs package is that it correctly handles cases in which the genomic and transcript sequences differ by substitutions or indels.

This workshop will introduce the hgvs package and help attendees get started with using it. To get the most out of the workshop, attendees should bring a laptop with Python installed or the ability to run docker containers.

Related: [hgvs-eval project](https://github.com/hackseq/hackseq_projects_2016/issues/10)

Estimated time : ~45 minutes | [Draft Slides](https://docs.google.com/presentation/d/1XTvotT6YCsagH0t6tGnCgJhYbHTw1FPwLrPS_sdF_wk/edit#slide=id.g1795fef191_0_51)
| [Pre-workshop Prep](https://docs.google.com/presentation/d/1XTvotT6YCsagH0t6tGnCgJhYbHTw1FPwLrPS_sdF_wk/edit#slide=id.g1795fef191_0_521)


### Gitting Git: Beginner workshop with Git, Github
_Amanjeev Sethi_

Plan is to host a workshop where I talk about Git’s beginner’s basics, and exercise(s) to follow through together to get hands-on experience with most used commands.

Assumptions/prerequisites:
- All participants have Git installed on their machines
- All participants have a Github account
- All participants have command line access to Git
- All participants have preferably SSH keys setup

Helpful links: [Git installation](http://bgran.de/2016-10-05-SFU/#shell), [Github website](https://github.com/) (create account), [setting up ssh key](https://help.github.com/articles/generating-an-ssh-key/) if you do not want to type Github password again and again, see

Estimated time : ~60 minutes
Workshop resources:
[Slides](https://docs.google.com/presentation/d/1PAhuppzKQS2UM4urXlsU3m8EVa1tFeZ8MLGCQmS6Iv8/edit?usp=sharing ) and [Github repo](https://github.com/amanjeev/gitting-git-hackseq)

## Sunday

### Bioinformatic solutions for variant calling within segmental duplications
_Dan Kvitek_

Segmental duplications (SegDups) are long DNA stretches of nearly identical sequence that occur two or more times in the genome, arising from duplication events that appear fixed in the population. SegDups complicate variant calling from short-read next-generation sequencing (NGS) data because sequence reads cannot be unambiguously aligned due to the shared sequence identity between SegDup regions. This makes clinical-grade variant calls in these regions difficult or impossible using NGS data and current variant identification approaches.
We have developed a general method for identifying SNPs, indels and CNVs within SegDups. The method consists of two steps. The first step is a bioinformatics screen using NGS data in which sequence reads derived from both the clinical gene of interest and the SegDup are analyzed for the presence of variants using a reference sequence with the gene of interest present but the SegDup(s) masked. If no variants of interest are identified in the screen, no further work is required, and the sample is negative for variants across that gene. If variants of interest are identified, the variant location is disambiguated with additional laboratory assays such as long-range PCR or MLPA, if necessary.
This method eliminates the need to perform additional laboratory assays on screen-negative samples, significantly reducing the time and cost of variant identification, and enables identification in parts of the genome previously impossible. We have applied this method successfully to several genes, including the Lynch Syndrome gene PMS2 and its pseudogene PMS2CL, an internal 8 exon triplication of the myopathy gene NEB and the spinal muscular atrophy genes SMN1/2.
We are in the process of applying this method to other genes of clinical importance that have SegDups elsewhere in the genome. Among them are the autosomal dominant polycystic kidney disease gene PKD1, the Shwachman-Diamond syndrome gene SBDS, the incontinentia pigmenti gene IKBKG (NEMO), the Koolen-de Vries Syndrome gene KANSL1, and the Gaucher disease gene GBA.
In the talk, I would go through the problem with SegDups, show the general bioinformatic method we developed, then show specific examples of genes, their read alignment issues, and the solution.

Estimated time: 30-60 minutes
Slides: Available later

### Making R packages accessible to non-programmer collaborators using the VisRseq platform
_Hamid Yournesy_

The goal of this workshop is to introduce the VisRseq, a software platform for analysis and visualization of NGS data. We will walk through the quick process of creating modules called R-apps from their R packages. This should be of most interest to bioinformaticians and package developers that develop R-based analysis tools and would like to make them accessible to their non-programmer collaborators or to the public without having to spend time on creating extensive graphical user interfaces. We will create diverse types of apps, from simple plotting (e.g. ggplot) to intermediate (e.g. clustering) to more advanced (e.g. edgeR and DEseq) packages. We will also see how several R-apps can be linked together to create more complex workflows. Participants will require having beginner knowledge of R and a machine with R and Java installation

Estimated time: 90-120 minutes
Workshop resources: [Slides](https://www.dropbox.com/s/t2cnvstn5iyq7qn/MCM2016_VisRseq_Slides.pdf?dl=1) and [workshop materials](https://github.com/hyounesy/bioc2016.visrseq/blob/master/vignettes/bioc2016.visrseq.pdf)

## Monday

### Can My Computer Read Those Papers For Me?
_Jake Lever_

How easy is it to build a new knowledgebase from scratch for a particular biological problem? I'll explore why you might want to do this and what technology exists for this problem. I'll focus on our approach using the VERSE tool and the concepts behind it.

Estimated time: 20-30 minutes
Slides: [Google Slides](https://docs.google.com/presentation/d/1ACbneFqtscYD-cQ5Y2eNscyKImQxCUBwhgijRd3Opcg)

### The ENCODE Encyclopedia: The Ultimate User's Guide
_Jill E. Moore_

The Encyclopedia of DNA Elements (ENCODE) Consortium has generated hundreds of high throughput genomic datasets with the goal of cataloging functional elements in the human genome. Our goal was to integrate these complex data types to create an Encyclopedia that can be used by the wider research community.
This workshop will cover components of the Encyclopedia from ground level annotations such as gene expression and transcription factor binding sites, to middle and top level annotations such as candidate enhancers and their linked genes. The workshop will include a hands-on tutorial where users can search for regions of interest, investigate regulatory elements, and visualize these regions on the genome browser.

Estimated time: ~30 minutes
Slides: Available later
