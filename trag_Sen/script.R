#Autora: Cristina Tur
#Fecha de la última modificación: 13/09/2021

install.packages("udpipe")
library(udpipe)
library(tidyverse)
udpipe_download_model(language = "latin-perseus")
perseus <- udpipe_load_model(file = 'latin-perseus-ud-2.5-191206.udpipe')

#Agamenón
agamemnon_texto <- read_lines("corpus/agamemnon.txt",
                              skip=30)
agamemnon_texto <- gsub("[-–—]", " — ", agamemnon_texto)
agamemnon_texto <- gsub(" ([\\.,;:])", "\\1", agamemnon_texto)
agamemnon_texto <- gsub(" {2,10}", " ", agamemnon_texto)
agamemnon_texto <- gsub("^ ", "", agamemnon_texto)
agamemnon_texto <- tolower(agamemnon_texto)
analisis_agamemnon <- udpipe_annotate(perseus, agamemnon_texto, tagger = "default", parser = "none")
analisis_agamemnon <- as_tibble(analisis_agamemnon) %>%
  mutate(obra = "Agamemno")

#Hercules Furens
herc_fur_texto <- read_lines("corpus/hercFur.txt",
                             skip=26)
herc_fur_texto <- gsub("[-–—]", " — ", herc_fur_texto)
herc_fur_texto <- gsub(" ([\\.,;:])", "\\1", herc_fur_texto)
herc_fur_texto <- gsub(" {2,10}", " ", herc_fur_texto)
herc_fur_texto <- gsub("^ ", "", herc_fur_texto)
herc_fur_texto <- tolower(herc_fur_texto)
analisis_herc_fur <- udpipe_annotate(perseus, herc_fur_texto, tagger = "default", parser = "none")
analisis_herc_fur <- as_tibble(analisis_herc_fur)%>%
  mutate(obra = "Hercules Furens")

#Medea

medea_texto <- read_lines("corpus/medea.txt",
                          skip=26)
medea_texto <- gsub("[-–—]", " — ", medea_texto)
medea_texto <- gsub(" ([\\.,;:])", "\\1", medea_texto)
medea_texto <- gsub(" {2,10}", " ", medea_texto)
medea_texto <- gsub("^ ", "", medea_texto)
medea_texto <- tolower(medea_texto)
analisis_medea <- udpipe_annotate(perseus, medea_texto, tagger = "default", parser = "none")
analisis_medea <- as_tibble(analisis_medea)%>%
  mutate(obra = "Medea")

#Oedipus Rex

oedipus_texto <- read_lines("corpus/oedipus.txt",
                            skip=28)
oedipus_texto <- gsub("[-–—]", " — ", oedipus_texto)
oedipus_texto <- gsub(" ([\\.,;:])", "\\1", oedipus_texto)
oedipus_texto <- gsub(" {2,10}", " ", oedipus_texto)
oedipus_texto <- gsub("^ ", "", oedipus_texto)
oedipus_texto <- tolower(oedipus_texto)
analisis_oedipus <- udpipe_annotate(perseus, oedipus_texto, tagger = "default", parser = "none")
analisis_oedipus <- as_tibble(analisis_oedipus)%>%
  mutate(obra = "Oedipus Rex")

#Phaedra

phaedra_texto <- read_lines("corpus/phaedra.txt",
                            skip=25)
phaedra_texto <- gsub("[-–—]", " — ", phaedra_texto)
phaedra_texto <- gsub(" ([\\.,;:])", "\\1", phaedra_texto)
phaedra_texto <- gsub(" {2,10}", " ", phaedra_texto)
phaedra_texto <- gsub("^ ", "", phaedra_texto)
phaedra_texto <- tolower(phaedra_texto)
analisis_phaedra <- udpipe_annotate(perseus, phaedra_texto, tagger = "default", parser = "none")
analisis_phaedra <- as_tibble(analisis_phaedra)%>%
  mutate(obra = "Phaedra")

#Phoenissae

phoenissae_texto <- read_lines("corpus/phoenissae.txt",
                               skip=25)

phoenissae_texto <- gsub("[-–—]", " — ", phoenissae_texto)
phoenissae_texto <- gsub(" ([\\.,;:])", "\\1", phoenissae_texto)
phoenissae_texto <- gsub(" {2,10}", " ", phoenissae_texto)
phoenissae_texto <- gsub("^ ", "", phoenissae_texto)
phoenissae_texto <- tolower(phoenissae_texto)
analisis_phoenissae <- udpipe_annotate(perseus, phoenissae_texto, tagger = "default", parser = "none")
analisis_phoenissae <- as_tibble(analisis_phoenissae)%>%
  mutate(obra = "Phoenissae")

#Thyestes

thyestes_texto <- read_lines("corpus/thyestes.txt",
                             skip=27)
thyestes_texto <- gsub("[-–—]", " — ", thyestes_texto)
thyestes_texto <- gsub(" ([\\.,;:])", "\\1", thyestes_texto)
thyestes_texto <- gsub(" {2,10}", " ", thyestes_texto)
thyestes_texto <- gsub("^ ", "", thyestes_texto)
thyestes_texto <- tolower(thyestes_texto)
analisis_thyestes <- udpipe_annotate(perseus, thyestes_texto, tagger = "default", parser = "none")
analisis_thyestes <- as_tibble(analisis_thyestes)%>%
  mutate(obra = "Tiestes")

#Troades

troades_texto <- read_lines("corpus/troades.txt",
                            skip=33)
troades_texto <- gsub("[-–—]", " — ", troades_texto)
troades_texto <- gsub(" ([\\.,;:])", "\\1", troades_texto)
troades_texto <- gsub(" {2,10}", " ", troades_texto)
troades_texto <- gsub("^ ", "", troades_texto)
troades_texto <- tolower(troades_texto)
analisis_troades <- udpipe_annotate(perseus, troades_texto, tagger = "default", parser = "none")
analisis_troades <- as_tibble(analisis_troades)%>%
  mutate(obra = "Troades")

#Octavia
octavia_texto <- read_lines("corpus/octavia.txt",
                            skip=30)
octavia_texto <- gsub("[-–—]", " — ", octavia_texto)
octavia_texto <- gsub(" ([\\.,;:])", "\\1", octavia_texto)
octavia_texto <- gsub(" {2,10}", " ", octavia_texto)
octavia_texto <- gsub("^ ", "", octavia_texto)
octavia_texto <- tolower(octavia_texto)
analisis_octavia <- udpipe_annotate(perseus, octavia_texto, tagger = "default", parser = "none")
analisis_octavia <- as_tibble(analisis_octavia)%>%
  mutate(obra = "Octavia")

#Hércules en el Eta

herc_eta_texto <- read_lines("corpus/hercOet.txt",
                             locale = default_locale(),
                             skip=32)
herc_eta_texto <- gsub("[-–—]", " — ", herc_eta_texto)
herc_eta_texto <- gsub(" ([\\.,;:])", "\\1", herc_eta_texto)
herc_eta_texto <- gsub(" {2,10}", " ", herc_eta_texto)
herc_eta_texto <- gsub("^ ", "", herc_eta_texto)
herc_eta_texto <- tolower(herc_eta_texto)
analisis_herc_eta <- udpipe_annotate(perseus, herc_eta_texto, tagger = "default", parser = "none")
analisis_herc_eta <- as_tibble(analisis_herc_eta)%>%
  mutate(obra = "Hercules Oetaeus")

#Todas las tragedias

tragedias_analisis <- bind_rows(analisis_agamemnon,
                                analisis_oedipus,
                                analisis_thyestes,
                                analisis_phoenissae,
                                analisis_herc_fur,
                                analisis_medea,
                                analisis_phaedra,
                                analisis_troades,
                                analisis_octavia,
                                analisis_herc_eta)

#Borrar archivos temporales

rm(agamemnon_texto,
   medea_texto, 
   herc_fur_texto, 
   herc_eta_texto, 
   octavia_texto,
   oedipus_texto,
   thyestes_texto,
   phoenissae_texto,
   troades_texto,
   analisis_agamemnon,
   analisis_herc_eta,
   analisis_herc_fur,
   analisis_medea,
   analisis_octavia,
   analisis_oedipus,
   analisis_phaedra,
   analisis_phoenissae,
   analisis_thyestes,
   analisis_troades)

#tabla con los nombres ordenados por frecuencias

nombres_frecuentes <- tragedias_analisis %>%
  filter(upos == "NOUN") %>%
  drop_na(lemma) %>%
  count(lemma, sort = T)

#gráfica de los 10 nombres más frecuentes

tragedias_analisis %>%
  filter(upos == "NOUN") %>%
  drop_na(lemma) %>%
  count(lemma, sort = T)%>%
  mutate(lemma = reorder(lemma, n)) %>%
  top_n(10) %>%
  ggplot(aes(x=lemma, y=n)) +
  geom_bar(stat="identity")+
  geom_col(fill = "gray") +
  coord_flip()

  
