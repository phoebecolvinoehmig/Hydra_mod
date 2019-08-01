# Species currently in Hydra:
#   
# Spiny Dogfish - "Squalus acanthias" (Squalidae)
# Winter Skate - Leucoraja ocellata (Rajidae)
# Atlantic cod -  "Gadus morhua" "(Gadidae)"
# Atlantic Herring - "Clupea harengus" "(Clupeidae)"
# Haddock - "Melanogrammus aeglefinus" (Gadidae)
# Atlantic Mackerel - "Scomber scombrus" "(Scombridae)"
# Winter flouner - Pseudopleuronectes americanus (Pleuronectidae)
# Yellowtail Flounder - Limanda ferruginea (Pleuronectidae)
# Monkfish/Goosefish - Lophius americanus (Lophiidae)
# Silver Hake - "Merluccius bilinearis" (Merlicciidae)
# 
# New species
# 
# Pollock - Pollachius virens ("Gadidae")
# White Hake - Urophycis tenuis (Phycidae)
# Silver Hake - "Urophycis chuss" (Phycidae)
# 
# 
# 
# 
# 
# 
# 
# 
# The food habits data includes information on predators and prey.
# Each record describes a prey item found in the gut of a particular fish.
# 
# This data was collected on annual surveys. In summary, the ship pulls in a net of caught fish at a desired location
# All fish are counted, some of them are then taken and their stomachs removed. The contents of the stomachs are then recorded.
# This data set reflects the ID of the fish whos stomach was removed and the contents of the stomach.
# 
# The dataset has the following columns:
#   
#   fishID: Number that identifies a particular sampled fish (predator) 
# Several records will have the same fishID number.
# Each record describes a prey item eaten by the sampled fish
# 
# svspp: A code to identify the predator (pollock=75,whitehake=76,redhake =77)
# 
# pdlen: length (cm) of the fish sampled (predator)
# 
# pdwgt: weight of the fish sampled (predator)
# 
# pdsvol: volume of the stomach contents
# 
# pdswgt: weight of the stomach contents
# 
# pdmat: Code indicating level of maturity of predator (i'm not sure what all these mean yet!)
# 	(D = developing 
# 	 E = eyed
# 	 I = immature
# 	 R = ripe
# 	 S = spent
# 	 T = resting
# 	 U = ripe and running
# 	 X = unknown)
# 
# pynam: scientific name of prey
# 
# pyspp: A code to identify the prey
# 
# pyvol: volume of prey found in stomach