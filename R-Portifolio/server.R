library(shiny)
library(shinydashboard)
library(knitr)
library(ggplot2)
library(plotly)
library(lubridate)
library(dplyr)

shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
  
  #Introdução
  output$tab_Aluno <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Intro_Aluno.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_Links <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Intro_Links.Rmd', quiet = TRUE), encoding = "utf-8"))})
  #Básico de R
  output$tab_DeclVar <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Basico_DeclVar.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_ScriptingBasico <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Basico_ScriptingBasico.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_OutrasFuncoesUteis <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Basico_OutrasFuncoesUteis.Rmd', quiet = TRUE), encoding = "utf-8"))})
  #Vetores e Matrizes
  output$tab_Vetores <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/VetMat_Vetores.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_Matrizes <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/VetMat_Matrizes.Rmd', quiet = TRUE), encoding = "utf-8"))})
  #Lubridate
  output$tab_Lubridate <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Datas_Lubridate.Rmd', quiet = TRUE), encoding = "utf-8"))})
  #Dataframe
  output$tab_DfBasico <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Df_Basico.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_DfPipe <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Df_Pipe.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_DfMutate <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Df_Mutate.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_DfDPLYR <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Df_DPLYR.Rmd', quiet = TRUE), encoding = "utf-8"))})
  #Plot
  output$tab_Plot <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Plot_Plot.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_Boxplot <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Plot_Boxplot.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_rnorm <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Plot_rnorm.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_SenosCossenos <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Plot_SenosCossenos.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_kmedias <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Plot_kmedias.Rmd', quiet = TRUE), encoding = "utf-8"))})
  #Outros
  output$tab_Amostra <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Outros_Amostra.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_funcoes <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Outros_funcoes.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_download <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Outros_download.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_mapacalor <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Outros_mapaCalor.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_distanciaHierarquia <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Outros_distanciaHierarquica.Rmd', quiet = TRUE), encoding = "utf-8"))})
  output$tab_reducaoDimen <- renderUI({HTML(markdown::markdownToHTML(knit('RMarkdowns/Outros_reducaoDimen.Rmd', quiet = TRUE), encoding = "utf-8"))})
  
  
  
})
