---
title: lister
author: Alexander Barton, alex@barton.de
date: April 2026
section: 1
header: User Commands
footer: climail package
---

# NAME

lister - list all mailboxes in a Maildir tree

# SYNOPSIS

**lister** [*Maildir_directory*]

# DESCRIPTION

**lister** finds and formats a list of all mailboxes in a Maildir tree. If
output is directed to a terminal, it is automatically piped through **column(1)**.

**lister** can be used as an external folder lister for **s-nail(1)** and GNU
Mailutils **mail(1)**. For example, **openmail(1)** automatically sets the
LISTER environment variable if it is not already defined.

# ENVIRONMENT

**LISTER**
: Path to an alternative lister program like **lister**.

**MAILDIR**
: Overrides the default Maildir path (**/var/log/${LOGNAME}**).

# EXIT STATUS

**0**
: Successful execution.

**1**
: Error while scanning or formatting output.

# SEE ALSO

**openmail(1)**, **readmail(1)**, **checkmail(1)**, **mail(1)**, **s-nail(1)**

# BUGS

Report bugs at: <https://github.com/alexbarton/climail/issues>
