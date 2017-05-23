shinyUI(fluidPage(
  titlePanel("Shiny App"),
    sidebarLayout(
      sidebarPanel(
          selectInput("var",label="Variable to display",
            choice=c("Sepal.Length"=1,"Sepal.Width"=2,"Petal.Length"=3,"Petal.Width"=4), selectize=FALSE)),
      mainPanel(
          h3("Visualisation of variable"),
          plotOutput("boxplot"),
          verbatimTextOutput("sum"),
          h3(""),
          h3("Documentation"),
          "To use this Shiny App you choose the variable you want to display information about in the drop down menu to the left in this page.", br(),
          "After this the iris dataset is filtered based on your selection. A boxplot is rendered as well as summary statistics on the variable", br(),
          "If you would like to see information on one of the other variables, just choose again in the drop down menu and the necessary calculations are done for you - fancy right ;-)"
     )))
)