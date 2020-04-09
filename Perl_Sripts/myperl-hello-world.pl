# Test if Perl is installed by typing perl -v in your terminal
# You may want to install perlbrew to avoid damaging the version of Perl that
# your system depends on if you are on Mac or Linux
# curl -kL http://xrl.us/perlbrewinstall | bash
# Add the line of code that looks like source ~/perl5/perlbrew/etc/bashrc to
# your /Users/UserName/.bash_profile file and restart the terminal
# Install the latest version of Perl perlbrew install perl-5.22.1
# If you are on Windows install Strawberry Perl http://strawberryperl.com/

# Create hello world in the terminal
# perl -e 'print "Hello World\n"'

# On Windows
# perl -e "print \"Hello World\n\""

use strict;
use warnings;
use diagnostics;

# We define the above (pragmas) to force us to write good code
# and to provide information on how to correct errors

# say prints a line followed by a newline
use feature 'say';

# Use a Perl version of switch called given when
use feature "switch";

# Use Perl version 5.16
use v5.16;

# I'm a comment
# Executes in the terminal when you type perltut1.pl
print "Hello World\n";


