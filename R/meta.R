#' Meta
#'
#' This dataset is about the results of Statlog project. The project performed
#' a comparative study between Statistical, Neural and Symbolic learning
#' algorithms. Project StatLog (Esprit Project 5170) was concerned with
#' comparative studies of different machine learning, neural and statistical
#' classification algorithms. About 20 different algorithms were evaluated on
#' more than 20 different datasets. The tests carried out under project produced
#' many interesting results.
#'
#' @format A data frame with 528 observations on the following 22 variables.
#' \enumerate{
#'   \item DS_Name
#'   \item T
#'   \item N
#'   \item p
#'   \item k
#'   \item Bin
#'   \item Cost
#'   \item SDratio
#'   \item correl
#'   \item cancor1
#'   \item cancor2
#'   \item fract1
#'   \item fract2
#'   \item skewness
#'   \item kurtosis
#'   \item Hc
#'   \item Hx
#'   \item MCx
#'   \item EnAtr
#'   \item NSRatio
#'   \item Alg_Name
#'   \item Norm_error
#' }
#'
#' @details
#' Meta-Data was used in order to give advice about which classification method
#' is appropriate for a particular dataset (taken from results of Statlog
#' project).
#'
#' @references
#' \itemize{
#'   \item "Machine Learning, Neural and Statistical Learning"
#'   Eds. D.Michie,D.J.Spiegelhalter and C.Taylor
#'   Ellis Horwood-1994
#'
#'   \item "Characterizing the Applicability of
#'   	Classification Algorithms Using Meta-Level Learning",
#'   P. Brazdil, J.Gama and B.Henery:
#'     in Proc. of Machine Learning - ECML-94,
#'   ed. F.Bergadano and L.de Raedt,LNAI Vol.784 Springer-Verlag.
#'
#'   \item "Characterization of Classification Algorithms"
#'   J.Gama, P.Brazdil
#'   in Proc. of EPIA 95, LNAI Vol.990
#'   Springer-Verlag, 1995
#' }
#'
#' https://archive.ics.uci.edu/ml/machine-learning-databases/meta-data/
#'
#' https://archive.ics.uci.edu/ml/datasets/Meta-data
#'
#' @source
#' \enumerate{
#'   \item Creator: LIACC - University of Porto R.Campo Alegre 823 4150 PORTO
#'   \item Donor: P.B.Brazdil or J.Gama	Tel.: +351 600 1672 LIACC,
#'   University of Porto Fax.: +351 600 3654 Rua Campo Alegre 823
#'   Email: statlog-adm@ncc.up.pt 4150 Porto, Portugal
#'   \item Date: March, 1996
#' }
#'
#' Acknowlegements:
#' LIACC wishes to thank Commission of European Communities
#' for their support. Also, we wish to thank the following partners
#' for providing the individual test results:
#'
#' \itemize{
#'   \item Dept. of Statistics, University of Strathclyde, Glasgow, UK
#'   \item Dept. of Statistics, University of Leeds, UK
#'   \item Aston University, Birmingham, UK
#'   \item Forschungszentrum Ulm, Daimler-Benz AG, Germany
#'   \item Brainware GmbH, Berlin, Germany
#'   \item Frauenhofer Gesellschaft IITB-EPO, Berlin, Germany
#'   \item Institut fuer Kybernetik, Bochum, Germany
#'   \item ISoft, Gif sur Yvette, France
#'   \item Dept. of CS and AI, University of Granada, Spain
#' }
"meta"
