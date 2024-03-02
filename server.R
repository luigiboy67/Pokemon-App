# sources the files
source("packages.R")
source("plots.R")

# the shiny server
server <- shinyServer(
  function(input, output, session) {
    output$rocket <- renderPlot(theme_rocket)
    output$gameboy <- renderPlot(gameboy_theme)
    output$advance <- renderPlot(gameboy_advance_theme)
    output$hpbar <- renderPlot(pokemon_gghealth)
    output$mystic <- renderPlot(p1)
    output$valor <- renderPlot(p2)
    output$instinct <- renderPlot(p3)
    output$grids <- renderPlot(legrid)
    output$effectiveness <- renderPlot(effectiveness)
    output$types <- renderPlot(pokemon_types)
  }
)