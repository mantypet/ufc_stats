source(here::here("R/readers.R"))

load_ufc_stats()

ufc_stats.rep <- ufc_stats %>%
  filter(scheduled_rounds %in% c("3 Rnd (5-5-5)", "5 Rnd (5-5-5-5-5)")) %>%
  filter(winner %in% c("W", "L"))

ufc_stats.rep.wide <- ufc_stats.rep %>%
  pivot_wider(id_cols = c(winner, fighter), names_from = winner, values_from = fighter)

