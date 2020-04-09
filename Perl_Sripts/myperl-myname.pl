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
######   print "Hello World\n";

# Windows programmers should end there code with <STDIN>; so the
# command prompt stays open

# ---------- SCALARS ----------
# There are 3 data types in Perl Scalars, Arrays and Hashes

# Use the my function to declare a variable
# The Sigil $ says we are defining a scalar or single value
# The variable must start with a letter or _ and then numbers
# there after
# A variable receives the default value of undef

my $name = 'Thaddeus ';

# You can assign multiple values like this and scalars can
# contain strings or numbers

my ($age, $street) = (40, '123 William St');

# If you use " for strings you can include things like
# newlines with \n and variables
# Backslash quotes to use them in strings
# -- Method 1 --

my $my_info = "\n \n Method 1 \n $name lives on \"$street\"\n";

# You can avoid escaping quotes with q{} for single quotes
# and qq{} for double quotes -- Method 2 --
# NOTE:  If you skip method 1 and try to use method 2
#           you will need to declare the scaler $my_info prior to calling it below...
######  =====> my $my_info = "";

$my_info = qq{\n Method 2 \n $name lives on "$street"\n};

print $my_info;

# You can define a long string over multiple lines like this

my $bunch_of_info = <<"END";
\n \n 
This is a
bunch of information
on multiple lines
\n \n
END

# say ends the line with a newline
say $bunch_of_info;

