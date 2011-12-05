package t::lib::SiteMapApp;
use Dancer;
use Dancer::Plugin::SiteMap;

set template => 'TemplateToolkit';
get '/foo' => sub { 'foo' };
get '/bar' => sub { 'bar' };
get '/baz/:name' => sub { 'baz' };

1;
