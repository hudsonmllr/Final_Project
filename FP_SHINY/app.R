library(shiny)

ui <- navbarPage(
    "Final Project Title",
    tabPanel("Armed Forces Demographics", plotOutput("First_Graph")),
    tabPanel("College Demographics"),
    tabPanel("About", 
             h2("About the Project"),
             p("The purpose of this project is to compare and analyze the difference in
               racial and gender diversity between the United States Armed Forces and
               US colleges and universities. The military has become more racial diverse
               in last few decades but despite this trend towards diversity, there has
               not been a surge of females to the armed forces. Likewise, US colleges
               and universities have seen higher numbers of women enroll but they still
               lack racial diversity."),
             h2("Methodology"),
             p("This project will use college enrollment data gathered from National 
               Center for Education Statistics and military demographic statistics
               gathered by the Office of the Under Secretary of Defense for Personnel
               and Readiness and published in the Fiscal Year 2017 Population Representation
               in the Military Service. In order to compare the new fields, I will
               first display the racial and gender breakdowns for each field. I will then
               see if those racial or gender statistics can be explained by where the
               majority of applicants for the military or college are located."),
             h2("About Me"),
             p("My name is Hudson Miller and I am pursuing a degree in Economics at
             Harvard College 
             You can reach me at Hudsonmiller@college.harvard.edu.")))

server <- function(input, output) {
    output$First_Graph <- renderImage({
        filename <- normalizePath(paste('Graphic_1', input$n, '.png', sep= ''))
        list(src = filename,
             width = 1000,
             height = 1000,
             alt = paste("Image number", input$n))
    }, deleteFile = FALSE)
}

shinyApp(ui = ui, server = server)
