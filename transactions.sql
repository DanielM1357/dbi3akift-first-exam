

--  Die Schwirigkeit besteht, weil Datensätze angelegt werden, die keinen
-- Sinn ergeben, wenn nicht alle anderen Datensätze dazu eingefügt werden

-- Wenn der Server ausfällt, dann ist es problematisch, weil Datensäze
-- nicht vollständig angelegt werden und somit falsche bzw. nicht vollständige
-- Datensätze angelegt werden und somit Fehler in der Datenbank entstehen

-- Eine Transaction sichert dies ab, wenn der Server ausfällt wird inerhalb
-- der Transaktion nichts gespeichert bzw. es kann bei Fehlern auch ein
-- Rollback gemacht werden und alle bisherigen Änderungen werden nicht
-- übernommen.

BEGIN TRANSACTION;

INSERT INTO messages (
    id, account_id,
    )
