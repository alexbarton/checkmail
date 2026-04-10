---
title: readmail
author: Alexander Barton, alex@barton.de
date: April 2026
section: 1
header: Dienstprogramme für Benutzer
footer: climail package
---

# BEZEICHNUNG

readmail — Interaktive Auswahl eines Mail-Ordners zum Lesen

# ÜBERSICHT

**readmail** [*search_pattern ...*]

# BESCHREIBUNG

**readmail** ruft **lister**(1) und **fzf**(1) in einer Endlosschleife auf, um
interaktiv einen Mail-Ordner auszuwählen und anschließend **openmail**(1)
darauf auszuführen.

Sobald **fzf**(1) einen Rückgabewert ungleich 0 liefert, zum Beispiel wenn es
mit CTRL+D beendet wurde, beendet **readmail** die Schleife und beendet sich.

Wenn ein Suchtext *search_pattern* angegeben wurde, wird dieses an **fzf**(1)
weitergegeben und vorbelegt das Suchfeld. In diesem Fall wird keine Schleife
begonnen, **readmail** beendet sich nach dem Öffnen eines Mail-Ordners. Und wenn
nur ein Ergebnis gefunden wird, wird dieser Mail-Ordner automatisch geöffnet.

# RÜCKGABEWERT

**0**
: Erfolgreich ausgeführt.

**1**
: Fehler beim Aufruf von **lister**(1), **fzf**(1) oder **openmail**(1).

# SIEHE AUCH

**openmail**(1), **checkmail**(1), **lister**(1), **fzf**(1).

# FEHLER MELDEN

Bug-Tracker: <https://github.com/alexbarton/climail/issues>
