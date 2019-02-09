
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ucimlr <img src="man/figures/logo-inter-ui.png" align="right" height=150/>

<!-- badges: start -->

<!-- badges: end -->

The goal of `ucimlr` is to give R users easy access to datasets found at
the **U**niversity of **I**rvine’s **M**achine **L**earning
**R**epository. The benefits of using this package are:

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

Currently, there are 468 datasets available at the official repository
and 15 available in `ucimlr`. These numbers update every time the
README.Rmd is reknit.

## Installation

Keep in mind that this is a data package and as of now the package is
~2.12 MB. You can install `ucimlr` from GitHub with
[`devtools`](https://github.com/r-lib/devtools):

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
#>    symboling normalized_loss… make  fuel_type aspiration num_of_doors
#>        <int>            <int> <chr> <chr>     <chr>      <chr>       
#>  1         3               NA alfa… gas       std        two         
#>  2         3               NA alfa… gas       std        two         
#>  3         1               NA alfa… gas       std        two         
#>  4         2              164 audi  gas       std        four        
#>  5         2              164 audi  gas       std        four        
#>  6         2               NA audi  gas       std        two         
#>  7         1              158 audi  gas       std        four        
#>  8         1               NA audi  gas       std        four        
#>  9         1              158 audi  gas       turbo      four        
#> 10         0               NA audi  gas       turbo      two         
#> # … with 195 more rows, and 20 more variables: body_style <chr>,
#> #   drive_wheels <chr>, engine_location <chr>, wheel_base <dbl>,
#> #   length <dbl>, width <dbl>, height <dbl>, curb_weight <int>,
#> #   engine_type <chr>, num_of_cylinders <chr>, engine_size <int>,
#> #   fuel_system <chr>, bore <dbl>, stroke <dbl>, compression_ratio <dbl>,
#> #   horsepower <int>, peak_rpm <int>, city_mpg <int>, highway_mpg <int>,
#> #   price <int>

ucidata()
#> Scraping datasets from: https://archive.ics.uci.edu/ml/datasets.html
#> # A tibble: 468 x 7
#>    name       type    task    variable_types   observations variables  year
#>    <chr>      <chr>   <chr>   <chr>                   <int>     <int> <int>
#>  1 Abalone    Multiv… Classi… Categorical, In…         4177         8  1995
#>  2 Adult      Multiv… Classi… Categorical, In…        48842        14  1996
#>  3 Annealing  Multiv… Classi… Categorical, In…          798        38    NA
#>  4 Anonymous… <NA>    Recomm… Categorical             37711       294  1998
#>  5 Arrhythmia Multiv… Classi… Categorical, In…          452       279  1998
#>  6 Artificia… Multiv… Classi… Categorical, In…         6000         7  1992
#>  7 Audiology… Multiv… Classi… Categorical               226        NA  1987
#>  8 Audiology… Multiv… Classi… Categorical               226        69  1992
#>  9 Auto MPG   Multiv… Regres… Categorical, Re…          398         8  1993
#> 10 Automobile Multiv… Regres… Categorical, In…          205        26  1987
#> # … with 458 more rows
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
etc., please file an issue or submit a pull request\!
