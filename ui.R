library(shiny)
library(shinyjs)
library(data.table)
library(DT)

shinyUI(fluidPage(
    useShinyjs(),
    tags$link(rel="stylesheet", href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"),
    fluidRow(
        column(4, 
           titlePanel("Class Setup Tool")
        ),
        column(4, 
               uiOutput("TopMiddle")
        ),
        column(4, 
               uiOutput("TopRight")
        ),
        column(12, 
               uiOutput("TopLower")
        )
    ),
    tags$hr(),
    tags$h3("Class Setup Tool")
))
