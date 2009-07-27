use Test::More tests => 4;

BEGIN {
    use_ok('LWP::UserAgent');
    use_ok('HTML::TokeParser::Simple');
    use_ok('HTML::Entities');
	use_ok( 'WWW::BashOrg' );
}

diag( "Testing WWW::BashOrg $WWW::BashOrg::VERSION, Perl $], $^X" );
