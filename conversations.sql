--  Ein View ist ein Select, dessen Ergebnis in einer Datenbank gespeichert wird um davon
-- weitere Abfragen machen zu können.

-- Ein View hat einerseits den vorteil, dass häufige und komplexe abfragen durch einen View
-- aufgehoben werden können, man kann direkt den View selecten und hat zum Beispiel einen
-- Überblick über bestimmte Daten. Außerdem können häufige abfragen vereinfacht werden - z.B.
-- eine Abfrage, die viele JOINS brauchen würde in einem View gespeichert und davon SELECTen.
-- Für conversations könnte man eine gute Übersicht erstellen, in der die Tabellen contacts,
-- adresses gejoined werden.

CREATE VIEW conversations_incoming AS
    SELECT c.id, c.first_name, c.last_name, SUM(mc.message_id) AS message_sum
    FROM messages_conversations mc
        INNER JOIN conversations con
        ON mc.conversation_id = con.id
                INNER JOIN contacts c
                ON con.contact_id = c.id
        WHERE con.lastmessage_direction='incoming'
        GROUP BY conversation_id
;


CREATE VIEW conversations AS
    SELECT id, first_name, last_name, message_sum
    FROM conversations_incoming ci


