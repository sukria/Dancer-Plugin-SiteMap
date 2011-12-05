#!perl
use strict;
use warnings;
use Test::More import => ['!pass'];

use t::lib::SiteMapApp;

use Dancer::Test 't::lib::SiteMapApp';

my $r = dancer_response GET => '/sitemap';
like $r->[2][0], qr{<ul class="sitemap">.*
<li><a href="/bar">/bar</a></li>.*
<li><a href="/foo">/foo</a></li>.*
<li><a href="/sitemap">/sitemap</a></li>.*
<li><a href="/sitemap.xml">/sitemap.xml</a></li>.*
</ul>}m;


done_testing;
