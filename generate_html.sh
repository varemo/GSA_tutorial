# Knit HTML:
Rscript -e 'rmarkdown::render("functional_annotation.Rmd")'

# Make a copy HTML file with answers displayed:
cp functional_annotation.html functional_annotation_answers.html
# This may only work for Mac (-e option replaced by "")
sed -i "" "s/div.answer { display: none;}/div.answer { display: true;}/g" functional_annotation_answers.html