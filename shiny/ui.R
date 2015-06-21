
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Photo f-number, shutter and ISO app"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      helpText("You can choose differente measures from a SLR camera and the 
                app is going to tell you how your picture will be changed."),
      selectInput("fNum", "f-number:",
                  c("1.8" = 1.8,
                    "2" = 2,
                    "2.8" = 2.8,
                    "4" = 4,
                    "5.6" = 5.6,
                    "8" = 8,
                    "11" = 11,
                    "16" = 16,
                    "22" = 22)),
      selectInput("shutter", "Shutter:",
                  c("1/1000" = 1000,
                    "1/500" = 500,
                    "1/250" = 250,
                    "1/125" = 125,
                    "1/60" = 60,
                    "1/30" = 30,
                    "1/15" = 15,
                    "1/8" = 8,
                    "1/4" = 4,
                    "1/2" = 2)),
      selectInput("iso", "ISO:",
                  c("100" = 100,
                    "200" = 200,
                    "400" = 400,
                    "800" = 800))
    ),

    # Show a plot of the generated distribution
    mainPanel(
      textOutput("fNumResponse"),
      textOutput("shutterResponse"),
      textOutput("isoResponse")
    )
  )
))
