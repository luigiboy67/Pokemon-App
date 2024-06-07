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
    output$gen1 <- renderPlot(gen1plot)
    output$gen2 <- renderPlot(gen2plot)
    output$gen3 <- renderPlot(gen3plot)
    output$gen4 <- renderPlot(gen4plot)
    output$gen5 <- renderPlot(gen5plot)
    output$gen6 <- renderPlot(gen6plot)
    output$gen7 <- renderPlot(gen7plot)
    output$gen8 <- renderPlot(gen8plot)
    output$gen9 <- renderPlot(gen9plot)
  }
)