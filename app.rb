# encoding: utf-8

enable :inline_templates

get '/' do
  @people = Person.all
  haml :index
end

__END__
@@layout
!!! 5
%html
  %head
    %link{ href: '/assets/application.css', rel: 'stylesheet', type: 'text/css' }
    %script{ src: '/assets/application.js', type: 'text/javascript' }
  %body
    %div
      = yield
@@index
#result
  - @people.each do |p|
    %div== #{p[:name]} #{p[:surname]}
