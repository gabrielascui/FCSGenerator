# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'


#' @export
FCSGenerator.run <- function()
{
    library("shiny") 
    library("shinyjs")
    library("ggcyto")
    library("flowCore")
    library("gtools")
    library("Biobase")

    appDir <- system.file("shinyApp", "app", package = "FCSGenerator")
    if (appDir == "")
    {
        stop("Could not find app directory. Try re-installing `FCSGenerator`.", call. = FALSE)
    }

    shiny::runApp(appDir, display.mode = "normal", launch.browser = T)
}
