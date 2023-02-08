library(readxl)
library(tidyverse)
setwd("D:/Users/Igor Sobreira/Desktop/Work/Codes/R/.vscode")

dados = read_excel('sp_beaches.xlsx') %>% filter(City == "ITANHAÉM") %>%
  mutate(Enterococcus = as.numeric(Enterococcus)) %>% 
  group_by(Beach) %>% 
  summarise(media = mean(Enterococcus),
        desvioPadrao = sd(Enterococcus),
        minimo = min(Enterococcus),
        maximo = max(Enterococcus),
        mediana = median(Enterococcus),
        Q1 = quantile(Enterococcus, 0.25),
        Q3 = quantile(Enterococcus, 0.75)
)
print(str(dados))