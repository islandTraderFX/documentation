library(plotly)

p <- plotly(username='theengineear', key='o9zlr0hy6z')

trace1 <- list(
  x = c(1, 2, 3), 
  y = c(4, 5, 6), 
  name = "yaxis1 data", 
  type = "scatter"
)
trace2 <- list(
  x = c(2, 3, 4), 
  y = c(40, 50, 60), 
  name = "yaxis2 data", 
  yaxis = "y2", 
  type = "scatter"
)
trace3 <- list(
  x = c(3, 4, 5), 
  y = c(400, 500, 600), 
  name = "yaxis3 data", 
  yaxis = "y3", 
  type = "scatter"
)
trace4 <- list(
  x = c(4, 5, 6), 
  y = c(40000, 50000, 60000), 
  name = "yaxis4 data", 
  yaxis = "y4", 
  type = "scatter"
)
trace5 <- list(
  x = c(5, 6, 7), 
  y = c(400000, 500000, 600000), 
  name = "yaxis5 data", 
  yaxis = "y5", 
  type = "scatter"
)
trace6 <- list(
  x = c(6, 7, 8), 
  y = c(4000000, 5000000, 6000000), 
  name = "yaxis6 data", 
  yaxis = "y6", 
  type = "scatter"
)
data <- list(trace1, trace2, trace3, trace4, trace5, trace6)
layout <- list(
  title = "multiple y-axes example", 
  xaxis = list(domain = c(0.3, 0.7)), 
  yaxis = list(
    title = "yaxis title", 
    titlefont = list(color = "#1f77b4"), 
    tickfont = list(color = "#1f77b4")
  ), 
  width = 800, 
  yaxis2 = list(
    title = "yaxis2 title", 
    titlefont = list(color = "#ff7f0e"), 
    tickfont = list(color = "#ff7f0e"), 
    position = 0.15, 
    anchor = "free", 
    side = "left", 
    overlaying = "y"
  ), 
  yaxis3 = list(
    title = "yaxis3 title", 
    titlefont = list(color = "#2ca02c"), 
    tickfont = list(color = "#2ca02c"), 
    position = 0, 
    anchor = "free", 
    side = "left", 
    overlaying = "y"
  ), 
  yaxis4 = list(
    title = "yaxis4 title", 
    titlefont = list(color = "#d62728"), 
    tickfont = list(color = "#d62728"), 
    anchor = "x", 
    side = "right", 
    overlaying = "y"
  ), 
  yaxis5 = list(
    title = "yaxis5 title", 
    titlefont = list(color = "#9467bd"), 
    tickfont = list(color = "#9467bd"), 
    position = 0.85, 
    anchor = "free", 
    side = "right", 
    overlaying = "y"
  ), 
  yaxis6 = list(
    title = "yaxis6 title", 
    titlefont = list(color = "#8c564b"), 
    tickfont = list(color = "#8c564b"), 
    position = 1.0, 
    anchor = "free", 
    side = "right", 
    overlaying = "y"
  )
)

response <- p$plotly(data, kwargs=list(layout=layout, filename="multiple-axes-multiple", fileopt="overwrite", auto_open="FALSE"))
url <- response$url
filename <- response$filename