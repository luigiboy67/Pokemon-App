# Source the files
source("packages.R")
source("plots.R")

# shiny app
ui <- shinyUI(dashboardPage( title = "Pokemon App",
  dashboardHeader(title = "Pokemon App"),
  dashboardSidebar(disable = TRUE),
  dashboardBody(tabsetPanel(
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
             plotOutput("types", height = 700))
  ))
)
)