
# Funktion zur Eingabe der Noten und Berechnung des Durchschnitts
def berechne_durchschnitt():
    noten = []
    
    print("Bitte gib deine Noten ein. (Zulässige Noten: 1, 1.25, 1.5, 1.75, ..., 6)")
    print("Gib 'ende' ein, um die Eingabe zu beenden.")
    
    while True:
        note = input("Note eingeben: ")
        
        if note.lower() == 'ende':
            break
        
        try:
            note = float(note)
            if note in [1, 1.25, 1.5, 1.75, 2, 2.25, 2.5, 2.75, 3, 3.25, 3.5, 3.75, 4, 4.25, 4.5, 4.75, 5, 5.25, 5.5, 5.75, 6]:
                noten.append(note)
            else:
                print("Ungültige Note. Bitte eine Note zwischen 1 und 6 in den vorgegebenen Schritten eingeben.")
        except ValueError:
            print("Ungültige Eingabe. Gib eine gültige Zahl ein oder 'ende' zum Beenden.")
    
    if noten:
        durchschnitt = sum(noten) / len(noten)
        print(f"Dein Notendurchschnitt ist: {durchschnitt:.2f}")
        
        # Speichern der Noten und des Durchschnitts in einer Datei
        with open("noten_durchschnitt.txt", "w") as file:
            file.write("Eingegebene Noten:\n")
            for note in noten:
                file.write(f"{note}\n")
            file.write(f"\nNotendurchschnitt: {durchschnitt:.2f}\n")
            print("Die Noten und der Durchschnitt wurden in 'noten_durchschnitt.txt' gespeichert.")
    else:
        print("Es wurden keine Noten eingegeben.")

# Hauptprogramm
if __name__ == "__main__":
    berechne_durchschnitt()
