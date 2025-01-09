

# Quelle:
# https://plotly.com/ggplot2/treemaps/


library(plotly)
library(treemapify)
library(ggplot2)
library(dplyr)


ggplot(G20, aes(area = gdp_mil_usd, fill = hdi)) +
  geom_treemap()

kldjflksjdf

p <- ggplot(G20, aes(area = gdp_mil_usd, fill = hdi, label = country)) +
  geom_treemap() +
  geom_treemap_text(fontface = "italic", colour = "white", place = "centre",
                    grow = TRUE)


library(plotly)
library(treemapify)
library(ggplot2)

p <- ggplot(G20, aes(area = gdp_mil_usd, fill = hdi, label = country,
                     subgroup = region)) +
  geom_treemap() +
  geom_treemap_subgroup_border() +
  geom_treemap_subgroup_text(place = "centre", grow = T, alpha = 0.5, colour =
                               "black", fontface = "italic", min.size = 0) +
  geom_treemap_text(colour = "white", place = "topleft", reflow = T)




library(plotly)
library(treemapify)
library(ggplot2)

p_dat <- G20

p <- ggplot(G20, aes(area = 1, label = country, subgroup = hemisphere,
                     subgroup2 = region, subgroup3 = econ_classification)) +
  geom_treemap() +
  geom_treemap_subgroup3_border(colour = "blue", size = 1) +
  geom_treemap_subgroup2_border(colour = "white", size = 3) +
  geom_treemap_subgroup_border(colour = "red", size = 5) +
  geom_treemap_subgroup_text(
    place = "middle",
    colour = "red",
    alpha = 0.5,
    grow = T
  ) +
  geom_treemap_subgroup2_text(
    colour = "white",
    alpha = 0.5,
    fontface = "italic"
  ) +
  geom_treemap_subgroup3_text(place = "top", colour = "blue", alpha = 0.5) +
  geom_treemap_text(colour = "white", place = "middle", reflow = T)

p


ggplot2::ggplot(G20, ggplot2::aes(area = gdp_mil_usd, fill = region)) +
  geom_treemap()



df_aus_tree <- df_aus_subst %>%
  filter(!is.na(Hauptgruppe)) %>%
  group_by(Hauptgruppe, Untergruppe, Substanzname) %>%
  summarize(n = n_distinct(TUMOR))


tree1 <- 
 ggplot(df_aus_tree, 
    aes(area = n, subgroup = Hauptgruppe, subgroup2 = Untergruppe)) +
 geom_treemap() +
 geom_treemap_subgroup2_border(colour = "white", size = 3) +
 geom_treemap_subgroup_border(colour = "red", size = 5) +
 geom_treemap_subgroup_text(
     place = "middle",
     colour = "red",
     alpha = 0.5,
     grow = T) +
 geom_treemap_subgroup2_text(
  colour = "white",
  alpha = 0.5,
  grow = T) 

tree1

tree1_color <- tree1 + 
  fct_theme.kkn() +
  geom_treemap_subgroup2_text(
    colour = KKN_palette1[[1]],
    alpha = 0.5,
    grow = T) 

tree1_color


tree2 <- ggplot(df_aus_tree, 
                aes(area = n, subgroup = Untergruppe, subgroup2 = Substanzname, fill = Untergruppe)) +
  geom_treemap() +
  geom_treemap_subgroup2_border(colour = "white", size = 3) +
  geom_treemap_subgroup_border(colour = "red", size = 5) +
  geom_treemap_subgroup_text(
    place = "middle",
    colour = "red",
    alpha = 0.5,
    grow = T) +
  geom_treemap_subgroup2_text(
    colour = "white",
    alpha = 0.5,
    grow = T) 

tree2




tree3 <- ggplot(df_aus_tree, 
                aes(area = n, subgroup = Substanzname)) +
  geom_treemap() +
  geom_treemap_subgroup_border(colour = "white", size = 3) +
  geom_treemap_subgroup_text(
    place = "middle",
    colour = "white",
    alpha = 0.5,
    grow = T)

tree3




ggplot2::ggplot(G20, ggplot2::aes(area = gdp_mil_usd, fill = region)) +
  geom_treemap()


ggplot2::ggplot(df_aus_tree, ggplot2::aes(area = n, subgroup = Untergruppe, subgroup2= Substanzname, fill = Substanzname)) +
  geom_treemap() +
  geom_treemap_subgroup_border(colour = "white", size = 3) + 
  geom_treemap_subgroup_text(
    place = "middle",
    colour = "white",
    alpha = 0.5,
    grow = TRUE) +
  geom_treemap_subgroup2_text(
    colour = "black",
    min.size = 5,
    alpha = 1,
    grow = TRUE) 
  




df_aus_tree2 <- df_aus_subst %>%
  filter(!is.na(Hauptgruppe)) %>%
  group_by(Hauptgruppe, Untergruppe) %>%
  summarize(n = n_distinct(TUMOR))

ggplot2::ggplot(df_aus_tree2, ggplot2::aes(area = n, subgroup = Hauptgruppe, subgroup2= Untergruppe, fill = Hauptgruppe)) +
  geom_treemap() +
  geom_treemap_subgroup_border(colour = "white", size = 3) + 
  geom_treemap_subgroup_text(
    place = "middle",
    colour = "Black",
    alpha = 0.5,
    grow = TRUE) +
  geom_treemap_subgroup2_text(
    colour = "lightgrey",
    min.size = 5,
    alpha = 1,
    grow = TRUE) +
  theme_void()



class(G20)
class(df_aus_tree)

show.legend = FALSE


# +
#   geom_treemap() +
#   geom_treemap_subgroup3_border(colour = "blue", size = 1) +
#   geom_treemap_subgroup2_border(colour = "white", size = 3) +
#   geom_treemap_subgroup_border(colour = "red", size = 5) +
#   geom_treemap_subgroup_text(
#     place = "middle",
#     colour = "red",
#     alpha = 0.5,
#     grow = T
#   ) +
#   geom_treemap_subgroup2_text(
#     colour = "white",
#     alpha = 0.5,
#     fontface = "italic"
#   ) +
#   geom_treemap_subgroup3_text(place = "top", colour = "blue", alpha = 0.5) +
#   geom_treemap_text(colour = "white", place = "middle", reflow = T)
# 
# p
