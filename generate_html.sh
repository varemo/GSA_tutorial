# Knit HTML:
Rscript -e 'rmarkdown::render("functional_annotation.Rmd")'

# Make a copy HTML file with answers displayed:
cp functional_annotation.html functional_annotation_answers.html
sed -i "" "s/div.answer { display: none;}/div.answer { display: true;}/g" functional_annotation_answers.html