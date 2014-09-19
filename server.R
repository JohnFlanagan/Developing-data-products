happinessfnc <- function(id1, id2, id3) {
        id2 <- as.numeric(id2)
        round(id1^3 * id2^6 * id3^2 * runif(1, 999,1011),0)
}

shinyServer(
        function(input, output) {
                output$happyvalue <- renderPrint({input$id1})
                output$odate <- renderPrint({input$date})
                output$happyscore <- renderPrint({happinessfnc(input$id1, input$id2, input$id3)})
        }
)