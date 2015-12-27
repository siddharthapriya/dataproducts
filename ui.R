shinyUI(
  pageWithSidebar(
    
    #Poission distribution plot for various number of variables and lambda
    headerPanel("Poission Distribution curve with different random samples and mean value"),
    
    sidebarPanel(
      
      #Number of samples
      sliderInput('sampl', 'Number of Samples',value = 500, min = 100, max = 5000, step = 100),
      
      #Mean value
      numericInput('mu', 'Select the mean',value = 5, min = 5, max = 55, step = 10),
      
      submitButton('Submit')
      
      ),
    
    mainPanel(
      plotOutput('newGraph')
    )
  )
)