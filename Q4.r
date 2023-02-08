library(readxl)
library(tidyverse)
setwd("D:/Users/Igor Sobreira/Desktop/Work/Codes/R/.vscode")

dados <- read_excel("sp_beaches.xlsx") %>% filter(City == "ITANHAÉM") %>%
  group_by(Beach) %>%
  mutate(Enterococcus = as.numeric(Enterococcus))
print(ggplot(data = dados, aes(x = Enterococcus)) + 
  geom_histogram(binwidth = 100, fill = "blue", color = "black") +
  ggtitle("Histograma dos valores das amostras de Enterococcus") + 
  xlab("Valores") + 
  ylab("Frequência")
)