SpreeSocialmedia
================

This extension provides a simple social media admin panel and a useful helper "link_to_social_media" to use it in your views.
You can use the helper "social_links_list", it will paint all the social media links that you have defined in the admin panel.


Dependencies
=======

You will need to install Font Awesome in your app.

Examples
=======

  <%= link_to_social_media(:facebook, {:text => 'My Facebook page'.html_safe, :class => 'button'}) %>

  <%= raw(social_links_list) %>


Copyright (c) 2013 Pablo Torre, released under the New BSD License
