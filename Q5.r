library(readxl)
library(tidyverse)
setwd("D:/Users/Igor Sobreira/Desktop/Work/Codes/R/.vscode")

dados <- read_excel("sp_beaches.xlsx") %>% filter(City == "ITANHAÉM") %>%
  group_by(Beach) %>%
  mutate(Enterococcus = as.numeric(Enterococcus))

print(ggplot(data = dados, aes(x = Beach, y = Enterococcus, fill = Beach)) +
  theme_minimal() +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
)