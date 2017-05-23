library(shiny)
library(datasets)

shinyServer(function(input,output){
     output$boxplot <- renderPlot({
          x<-summary(iris[,as.numeric(input$var)])
          boxplot(x,main=names(iris[as.numeric(input$var)]))
     })
     output$sum <- renderPrint({
          summary(iris[,as.numeric(input$var)])
     })
}
)
