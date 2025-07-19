# Exemple de données
NOMGRO = ["G1", "G2", "G3", "TARTAMPION"]
REFPIR = ["P001", "P002", "P003", "PXXX"]
VOLPIR = [100, 80, 120, 0]
PRIPIR = [800000, 500000, 1200000, 0]
TYPPIR = ["PROPULSION MOTEUR", "PROPULSION PAGAI", "PROPULSION MOTEUR", "PROPULSION PAGAI"]
DATLIV = ["2023-03-15", "2023-08-22", "2023-12-01", "2024-01-01"]

print("Pirogues à propulsion moteur livrées en 2023 :")
for i in range(len(NOMGRO)):
    if NOMGRO[i] == "TARTAMPION":
        break
    if TYPPIR[i] == "PROPULSION MOTEUR":
        annee = int(DATLIV[i].split("-")[0])
        if annee == 2023:
            print("Groupement:", NOMGRO[i], 
                  "| Volume:", VOLPIR[i], 
                  "| Prix:", PRIPIR[i], 
                  "| Type:", TYPPIR[i], 
                  "| Date:", DATLIV[i])
