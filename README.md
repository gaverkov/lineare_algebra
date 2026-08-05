[Moodle-Kurs anlegen/duplizieren howto](https://www.b-tu.de/elearning/btu/course/view.php?id=14880&section=2#kurskopie)

# Tipps zur Vorbereitung auf die IT-2-Prüfung

Sie können sich den Stoff als die folgende Kette vorstellen:

**Begriffe -> allgemeine Aussagen (Theoreme usw.) -> Beweise der formulierten Aussagen -> Rechenmethoden als Nebenprodukt des Vorigen.**

Wichtig ist: Wenn Sie rechnen, sollten Sie auch verstehen, **was** Sie berechnen. Wenn Sie zum Beispiel eine Basis bestimmen, sollten Sie erklären können, was eine Basis überhaupt ist. Idealerweise verstehen Sie außerdem, warum die verwendete Methode tatsächlich eine Basis liefert.

Häufig kommt die Frage auf, wie der Stoff in der Klausur auf die Bereiche *Rechnen*, *Beweisen*, *Begriffe kennen* und *Aussagen kennen* verteilt ist. Eine grobe Einteilung ist zwar möglich, sie greift aber zu kurz. Denn auch die Rechenmethoden setzen letztlich alles voraus, was in der Kette davor steht: Begriffe, Aussagen und deren Verständnis.

Erfahrungsgemäß scheitern Studierende bei Rechenaufgaben meist nicht daran, dass sie nicht rechnen können – das können sie in der Regel durchaus. Schwierigkeiten entstehen vielmehr dadurch, dass sie nicht genau verstehen, **was** sie eigentlich berechnen und **warum** die verwendete Methode funktioniert.

Beweisen und Argumentieren kommen in der IT-2-Klausur relativ geringfügig vor, da man innerhalb von 1,5 Stunden nicht viel beweisen kann. Geprüft werden vor allem Begriffe, allgemeine Aussagen und Rechenmethoden. Die Fähigkeit, präzise zu denken und Zusammenhänge zu erkennen, ist aber der Schlüssel zu allem.

Ein häufiges Missverständnis entsteht dadurch, dass der Stoff aus der folgenden Perspektive betrachtet wird: Man lernt Methoden 1, 2 und 3 auswendig und erwartet, diese in der Prüfung wieder abrufen zu können. Das heißt: man ignoriert bei der Vorebereitung alles bis auf das letzte Glied der Kette. Das kann nicht gut gehen. Versuchen Sie stattdessen, den Stoff als eine Gesamtheit aufzufassen – mit den Zusammenhängen zwischen den verschiedenen Begriffen, Aussagen und Methoden.

## Gedankenexperiment

Wenn ich in einem Satz zusammenfassen müsste, was Studierenden in IT-Modulen am häufigsten fehlt, würde ich es so formulieren: die Erfahrung, präzise zu formulieren. Das erschwert wiederum das präzise Denken, denn: je präziser man formuliert, desto präziser kann man auch denken.

Machen wir ein Gedankenexperiment. Stellen Sie sich vor, Sie diskutieren mit jemandem das Gauß-Verfahren. Die andere Person möchte es wirklich verstehen. Das Gespräch könnte ungefähr so verlaufen:

- **A:** Wir hatten in IT-2 das Gauß-Verfahren.
- **B:** Was ist das?
- **A:** Das ist eine Methode zur Lösung linearer Gleichungssysteme.
- **B:** Was ist ein lineares Gleichungssystem?
- **A:** *Sie erklären es und stoßen dabei auf weitere Begriffe wie Lösungsmenge, Menge, Körper, algebraische Struktur usw.*
- **B:** *Die Person fragt weiter: Was ist eine Lösungsmenge? Was ist ein Körper? Warum funktioniert das Gauß-Verfahren? Welche Eigenschaften der verwendeten Operationen werden dabei genutzt?*

Wenn Sie alle diese Fragen beantworten können – präzise und im Zusammenhang –, dann beherrschen Sie das Thema wirklich.

Sie können dieses Gedankenexperiment auf jedes Thema anwenden. Sie werden dabei schnell merken, ob Sie ein Thema tatsächlich verstanden haben. 

# Lineare Algebra 1 & 2 und IT-2



EINSTIEG

Kapitel 1: Mathematische Grundbegriffe (LinAlg 1, IT-1)

Kapitel 2: Ausgewählte Algebraische Strukturen (LinAlg 1, IT-2)

Anhang A: Vollständige Induktion (LinAlg 1, IT-1)

HAUPTTHEMEN

Anhang B: Gauss-Elimination (LinAlg 1, IT-2)

Kapitel 3: Vektorräume (LinAlg 1, IT-2)

Kapitel 4: Lineare Abbildungen (LinAlg 1, IT-2)

Kapitel 5: Determinanten (LinAlg 1 und 2, IT-2)

Kapitel 6: Eigenwerte und Eigenvektoren (LinAlg 2, IT-2 - alles bis auf die Jordansche Normalform)

Kapitel 7: Euklidische Räume und quadratische Formen (LinAlg 2, IT-2)

ZUSATZTHEMEN (OPTIONAL)

Kapitel 8: Ganzzahlige lineare Algebra (*LinAlg 2)

Kapitel 9: Tensoren und daule Vektorräume (*LinAlg 2)

Kapitel 10: Matroide (*LinAlg 2, *IT-2)

Kapitel 11: Verschiedenes (*LinAlg 2, *IT-2)

		Singulärwertzerlegung

# Mathe-Basics

## Konsistenz, Konsistenz und nochmals Konsistenz

Nehmen wir folgendes Beispiel. Jemand definiert die Injektivität einer Funktion $f: X \to Y$ durch die Bedingung, dass $f(x) \ne f(y)$ für alle $x \in X$ und $y \in Y$ gelten soll.

Warum ist diese Definition falsch? Lesen wir sie Schritt für Schritt.

Die Schreibweise $f: X \to Y$ bedeutet: Die Funktion $f$ ordnet jedem Element aus $X$ genau ein Element aus $Y$ zu. Das ist die grundlegende Definition einer Abbildung.

Nun betrachten wir die angebliche Definition der Injektivität. Dort wird $f$ auch auf ein $y \in Y$ angewendet, also $f(y)$. Aber: Ist $f$ überhaupt auf Elementen aus $Y$ definiert? Nein. Laut Voraussetzung nimmt $f$ nur Elemente aus $X$ als Eingabe.

Ein konkretes Beispiel: Sei $X$ die Menge aller Strings über einem Alphabet und $Y$ die Menge der nichtnegativen ganzen Zahlen. Definiere $f(x)$ als die Länge des Strings $x$. Dann ist $f$ eine Abbildung $f: X \to Y$.

Hier ist $f(y)$ für ein $y \in Y$ schlicht nicht definiert. In Python entspricht das etwa:

- `len("Hallo")` funktioniert,
- `len(5)` führt zu einem Laufzeitfehler.

Die Zahl 5 kann also ein Wert der Funktion `len` sein, aber keine zulässige Eingabe.

Wenn wir nun mit der falschen Definition an unserer Beispielfunktion `len` arbeiten und etwa $x = \text{"Hallo"}$ und $y = 5$ einsetzen, erhalten wir genau so einen Fehler: `TypeError: object of type 'int' has no len()`. Der Ausdruck ist gar nicht sinnvoll gebildet.

Wie kommt es zu solchen Fehlern? Meine Vermutung: Man schreibt mechanisch. Man schreibt $f: X \to Y$ hin, ohne sich klarzumachen, was das bedeutet. Mit anderen Worten: man weiß eigentlich selber gar nicht, was man schreibt. 

Aber genau das ist entscheidend: Diese Schreibweise legt fest, auf welchen Objekten $f$ überhaupt angewendet werden darf und welche Werte herauskommen können. Und daran muss man sich im weiteren Argumentieren konsequent halten.


**Bitte, bitte, bitte:** Schreiben Sie nicht mechanisch. Lesen Sie, was Sie schreiben, und prüfen Sie, ob es überhaupt sinnvoll ist. Das gilt nicht nur für mathematische Texte, sondern ebenso für beliebige Texte und für Programmcode.

## Konsistenz in den Bezeichnungen

Versuchen Sie in einem Programmcode etwas zu printen, was Sie gar nicht vorher eingeführt haben. Etwa `print(A)`, wobei in Ihrem Code vor dieser `print`-Zeile kein `A` vorkommt.

Was passiert dann? Richtig: ein Laufzeitfehler. Konkret: `NameError: name 'A' is not defined`

Warum entsteht dieser Laufzeitfehler? Sie haben dem Computer nicht mitgeteilt, was `A` ist.

Nun stellen wir uns vor, Sie lösen eine Aufgabe, in der $f$, $X$ und $Y$ vorkommen, aber kein $A$, und in Ihrer Lösung taucht plötzlich $A$ auf. Sie haben jedoch niemals erklärt, was dieses $A$ ist.

Welche Frage stellt sich bei der Korrektur Ihrer Lösung sofort? Richtig: Was ist $A$?

Erklären Sie mir bitte Ihre Objekte, die Sie in Ihren Lösungen verwenden.

**Bitte, bitte, bitte, bitte:** Erklären Sie die Objekte, die Sie benutzen. Dafür muss man doch kein Genie sein, oder?

## Was macht ein Mathelehrer im Skiurlaub?

Richtig: er rechnet mit Brüchen.

Spaß beiseite: Können *Sie* mit Brüchen rechnen? Welchen gemeinsamen Nenner würden Sie bilden, wenn Sie $\frac{1}{22} + \frac{1}{33}$ berechnen sollen?

Ist Ihr gemeinsamer Nenner $66$ oder $726$? Beides ist möglich — aber es gibt einen wichtigen Unterschied.

Wenn Sie später etwa irgendwelche Aufgaben zur Induktion lösen und mit Ausdrücken im Nenner wie $n!$ und $(n+1)!$ arbeiten, werden Sie diesen Unterschied deutlich spüren.

Wenn Sie mit Brüchen wirklich rechnen können, bekommen Sie solche Aufgaben sauber gelöst. Wenn Sie nur „im Prinzip“ mit Brüchen rechnen können, wird es schwierig.

Übrigens: Brüche, Division, Proportionen und Prozentrechnung sind im Wesentlichen dasselbe Konzept.

Das heißt: Seit der 5. Klasse haben Sie immer wieder mit Brüchen gearbeitet — erst Brüche, dann wieder Brüche, dann nochmals Brüche, bis Sie das Abitur erreicht und schließlich die Universität betreten haben.

Spätestens jetzt ist es an der Zeit, wirklich mit Brüchen zu rechnen.

## Die Rolle der Klammern 

Setzen Sie bitte Klammern passend: egal, ob in Berechnungen oder im Programmcode. `10 * ( Pommes + Cola)` ist nicht dasselbe wie `10 * Pommes + Cola`. Wirklich nicht! Genauso mit dem Programmcode: Es macht einen Unterschied, ob ein Befehl in der Schleife steht oder außerhalb. 

```python
for i in range(10):
	print("Pommes")
	print("Cola")
```

ist nicht dasselbe wie 

```python
for i in range(10): 
	print("Pommes")
print("Cola")
```

Wieso um alles in der Welt vernachlässigen ausgerechnet Programmierer (m/w/d) die Klammern? Ich verstehe es nicht. Kann mir das bitte jemand erklären? Muss man ein Genie sein, um Klammern zu setzen? Verstehen Sie mich richtig. Ich bin einfach manchmal frustriert, weil es so viele Dinge auf der Welt gibt, die ich nicht verstehe. Das mit den Klammern gehört definitiv dazu.

