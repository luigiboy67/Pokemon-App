# Source the files
source("packages.R")
source("plots.R")

# shiny app
ui <- shinyUI(dashboardPage( title = "Pokemon App",
  dashboardHeader(title = "Pokemon App"),
  dashboardSidebar(disable = TRUE),
  dashboardBody(tabsetPanel(
    tabPanel(title = "Team Rocket", 
             plotOutput("rocket")),
    tabPanel(title =  "Gameboy", 
             plotOutput("gameboy")),
    tabPanel(title =  "Gameboy Advance", 
             plotOutput("advance")),
    tabPanel(title =  "Status/HP Bar", 
             plotOutput("hpbar")),
    tabPanel(title =  "Team Mystic", 
             plotOutput("mystic")),
    tabPanel(title =  "Team Valor", 
             plotOutput("valor")),
    tabPanel(title =  "Team Instinct", 
             plotOutput("instinct")),
    tabPanel(title =  "Pokemon Grid", 
             plotOutput("grids")),
    tabPanel(title =  "Effective Table", 
             plotOutput("effectiveness")),
    tabPanel(title =  "Pokemon Types", 
             plotOutput("types"))
  ))
)
)