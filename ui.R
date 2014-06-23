shinyUI(pageWithSidebar(
    headerPanel("Example plot"),
    sidebarPanel(
        sliderInput('type', 'Choose Transmission type:- 0 = automatic, 1 = manual',value = 0, min = 0, max = 1, step = 1),
        radioButtons("color", label = h3("Color"),
                     choices = list("Red" = "red",
                                    "Blue" = "blue",
                                    "Green" = "green")
                     ,selected = "red")
    ),
    
    mainPanel(
        plotOutput('myBoxplot')
    )
))