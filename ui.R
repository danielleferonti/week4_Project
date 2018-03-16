
library(shiny)
TempData <- read.csv("C:/R Training/R Training/RWorkingDir-DMF/CourseRA/Course9/Week4/Avg_temp.csv")
SeasonChoices <- sort(unique(as.character(TempData$Season)))

##The data was downloaded from the below site, and I appended seasons to each month.  The csv with the data is included in the repository.
#Site: http://www.rssweather.com/climate/Ohio/Columbus/

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("Ohio Temps by Season"),
  sidebarLayout(
    sidebarPanel(
      h3("Seasons"),
      checkboxGroupInput("seasons1", "Select Seasons", 
                         choices = SeasonChoices, selected = SeasonChoices),
      submitButton("Submit")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h3("Temp Data (F)"),
      tableOutput("datatable")
    )
  )
))
