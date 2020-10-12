-- Datenbank: `kontakte`
-- Tracking the history of changes:
-- Concept of change over time (the second option Keethanjan suggests)
CREATE TABLE IF NOT EXISTS `kontakt` (
    `id` INT( 10 ) NOT NULL AUTO_INCREMENT,
    `aktiv_ab` TIMESTAMP NULL,
    `aktiv_bis` TIMESTAMP NULL,
    `kontakt_aktiv`BOOLEAN DEFAULT true, -- active or deleted
    `kontakt_user` VARCHAR( 100 ) NULL, -- login ID or IP address
    `anrede` ENUM( 'Herr','Frau','Firma','' ) NOT NULL ,
    `titel` VARCHAR( 100 ) NULL ,
    `vorname` VARCHAR( 100 ) NOT NULL ,
    `nachname` VARCHAR( 100 ) NOT NULL ,
    `email` VARCHAR( 100 ) NULL ,
    `telefon` VARCHAR( 30 ) NULL ,
    `strasse` VARCHAR( 100 ) NULL ,
    `plz` VARCHAR( 10 ) NULL ,
    `ort` VARCHAR( 100 ) NULL,
    PRIMARY KEY(id, aktiv_ab, aktiv_bis)
  );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );

INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-01-08 09:42:01', 'Herr', NULL, 'Max', 'Mustermann', 'max.mustermann@a1.net', '+43 664 123456', 'Wiener Straße 3', '2000', 'Stockerau' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-06-30 10:47:01', 'Frau', 'Mag.', 'Anna', 'Musterfrau', 'anna.musterfrau@a1.net', '+43 664 123456', 'Kohlmarkt 10', '1010', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-07-14 12:51:01', 'Herr', 'Dipl.-Ing.', 'Noah', 'Hahn', 'noah.hahn@gmail.com', '+43 664 123456', 'Vogelsanggasse 5', '3710', 'Ziersdorf' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-04 16:34:01', 'Frau', 'Dr.', 'Julia Dora', 'Müller', 'julia.mueller@univie.ac.at', '+43 676 123456', 'Linke Wienzeile 90', '1060', 'Wien' );
INSERT INTO kontakt ( aktiv_ab, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( '2020-08-30 17:29:01', 'Frau', NULL, 'Stefanie', 'Wittmann', 'stefanie.wittmann@univie.ac.at', '+43 664 5525684', 'Birkenweg 7', '2020', 'Hollabrunn' );
