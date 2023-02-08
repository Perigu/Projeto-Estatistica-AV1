library(readxl)
library(tidyverse)
setwd("D:/Users/Igor Sobreira/Desktop/Work/Codes/R/.vscode")

dados <- read_excel("sp_beaches.xlsx") %>% filter(City == "ITANHAÉM") %>%
  mutate(Enterococcus = as.numeric(Enterococcus))

dados_summarized <- dados %>%
  group_by(Beach) %>%
  summarise(total_entries = n()) %>%
  arrange(desc(total_entries))

library(ggplot2)

print(ggplot(dados_summarized, aes(x = reorder(Beach, total_entries), y = total_entries, fill = Beach)) +
  geom_bar(stat = "identity") +
  geom_text(aes(label = paste(round(total_entries), " (", round(100 * total_entries/sum(total_entries)), "%)")),
            position = position_stack(vjust = 0.5)) +
  coord_flip() +
  scale_fill_brewer(type = "qual", palette = "Paired") +
  labs(x = "Praia", y = "Quantidade de amostras", title = "Amostras de Enterococcus por praia de Itanhaém") +
  theme_minimal()
)