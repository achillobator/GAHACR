# GAHACR
A collection of scripts used to perform statistical analysis and graphing for the manuscript: Reprogramming feedback strength in gibberellin biosynthesis highlights conditional regulation by the circadian clock and carbon dioxide.  
Alexander R Leydon 1, Leonel Flores 1, Arjun Khakhar 2, Jennifer L Nemhauser 1
1 - Department of Biology, University of Washington, USA
2 - Department of Biology, Colorado State University, USA

Figure 1 - GA Model
For the mathematical model of GA signaling we modified the existing model from Middleton et al.: :Mathematical modeling elucidates the role of transcriptional feedback in gibberellin signaling. Proc Natl Acad Sci 109:7571–7576. doi:10.1073/pnas.1113666109. We simulated the perturbation of introducing a GA-HACR to target the GA20oxidase gene family by first implementing the model of GA signaling proposed by Middleton et al. in python. We then added additional differential equations to simulate GAHACR transcription, translation, and GA-dependent degradation paralleling the approach used for DELLA proteins. However, as the GAHACR is a repressor rather than an activator of the target gene, it’s impact on transcription was appropriately altered. We also built versions of this model without a GAHACR and without GA triggered degradation of the GAHACR, to simulate a dCAS9 repressor lacking the GA degron (No Degron CR). 

Figure 3 - Differential Gene Expression analysis on GAHACR parental versus GA20oxidase targeted lines. 
We have uploaded the R markdown file shared with us from Amaryllis Nucleics for their DEG caller. This is "Ambient_GAHACR_DEG_caller.rmd". We also utilized the same counts file provided to perform our own EdgeR and DESeq2 analysis. However, as this was performed on a previous version of R, and as it was not contatinerized, we would recommend performing de-novo DEG analysis with a more up to date version of these programs, as we performed the standard pipeline of analysis. 

Figure 3 - Figure supplement 2 (GO terminology graphing for GAHACR DEGS at ambient carbon dioxide levels): the folder "GO_analysis_Supplemental 3B" contains the R graphing scripts required for our style of presentation of the enriched GO categories. 

