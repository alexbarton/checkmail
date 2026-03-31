#!/usr/bin/env bash
#
# climail/climail.int.sh
# Common initialization and bash functions for all climail tools.
#

init_gettext() {
	local locale_dir

	# shellcheck disable=SC1091
	. gettext.sh
	export TEXTDOMAIN=climail
	if [[ -z ${TEXTDOMAINDIR:-} ]]; then
		for locale_dir in ./po "${HOME}/.local/share/locale" /usr/local/share/locale; do
			[[ -r "${locale_dir}/de/LC_MESSAGES/${TEXTDOMAIN}.mo" ]] || continue
			export TEXTDOMAINDIR=$locale_dir
			break
		done
	fi
}

get_mailbox_name() {
	if [[ "$1" = "+" ]]; then
		echo "INBOX"
	else
		echo "${1#+.}"
	fi
}

export LISTER=${LISTER:-"$(dirname "$0")"/lister}
export MAILDIR="${MAILDIR:-/var/mail/${LOGNAME}}"
export PAGER=${CLIMAIL_PAGER:-${PAGER:-more}}

init_gettext
