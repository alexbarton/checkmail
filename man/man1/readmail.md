---
title: readmail
author: Alexander Barton, alex@barton.de
date: April 2026
section: 1
header: User Commands
footer: climail package
---

# NAME

readmail - Interactively select a mail folder to read mail from

# SYNOPSIS

**readmail** [*search_pattern ...*]

# DESCRIPTION

**readmail** calls **lister**(1) and **fzf**(1) in an "endless" loop to
interactively select a mail folder and call **openmail**(1) on it.

Once **fzf**(1) returns an non-zero exit code, for example when exited with
CTRL+D, **readmail** ends the loop and exits.

When a *search_pattern* was given, it is passed through to **fzf**(1) and
pre-fills its search field. No loop is entered in this case, **readmail** exits
after opening one mail folder. And if there is only one match, this folder is
opened automatically.

# EXIT STATUS

**0**
: Successful execution.

**1**
: Error invoking **lister**(1), **fzf**(1), or **openmail**(1).

# SEE ALSO

**openmail**(1), **checkmail**(1), **lister**(1), **fzf**(1).

# BUGS

Report bugs at: <https://github.com/alexbarton/climail/issues>
