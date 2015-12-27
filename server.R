library(UsingR)

shinyServer(
  function(input, output) {
    
    output$newGraph <- renderPlot({
      
      plot(table(rpois(input$sampl, input$mu)), type = "h", col = "red", lwd = 5, 
           main = "Poission's Distribution", xlab = "Values", ylab = "Number of occurances")
    })
    
    
  }
)