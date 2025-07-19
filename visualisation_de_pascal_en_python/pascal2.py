# Exemple minimal fonctionnel
NOMGRO = ["G1", "G2", "G3", "TARTAMPION"]
TYPPIR = ["PROPULSION MOTEUR", "PROPULSION PAGAI", "PROPULSION MOTEUR", "PROPULSION PAGAI"]
PRIPIR = [800000, 500000, 1200000, 400000]
DATLIV = ["2023-03-15", "2023-08-22", "2023-05-20", "2023-09-12"]

XGROUPE = ""
MAX = 0

for i in range(len(NOMGRO)):
    if NOMGRO[i] == "TARTAMPION":
        break
    if TYPPIR[i] == "PROPULSION MOTEUR":
        annee, mois, _ = map(int, DATLIV[i].split("-"))
        if annee == 2023 and mois >= 1 and mois <= 6:
            if PRIPIR[i] > MAX:
                MAX = PRIPIR[i]
                XGROUPE = NOMGRO[i]

print("Groupement avec la pirogue moteur la plus chère au 1er semestre 2023 :", XGROUPE)
