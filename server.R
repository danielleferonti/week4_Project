#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#



library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  TempData <- read.csv("Avg_temp.csv")
  
 
 ##  output$datatable <- reactive({
     
##  })
  output$datatable <- renderTable({
    TempData <- 
      TempData[TempData$Season %in% input$seasons1,]
    return(TempData)
  })
  
})
