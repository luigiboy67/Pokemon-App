# Source the files
source("packages.R")
source("plots.R")

# shiny app
ui <- shinyUI(
  
  navbarPage("Pokemon App",
             tabPanel("Example Page",
                      mainPanel(
                        width = 12,  
                        tabsetPanel(
                          tabPanel(title = "Team Rocket",
                                 plotOutput("rocket", height = 700)),
                          tabPanel(title =  "Gameboy",
                                 plotOutput("gameboy", height = 700)),
                          tabPanel(title =  "Gameboy Advance",
                                 plotOutput("advance", height = 700)),
                          tabPanel(title =  "Status/HP Bar",
                                 plotOutput("hpbar", height = 700)),
                          tabPanel(title =  "Team Mystic",
                                 plotOutput("mystic", height = 700)),
                          tabPanel(title =  "Team Valor",
                                 plotOutput("valor", height = 700)),
                          tabPanel(title =  "Team Instinct",
                                 plotOutput("instinct", height = 700)),
                          tabPanel(title =  "Pokemon Grid",
                                 plotOutput("grids", height = 700)),
                          tabPanel(title =  "Effective Table",
                                 plotOutput("effectiveness", height = 700)),
                          tabPanel(title =  "Pokemon Types",
                                 plotOutput("types", height = 700)))
                        )
             ),
             tabPanel("Generation Page",
                      mainPanel(
                        width = 12,
                        tabsetPanel(
                          tabPanel(
                            title = "Generation 1",
                            plotOutput("gen1", height = 700)
                          ),
                          tabPanel(
                            title = "Generation 2",
                            plotOutput("gen2", height = 700)
                          ),
                          tabPanel(
                            title = "Generation 3",
                            plotOutput("gen3", height = 700)
                          ),
                          tabPanel(
                            title = "Generation 4",
                            plotOutput("gen4", height = 700)
                          ),
                          tabPanel(
                            title = "Generation 5",
                            plotOutput("gen5", height = 700)
                          ),
                          tabPanel(
                            title = "Generation 6",
                            plotOutput("gen6", height = 700)
                          ),
                          tabPanel(
                            title = "Generation 7",
                            plotOutput("gen7", height = 700)
                          ),
                          tabPanel(
                            title = "Generation 8",
                            plotOutput("gen8", height = 700)
                          ),
                          tabPanel(
                            title = "Generation 9",
                            plotOutput("gen9", height = 700)
                          )
                        )
                      ))
             )
  )