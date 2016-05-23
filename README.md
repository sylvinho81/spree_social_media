SpreeSocialmedia
================

This extension provides a simple social media admin panel and a useful helper "link_to_social_media" to use it in your views.
You can use the helper "social_links_list", it will paint all the social media links that you have defined in the admin panel.


Dependencies
=======

You will need to install Font Awesome in your app.


Install
=======

Add the following line to your application's Gemfile.

gem "spree_social_media", :git => "https://github.com/sylvinho81/spree_social_media.git", :branch => '3-0-stable'

bundle install

bundle exec rails g spree_social_media:install



Examples
=======

  <%= link_to_social_media(:facebook, {:text => 'My Facebook page'.html_safe, :class => 'button'}) %>

  <%= raw(social_links_list) %>


TODO
====

. Refactor & improve the code.

. Write Rspecs, Tests tests...

...




Copyright (c) 2013 Pablo Torre, released under the New BSD License
