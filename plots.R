# Team Rocket Theme
theme_rocket <- ggplot(pokemon,aes(attack,defense))+
  geom_point(col = "grey")+
  theme_rocket()+
  labs(x = "Jessy",y = "James",
       title = "Theme Rocket",
       subtitle = "blast off at the speed of light!",
       caption = "meowth that's right")

# Gameboy Theme
gameboy_theme <- ggplot(pokemon,aes(attack,defense))+
  geom_point(shape = 15,col = "#006400",size=2)+
  theme_gameboy()+
  labs(title = "Classic Gameboy Theme")

# Gameboy Advance Theme
gameboy_advance_theme <- ggplot(pokemon,aes(attack,defense))+
  geom_point(shape = 15,col = "#27408B",size=2)+
  theme_gba()+
  labs(title = "Gameboy Advanced Theme")

# Pokemon status and HP bar
pokemon_gghealth <- pokemon[1:10,] %>% 
  gghealth("name","base_total",init.size = 5)+
  labs(x="",y="Stats Total")

# Team Mystics Pokemon Go
p1 <- pokemon %>%
  dplyr::filter(type1=="water") %>%
  ggplot(aes(defense,attack))+geom_point()+annotate_pogo(team = "mystic")+theme_mystic()+
  labs(title="Team Mystic",subtitle="Water Pokemon")

# Team Valor Pokemon Go
p2 <- pokemon %>%
  dplyr::filter(type1=="fire") %>%
  ggplot(aes(defense,attack))+geom_point()+annotate_pogo(team = "valor")+theme_valor()+
  labs(title="Team Valor",subtitle="Fire Pokemon")

# Team Instinct Pokemon Go
p3 <- pokemon %>%
  dplyr::filter(type1=="electric") %>%
  ggplot(aes(defense,attack))+geom_point()+annotate_pogo(team = "instinct")+theme_instinct()+
  labs(title="Team Instinct",subtitle="Electric Pokemon")

# Puts all graphs together
legrid <- gridExtra::grid.arrange(grobs=list(p1,p2,p3),ncol=3)

#basic usage
# poke_pie(path_to_sprites = "sprites/sprites/pokemon/1.png",poke = pokemon[1,])

# Pokemon color palettes
# name <- c("nidoran")
# palette <- poke_pal(name,3)
# display_poke_pal(name = c("hooh"))

# install.packages("extrafont")
# extrafont::font_import() #only run ones
extrafont::loadfonts()

# import fonts this way
# import_pokefont()

# effective table
effectiveness <- pokemon %>%
  distinct(type1,.keep_all=TRUE) %>%
  select(defender = type1,against_bug:against_water) %>%
  gather(attacker,effect,against_bug:against_water) %>%
  mutate(attacker = str_replace_all(attacker,"against_",""))  %>%
  ggplot(aes(y=attacker,x=defender,fill=factor(effect)))+
  geom_tile()+
  geom_text(aes(label=ifelse(effect!=1,effect,"")))+
  scale_fill_manual(values=c("#8B1A1A", "#CD2626", "#EE2C2C", "#FFFFFF", "#00CD00", "#008B00"))+
  theme_rocket(legend.position="none")+
  labs(title="Effectiveness Table")

# Pokemon type
pokemon_types <- ggplot(pokemon,aes(defense,attack))+
  geom_point(aes(col=type1))+
  scale_color_poketype()+
  theme_bw()
