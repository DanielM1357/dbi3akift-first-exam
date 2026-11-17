-- Ein Index sortiert Datensätze einer/mehrerer Spalten nach einem Schema, ähnlich dem Set,
-- wodurch Datensätze schneller abgerufen werden können.
-- Dieser Performancevoreil geht auf Kosten des Speichers, die Datenbank braucht dadurch mehr
-- Speicher.
-- Ein Index ist dann sinnvoll, wenn
-- die Datenvielfalt groß ist, Spalten, wo einzelne Datensätze sehr häufig zu erwarten sind,
-- beeinflussen die Performance mit einem Index negativ und machen somit den einsatz eines
-- Indexes überflüssig.

-- Spalten für die ein Index sinnvoll wäre:
-- E-Mail Adresse, (Vorname & Nachname), Subject

-- Bei einer Laufzeit von 10 Jahren ist davon auszugehen, dass es viele User accounts mit
-- E-Mail Adressen geben wird, mit einer großen Streuung. Kontakte zu filtern, was eine
-- sicherlich häufig benützte Fuktion sein würde, würde mti einem Index schneller gehen.


CREATE INDEX email_idx ON adresses(email);
