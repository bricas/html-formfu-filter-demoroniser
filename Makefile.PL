use inc::Module::Install 0.91;

if ( -e 'MANIFEST.SKIP' ) {
    system( 'pod2text lib/HTML/FormFu/Filter/Demoroniser.pm > README' );
}

perl_version '5.008';

name 'HTML-FormFu-Filter-Demoroniser';
all_from 'lib/HTML/FormFu/Filter/Demoroniser.pm';

requires 'HTML::FormFu';
requires 'Text::Demoroniser';

test_requires 'Test::More';
extra_tests;

WriteAll;
