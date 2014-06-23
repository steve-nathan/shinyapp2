library(UsingR)
data(mtcars)

shinyServer(
    function(input, output) {
        output$myBoxplot <- renderPlot({
            type <- input$type
            if (type == 0 ) { type1 = "automatic"}
            if (type == 1 ) { type1 = "manual"}
            color <- input$color
            xlab = paste("Transmission type ",type1)
            mtcars1 <- subset(mtcars,am == type)
            boxplot(mtcars1$mpg, ylab='Miles/(US) gallon', xlab=xlab, col='lightblue',main='mtcars - boxplot of MPG')
            meanmpg=mean(mtcars1$mpg)
            abline(h=mean(mtcars1$mpg),col=color, lty=3, lwd=5)
        })
        
    }
)