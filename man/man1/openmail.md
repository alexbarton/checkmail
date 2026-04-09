---
title: openmail
author: Alexander Barton, alex@barton.de
date: April 2026
section: 1
header: User Commands
footer: climail package
---

# NAME

openmail - setup and call an email client for a Maildir folder

# SYNOPSIS

**openmail** [*mailbox* [*mailbox_command* [*arguments...*]]]

# DESCRIPTION

**openmail** runs a command on a mailbox in Maildir format. By default, an email
client is used to read mail.

The following email clients are supported by default:

- **mail**(1): called as "mail -f".
- **s-nail**(1): preferred when found, called as "s-nail -f".

An alternative *mailbox_command* and its *arguments* can can be specified on the
command line. And this can be an arbitrary command, it must not be an
interactive CLI email client.

When no *mailbox* is specified, "+" (the "INBOX") is used by default.

If the *mailbox* name does start with a dot ("."), the missing "+" is prepended
automatically. When both plus and dot ("+.") are missing on a mailbox starting
with an alphanumeric character, "+." is prepended automatically. And the plain
names "INBOX" and "inbox" are always translated into "+".

This way you can use *friendly* folder names as shown when starting **openmail**
and used in the selector of the **readmail**(1) command, for example.

# ENVIRONMENT

**CLIMAIL_PAGER**
: Overrides the "PAGER" before the mail reader is run.

**MAILDIR**
: Overrides the default Maildir path (**/var/log/${LOGNAME}**).

# EXIT STATUS

**0**
: Successful execution.

**1**
: Error invoking the mail reader or the supplied command.

# SEE ALSO

**checkmail**(1), **readmail**(1), **lister**(1), **mail**(1), **s-nail**(1)

# BUGS

Report bugs at: <https://github.com/alexbarton/climail/issues>
