#!/bin/sh
# Run this to generate all the initial makefiles, etc.

test -n "$srcdir" || srcdir=`dirname "$0"`
test -n "$srcdir" || srcdir=.

olddir=`pwd`
cd "$srcdir"

AUTORECONF=`which autoreconf`
if test -z $AUTORECONF; then
	echo "*** No autoreconf found, please install it ***"
	exit 1
else
	ACLOCAL="aclocal $ACLOCAL_FLAGS" autoreconf --force --install || exit $?
fi

INTLTOOLIZE=`which intltoolize`
if test -z $INTLTOOLIZE; then
	echo "*** No intltoolize found, please install it ***"
	exit 1
else
	intltoolize --force || exit $?
fi

cd "$olddir"
test -n "$NOCONFIGURE" || "$srcdir/configure" "$@"
