
library(ggplot2)

advertising <- read.csv("Advertising.csv")
ui <- fluidPage(
  selectInput(inputId = "media", label = "Media",
              choices = c(TV = "TV", Newspaper = "Newspaper", Radio = "Radio" )),
  plotOutput("data")
)

server <- function(input, output) {
  output$data <- renderPlot({
    advData <- data.frame(Sales = advertising$Sales, var = advertising[[input$media]])
    ggplot(advData, aes(var,Sales)) +
      geom_point(shape = 1) +
      xlab(input$media) 
  })
}
shinyApp(ui, server)
