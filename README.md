[Moodle-Kurs anlegen/duplizieren howto](https://www.b-tu.de/elearning/btu/course/view.php?id=14880&section=2#kurskopie)

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

Wenn Sie später Aufgaben zur Induktion lösen und mit Ausdrücken wie $n!$ und $(n+1)!$ arbeiten, werden Sie diesen Unterschied deutlich spüren.

Wenn Sie mit Brüchen wirklich rechnen können, bekommen Sie solche Aufgaben sauber gelöst. Wenn Sie nur „im Prinzip“ mit Brüchen rechnen können, wird es schwierig.

Übrigens: Brüche, Division, Proportionen und Prozentrechnung sind im Wesentlichen dasselbe Konzept.

Das heißt: Seit der 5. Klasse haben Sie immer wieder mit Brüchen gearbeitet — erst Brüche, dann wieder Brüche, dann nochmals Brüche, bis Sie das Abitur erreicht und schließlich die Universität betreten haben.

Spätestens jetzt ist es an der Zeit, wirklich mit Brüchen zu rechnen.
