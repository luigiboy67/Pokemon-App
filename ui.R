# Source the files
source("packages.R")
source("plots.R")

# shiny app
ui <- shinyUI(dashboardPage( title = "Pokemon App",
  dashboardHeader(title = "Pokemon App"),
  dashboardSidebar(disable = TRUE),
  dashboardBody(tabsetPanel(
    tabPanel(title = "Team Rocket"),
    tabPanel(title =  "Gameboy"),
    tabPanel(title =  "Gameboy Advance"),
    tabPanel(title =  "Status/HP Bar"),
    tabPanel(title =  "Team Mystic"),
    tabPanel(title =  "Team Valor"),
    tabPanel(title =  "Team Instinct"),
    tabPanel(title =  "Pokemon Grid"),
    tabPanel(title =  "Effective Table"),
    tabPanel(title =  "Pokemon Types")
  ))
)
)