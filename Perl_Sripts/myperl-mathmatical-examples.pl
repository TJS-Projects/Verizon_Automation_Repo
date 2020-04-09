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

# The largest integer you can hold
my $big_int = 18446744073709551615;

# You can formatted strings by defining the data type after %
# %c : Character
# %s : string
# %d : Decimal
# %u : Unsigned integer
# %f : Floating Point (Decimal Notation)
# %e : Floating Point (Scientific Notation)
printf("%u \n", $big_int + 1);

# You can trust 16 digits of precision for floats on most machines
my $big_float = .1000000000000001;

# You can define the decimal precision amount
printf("%.16f \n", $big_float + .1000000000000001);

# Switch values of scalars
my $first = 1;
my $second = 2;
($first, $second) = ($second, $first);
say "$first $second";

# ---------- MATH ----------
say "5 + 4 = ", 5 + 4;
say "5 - 4 = ", 5 - 4;
say "5 * 4 = ", 5 * 4;
say "5 / 4 = ", 5 / 4;
say "5 % 4 = ", 5 % 4;
say "5 ** 4 = ", 5 ** 4;

# Built in functions
# Includes Trig functions plus
say "EXP 1 = ", exp 1; # e to the power of
say "HEX 10 = ", hex 10; # Convert from hexidecimal
say "OCT 10 = ", oct 10; # Convert from Octal
say "INT 6.45 = ", int(6.45); # Truncate You can use parentheses
say "LOG 2 = ", log 2; # Number to the power of e
say "Random between 0 - 10 = ", int(rand 11);
say "SQRT 9 = ", sqrt 9;

# Assignment Operators
# +=, -=, *=, /=
my $rand_num = 5;
$rand_num += 1;
say "Number Incremented ", $rand_num;

# Shortcut Increment and Decrement
say "6++ = ", $rand_num++;
say "++6 = ", ++$rand_num;
say "6-- = ", $rand_num--;
say "--6 = ", --$rand_num;

# Order of operations
say "3 + 2 * 5 = ", 3 + 2 * 5;
say "(3 + 2) * 5 = ", (3 + 2) * 5;

