library(ggplot2)
library(showtext)

font_add_google("Roboto Slab", "roboslab")
# Requires that Roboto fonts already installed to machine and registered
# Fancy font for titles and stuff
font_add("Playfair Display", "playfairdisplay-variablefont_wght.ttf")
#monospace font
font_add_google("Fira Code", "fira")
font_add("Fira Code", "firacode-variablefont_wght.ttf")


showtext_auto()

ftm_orange <- "#F15D22"
ftm_blue <- "#3F8D95"
color_bg <- "#f1f1f1"

# My own ggplot2 theme
theme_ftm <- function(modern = TRUE, fill_gray = TRUE){
  if (modern == TRUE) {
    custom_font <- c("roboslab") 
  } else {
    custom_font <- c("Playfair Display")
  }
  ggplot2::theme_minimal(
    base_size = 18,
    base_family = custom_font) +
    ggplot2::theme(
      plot.background = element_rect(
        fill = if_else(fill_gray == TRUE, color_bg, "white"),
        color = color_bg),
      plot.margin = margin(t = 5, r = 5, b = 5, l = 5, unit = "pt"),
      panel.grid = element_line(color = "#f7f7f7"),
      panel.spacing = unit(2, "lines"),
      panel.border = element_blank(),
      axis.line = element_blank(),
      axis.ticks = element_blank(),
      axis.title.y = element_text(
        hjust = 0.5,
        margin = margin(t = 0, r = 10, b = 0, l = 0, unit = "pt")),
      axis.title.x = element_text(
        hjust = 0,
        margin = margin(t = 10, r = 0, b = 0, l = 0, unit = "pt")),
      legend.title.align = 0,
      legend.key.height = unit(x = 5, units = "mm"),
      legend.key.width = unit(x = 1, units = "cm"),
      legend.position = c(1, 0.5),
      legend.justification = c(1, 0.5)
    )
}

