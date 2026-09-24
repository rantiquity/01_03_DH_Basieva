# загружаем нужные пакеты
library(languageR)
library(ggplot2)

# загружаем датасет
meta <- oldFrenchMeta

# допишите ваш код ниже
# постройте в ggplot столбиковую диаграмму (_bar), 
# показывающую распределение произведений по темам; цветом-заливкой закодируйте жанр; 
g <- meta |> 
  ggplot(aes(x = Topic, fill = Genre)) +
  geom_bar() +
  labs(x = NULL, y = NULL, title = "Old French Data") +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1)) +
  theme_bw()

# !!!! сохраните график как объект в окружении под именем g
# !!!!вызов class(g) должен возвращать "gg"     "ggplot"
class(g)
