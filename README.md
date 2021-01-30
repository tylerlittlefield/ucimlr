
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ucimlr <img src="man/figures/logo-inter-ui.png" align="right" height=150/>

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/tyluRp/ucimlr.svg?branch=master)](https://travis-ci.org/tyluRp/ucimlr)
[![AppVeyor build
status](https://ci.appveyor.com/api/projects/status/github/tyluRp/ucimlr?branch=master&svg=true)](https://ci.appveyor.com/project/tyluRp/ucimlr)
[![Codecov test
coverage](https://codecov.io/gh/tyluRp/ucimlr/branch/master/graph/badge.svg)](https://codecov.io/gh/tyluRp/ucimlr?branch=master)
[![Netlify
Status](https://api.netlify.com/api/v1/badges/ae8ab755-9460-4891-883c-6820d7e52158/deploy-status)](https://app.netlify.com/sites/ucimlr/deploys)
<!-- badges: end -->

The goal of `ucimlr` is to give R users easy access to datasets found at
the [**U**niversity of **I**rvine’s **M**achine **L**earning
**R**epository](https://archive.ics.uci.edu/ml/index.php). The benefits
of using this package are:

1.  Ease of access
2.  Clean data

Note that data in this repository dates back to 1987, the format across
datasets are not consistent. Some inconsistencies include column
separation and the way NA values are handled. Luckily, data in `ucimlr`
follows a consistent structure that any R user can dive into. The
structure is as follows:

1.  All variations of NA (null, blank character, ?, etc) are coded as NA
2.  All variables are snake case
3.  Everything is `stringAsFactors = FALSE`
4.  All datasets are presented as a
    [`tibble`](https://github.com/tidyverse/tibble)

Note on point 3: Factors aren’t evil, but I’d rather the user decide
when to code something as factor or not.

Currently, there are 559 datasets available at the official repository
and 20 available in `ucimlr`. These numbers update every time the
README.Rmd is reknit.

## Installation

Keep in mind that this is a data package. As of now the package is
\~2.01 MB and it will continue to grow. You can install `ucimlr` from
GitHub with [`devtools`](https://github.com/r-lib/devtools):

``` r
# install.packages("devtools")
devtools::install_github("tyluRp/ucimlr")
```

## Example

We can load data by name and we can scrape the current list of datasets
using the `ucidata` function:

``` r
library(ucimlr)

automobile
#> # A tibble: 205 x 26
#>    symboling normalized_loss… make  fuel_type aspiration num_of_doors body_style
#>        <int>            <int> <chr> <chr>     <chr>      <chr>        <chr>     
#>  1         3               NA alfa… gas       std        two          convertib…
#>  2         3               NA alfa… gas       std        two          convertib…
#>  3         1               NA alfa… gas       std        two          hatchback 
#>  4         2              164 audi  gas       std        four         sedan     
#>  5         2              164 audi  gas       std        four         sedan     
#>  6         2               NA audi  gas       std        two          sedan     
#>  7         1              158 audi  gas       std        four         sedan     
#>  8         1               NA audi  gas       std        four         wagon     
#>  9         1              158 audi  gas       turbo      four         sedan     
#> 10         0               NA audi  gas       turbo      two          hatchback 
#> # … with 195 more rows, and 19 more variables: drive_wheels <chr>,
#> #   engine_location <chr>, wheel_base <dbl>, length <dbl>, width <dbl>,
#> #   height <dbl>, curb_weight <int>, engine_type <chr>, num_of_cylinders <chr>,
#> #   engine_size <int>, fuel_system <chr>, bore <dbl>, stroke <dbl>,
#> #   compression_ratio <dbl>, horsepower <int>, peak_rpm <int>, city_mpg <int>,
#> #   highway_mpg <int>, price <int>

ucidata()
#> * Scraping datasets from <https://archive.ics.uci.edu/ml/datasets.php>
#> # A tibble: 559 x 7
#>    name         type    task      variable_types    observations variables  year
#>    <chr>        <chr>   <chr>     <chr>                    <int>     <int> <int>
#>  1 Abalone      Multiv… Classifi… Categorical, Int…         4177         8  1995
#>  2 Adult        Multiv… Classifi… Categorical, Int…        48842        14  1996
#>  3 Annealing    Multiv… Classifi… Categorical, Int…          798        38    NA
#>  4 Anonymous M… <NA>    Recommen… Categorical              37711       294  1998
#>  5 Arrhythmia   Multiv… Classifi… Categorical, Int…          452       279  1998
#>  6 Artificial … Multiv… Classifi… Categorical, Int…         6000         7  1992
#>  7 Audiology (… Multiv… Classifi… Categorical                226        NA  1987
#>  8 Audiology (… Multiv… Classifi… Categorical                226        69  1992
#>  9 Auto MPG     Multiv… Regressi… Categorical, Real          398         8  1993
#> 10 Automobile   Multiv… Regressi… Categorical, Int…          205        26  1987
#> # … with 549 more rows

ucinews()
#> * Scraping news from <https://archive.ics.uci.edu/ml/index.php>
#> # A tibble: 7 x 2
#>   date       info                                                               
#>   <date>     <chr>                                                              
#> 1 2020-09-24 Welcome to the new Repository admins Dheeru Dua and Efi Karra Tani…
#> 2 2020-04-04 Welcome to the new Repository admins Kevin Bache and Moshe Lichman!
#> 3 2020-03-01 Note from donor regarding Netflix data                             
#> 4 2020-10-16 Two new data sets have been added.                                 
#> 5 2020-09-14 Several data sets have been added.                                 
#> 6 2020-03-24 New data sets have been added!                                     
#> 7 2020-06-25 Two new data sets have been added: UJI Pen Characters, MAGIC Gamma…
```

I’d suggest loading data using R’s `::` so that you can access all
exported variables without loading the package. This will prevent any
namespace collisions and have an additional benefit of autopopulating
all the datasets and functions (assuming you’re using RStudio).
Alternatively, to see a list of all available datasets you can run:
`data(package = "ucimlr")`

## Contributing

There are a lot of datasets and I’m slowly adding as many as I can. If
you’d like to add a dataset, fix something, suggest an improvement,
etc., please file an issue or submit a pull request!
