source("packages.R")
source("plots.R")
ui <- shinyUI(dashboardPage( title = "Pokemon App",
  dashboardHeader(title = "Pokemon App"),
  dashboardSidebar(disable = TRUE),
  dashboardBody()
)
)