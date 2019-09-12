library(shiny)
library(shinyjs)
library(data.table)
library(DT)


shinyServer(function(input, output) {
    
    servicepara <- reactiveValues(
        Loggedinas = "ids-bill"
    )
    
    output$TopLower<-renderUI({
        div(
            tags$h6("Select/Create a class to get started.",
                    tags$i("For detailed steps, ",
                           "visit ", tags$a("wiki", href ="https://wiki.idsucla.org", target="_blank") 
                    )
            )
        )
    })
    
    output$TopRight<-renderUI({
        div(style="font-size:8px",
            
                
            tags$h6(tags$i(class="fa fa-user"), "Logged in as ", servicepara$Loggedinas ),
            "First Name:", "Bill", tags$br(),
            "Last Name:", "Gates", tags$br()
        )
    })
    
})
