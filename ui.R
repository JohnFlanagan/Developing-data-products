library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Happiness indicator"),
        sidebarPanel(
                numericInput('id1', 'On a scale of 1 - 10, how happy do you feel today?', 
                             0, min = 0, max = 10, step = 1),
                numericInput('id3', 'What is your yearly disposable income?', 
                             0, min = 0, max = 100000, step = 1),
                radioButtons("id2", "Is/was the sun shining today?",
                                   c("Not a lot" = "1",
                                     "A little" = "2",
                                     "From dawn to dusk!" = "3")),
                dateInput("date", "Date:")  
        ),
        mainPanel(
                h3('How happy are you today'),
                h4('You said that on a scale of 1 - 10, you felt happiness on a scale of'),
                verbatimTextOutput("happyvalue"),
                h4('today, the'),
                verbatimTextOutput("odate"),
                h4('Based on this (and on the smile on your face!), 
                   your happiness score for today is'),
                verbatimTextOutput("happyscore")
        )
))
