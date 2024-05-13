
# Natural Language Processing (NLP) Analysis in R

## Overview

This repository contains R code for conducting various Natural Language Processing (NLP) tasks and visualizations using the `udpipe` library and other related packages. The script showcases how to perform text analysis on datasets related to Brussels listings and reviews, including tasks such as word frequency analysis, document term frequencies, correlation matrix calculation, word co-occurrence analysis, and dependency parsing.

## Contents

1. **Importing Libraries**: Initial setup where necessary R libraries are imported.
2. **Importing Datasets**:
   - `brussels_listings`: Dataset containing information about Brussels listings.
   - `brussels_reviews_anno`: Dataset containing annotated reviews from Brussels.
3. **Word Frequency Analysis**:
   - Segregation of neighborhoods and sorting by frequency.
   - Visualization of word frequency using bar charts.
4. **Document Term Frequencies**:
   - Segregation of data based on specific criteria (part-of-speech tagging and language).
   - Calculation of document term frequencies and creation of a document term matrix (DTM).
5. **Correlation Analysis**:
   - Calculation of the correlation matrix based on the DTM.
6. **Word Co-occurrence Analysis**:
   - Extraction of co-occurring terms from annotated reviews.
   - Visualization of word co-occurrence using a co-occurrence plot.
7. **Dependency Parsing**:
   - Tokenization and part-of-speech tagging for a given sentence.
   - Visualization of dependency parsing using a dependency parser plot.

## Requirements

To run the script, ensure you have the following installed:

- R 
- Required R packages: `udpipe`, `textplot`, `glasso`, `ggraph`

## Usage

1. Clone this repository to your local machine.
2. Open the R script file `nlp_analysis.R` in your R environment.
3. Ensure all required R packages are installed by running `install.packages()` if necessary.
4. Run the script to perform various NLP tasks and generate visualizations.
5. Explore the generated visualizations and analyze the insights gained from the textual data related to Brussels listings and reviews.

