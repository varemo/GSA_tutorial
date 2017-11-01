FROM rocker/tidyverse

WORKDIR /home/rstudio

RUN R -e "source('https://bioconductor.org/biocLite.R'); biocLite(c( \
          'piano', \
          'topGO', \
          'biomaRt', \
          'NMF', \
          'knitr', \
          'org.Mm.eg.db', \
          'Rgraphviz', \
          'edgeR' \
          ))"
          
RUN git clone https://github.com/varemo/GSA_tutorial.git
RUN mv GSA_tutorial/functional_annotation.Rmd .
RUN mv GSA_tutorial/data .
RUN rm -r GSA_tutorial

