#' ---
#' Filename: clean_sample_file.R
#' Author: XYZ
#' Date: 26-Aug-2017
#' 
#' Intent: Clean file from ABC organization
#'   * Trim whitespaces for character columns
#'   * Standardize representation of missing data 
#'   * Convert ZZ variable to factors with three levels: low income, middle income, high income
#' 
#' Input: ../data/xxx.csv
#' 
#' Output: ../data/xxx_cleaned.csv
#'   * Trimmed whitespaces for character columns
#'   * NA, NIL, empty strings, only whitespaces, NULL --> converted to NA
#'   * Converted ZZ variable to factors with three levels: 
#'     - 1: low income, 2: middle income, 3: high income
#' 
#' R Version (obtained from devtools::session_info()):
#' 
#' Dependencies: 
# base      * 3.4.0   2017-04-21 local         
# compiler    3.4.0   2017-04-21 local         
# datasets  * 3.4.0   2017-04-21 local         
# devtools    1.13.2  2017-06-02 CRAN (R 3.3.3)
# digest      0.6.12  2017-01-27 CRAN (R 3.3.2)
# graphics  * 3.4.0   2017-04-21 local         
# grDevices * 3.4.0   2017-04-21 local         
# memoise     1.1.0   2017-04-21 CRAN (R 3.3.3)
# methods   * 3.4.0   2017-04-21 local         
# stats     * 3.4.0   2017-04-21 local         
# tools       3.4.0   2017-04-21 local         
# utils     * 3.4.0   2017-04-21 local         
# withr       1.0.2   2016-06-20 CRAN (R 3.3.1)
#'
#' Sample Usage: 
#'   * make sure you're in the scripts folder
#'   * click "Source"
#'   * output is found in ../data folder
#'---