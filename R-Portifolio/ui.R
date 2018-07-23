library(shinydashboard)

# Sidebar
  sidebar <- dashboardSidebar(
    sidebarMenu(
      menuItem("Introdução", icon = icon("chevron-right"),
               menuItem("Aluno",tabName = "tab_Aluno", icon = icon("user")),
               menuItem("Links",tabName = "tab_Links", icon = icon("link"))
      ),
      menuItem("Básico de R", icon = icon("chevron-right"),
               menuItem("Declaração de Variáveis",tabName = "tab_DeclVar"),
               menuItem("Scripting Básico",tabName = "tab_ScriptingBasico"),
               menuItem("Outras funções úteis",tabName = "tab_OutrasFuncoesUteis")
      ),
      menuItem("Vetores e Matrizes", icon = icon("chevron-right"),
               menuItem("Vetores",tabName = "tab_Vetores"),
               menuItem("Matrizes",tabName = "tab_Matrizes")
      ),
      menuItem("Datas", icon = icon("chevron-right"),
               menuItem("Lubridate",tabName = "tab_Lubridate")
      ),
      menuItem("Dataframe", icon = icon("chevron-right"),
               menuItem("Básico",tabName = "tab_DfBasico"),
               menuItem("DPLYR",tabName = "tab_DfDPLYR"),
               menuItem("Pipe",tabName = "tab_DfPipe"),
               menuItem("Mutate",tabName = "tab_DfMutate")
      ),
      menuItem("Plot", icon = icon("chevron-right"),
               menuItem("Plot Básico",tabName = "tab_Plot"),
               menuItem("Boxplot",tabName = "tab_Boxplot"),
               menuItem("Senos e Cossenos",tabName = "tab_SenosCossenos"),
               menuItem("K-Médias",tabName = "tab_kmedias")
      ),
      menuItem("Outros", icon = icon("chevron-right"),
               menuItem("Amostra (Sample)",tabName = "tab_Amostra"),
               menuItem("Funções",tabName = "tab_funcoes"),
               menuItem("Download",tabName = "tab_download"),
               menuItem("Mapa de Calor",tabName = "tab_mapacalor"),
               menuItem("Distância e Hierarquia",tabName = "tab_distanciaHierarquia"),
               menuItem("Redução de Dimens.",tabName = "tab_reducaoDimen")
      )
    )
  )
  
  body <- dashboardBody(
    tabItems(
      #Introdução
      tabItem(tabName = "tab_Aluno", h2( uiOutput("tab_Aluno"))),
      tabItem(tabName = "tab_Links", h2( uiOutput("tab_Links"))),
      #Básico de R
      tabItem(tabName = "tab_DeclVar", h2( uiOutput("tab_DeclVar"))),
      tabItem(tabName = "tab_ScriptingBasico", h2( uiOutput("tab_ScriptingBasico"))),
      tabItem(tabName = "tab_OutrasFuncoesUteis", h2( uiOutput("tab_OutrasFuncoesUteis"))),
      #Vetores e Matrizes
      tabItem(tabName = "tab_Vetores", h2( uiOutput("tab_Vetores"))),
      tabItem(tabName = "tab_Matrizes", h2( uiOutput("tab_Matrizes"))),
      #Lubridate
      tabItem(tabName = "tab_Lubridate", h2( uiOutput("tab_Lubridate"))),
      #Dataframe
      tabItem(tabName = "tab_DfBasico", h2( uiOutput("tab_DfBasico"))),
      tabItem(tabName = "tab_DfPipe", h2( uiOutput("tab_DfPipe"))),
      tabItem(tabName = "tab_DfMutate", h2( uiOutput("tab_DfMutate"))),
      tabItem(tabName = "tab_DfDPLYR", h2( uiOutput("tab_DfDPLYR"))),
      #Plot
      tabItem(tabName = "tab_Plot", h2( uiOutput("tab_Plot"))),
      tabItem(tabName = "tab_Boxplot", h2( uiOutput("tab_Boxplot"))),
      tabItem(tabName = "tab_rnorm", h2( uiOutput("tab_rnorm"))),
      tabItem(tabName = "tab_SenosCossenos", h2( uiOutput("tab_SenosCossenos"))),
      tabItem(tabName = "tab_kmedias", h2( uiOutput("tab_kmedias"))),
      #Outros
      tabItem(tabName = "tab_Amostra", h2( uiOutput("tab_Amostra"))),
      tabItem(tabName = "tab_funcoes", h2( uiOutput("tab_funcoes"))),
      tabItem(tabName = "tab_download", h2( uiOutput("tab_download"))),
      tabItem(tabName = "tab_mapacalor", h2( uiOutput("tab_mapacalor"))),
      tabItem(tabName = "tab_distanciaHierarquia", h2( uiOutput("tab_distanciaHierarquia"))),
      tabItem(tabName = "tab_reducaoDimen", h2( uiOutput("tab_reducaoDimen")))
    )
  )
  
  # Monta a página
  dashboardPage(
    skin = "red",
    dashboardHeader(title = "Portifolio do Aluno"),
    sidebar,
    body
  )
