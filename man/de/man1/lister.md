---
title: lister
author: Alexander Barton, alex@barton.de
date: April 2026
section: 1
header: Dienstprogramme für Benutzer
footer: climail package
---

# BEZEICHNUNG

lister — Maildir-Ordner finden und auflisten

# ÜBERSICHT

**lister** [*Maildir_directory*]

# BESCHREIBUNG

**lister** findet und formatiert eine Liste aller Ordner in einem
Maildir-Verzeichnis. Wenn die Ausgabe auf ein Terminal erfolgt, wird sie durch
**column**(1) gefiltert.

**lister** kann als externer Ordner-Lister für **s-nail**(1) und GNU Mailutils
**mail**(1) verwendet werden. So setzt zum Beispiel **openmail**(1) die
Umgebungsvariable LISTER automatisch, wenn sie nicht bereits gesetzt ist.

# ENVIRONMENT

**LISTER**
: Pfad zu einem alternativen Lister-Programm wie **lister**.

**MAILDIR**
: Überschreibt den Standardpfad zum Maildir (**/var/log/${LOGNAME}**).

# RÜCKGABEWERT

**0**
: Erfolgreich ausgeführt.

**1**
: Fehler beim Durchsuchen oder Formatieren.

# SIEHE AUCH

**openmail**(1), **readmail**(1), **checkmail**(1), **mail**(1), **s-nail**(1)

# FEHLER MELDEN

Bug-Tracker: <https://github.com/alexbarton/climail/issues>
