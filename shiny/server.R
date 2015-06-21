
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$fNumResponse <- renderText({
    
    retValue <- ""
    fNum <- as.numeric(input$fNum)
    
    if(fNum >= 5.6) {
      retValue <- paste(
                    retValue, 
                    "Your will gain depth of field but you will need more light
                     in your scene.")
    } else {
      retValue <- paste(
                    retValue,
                    "You do not need a lot of light but you are losing depth 
                     of field.")
    }
    
    retValue

  })
  
  output$shutterResponse <- renderText({
    
    retValue <- ""
    shutter <- as.numeric(input$shutter)
    
    if(shutter < 60) {
      retValue <- paste(
        retValue, 
        "You need to mantain the camera as stable as possible. 
         Tripod use is recommended. But your scene could be a dark one.")
    } else {
      retValue <- paste(
        retValue,
        "You are going to capture fast moving objects but the scene needs
         a lot of light.")
    }
    
    retValue
    
  })
  
  output$isoResponse <- renderText({
    
    retValue <- ""
    iso <- as.numeric(input$iso)
    
    if(iso > 400) {
      retValue <- paste(
        retValue, 
        "You do not need a lot of light but the grained picture will be the result.")
    } else {
      retValue <- paste(
        retValue,
        "You need light!")
    }
    
    retValue
    
  })

})
