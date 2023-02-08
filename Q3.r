library(readxl)
library(tidyverse)
setwd("D:/Users/Igor Sobreira/Desktop/Work/Codes/R/.vscode")

dados <- read_excel("sp_beaches.xlsx") %>% filter(City == "ITANHAÉM") %>%
  mutate(Enterococcus = as.numeric(Enterococcus))

dados_summarized <- dados %>%
  group_by(Beach) %>%
  summarise(total_entries = n())

dados_summarized$Beach <- factor(dados_summarized$Beach, levels = dados_summarized$Beach[order(dados_summarized$total_entries, decreasing = TRUE)])

print(ggplot(dados_summarized, aes(x = "", y = total_entries, fill = Beach)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y", start = 0) +
  labs(title = "Amostras de Enterococcus por praia de Itanhaém", fill = "") +
  geom_text(aes(label = paste0(total_entries, "\n(", round(100 * (total_entries / sum(total_entries)), 1), "%)")), 
            position = position_stack(vjust = 0.5)) +
  theme_void()
)