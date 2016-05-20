Spree::BaseHelper.class_eval do

  def social_links_list(options={})
    options = {
      :list_class          => 'social inline',
      :element_class       => '',
      :use_images          => true,
      :dynamic_backgrounds => true
    }.merge(options)

    output  = "<ul class=\"#{options[:list_class]}\">"

    networks = [:facebook, :twitter, :tuenti, :google_plus, :pinterest, :youtube, :flickr, :blog]
    networks.each do |network|
      link = nil
      if options[:use_images]
        image = image_tag("store/social/social-icon-#{network.to_s}.png", :alt => network.to_s.titlecase)
        link = link_to_social_media(network, {:text => image})
      else
        link = link_to_social_media(network)
      end

      if link
        output << "<li class=\"#{options[:element_class]} #{('icon background-'+network.to_s) if options[:dynamic_backgrounds]}\">"+link+'</li>'
      end
    end

    output << '</ul>'
    output.html_safe
  end

  def link_to_social_media(network, options = {})
    symbolized_network = ('socialmedia_'+(network.to_s)).to_sym
    config = Spree::SocialmediaConfiguration.new
    result = nil
    # options
    options[:anchor] ||= true
    options[:text]   ||= network.to_s.titlecase
    options[:title]  ||= network.to_s.titlecase
    options[:target] ||= "_blank"

    if config.has_preference? symbolized_network
      link   = config[symbolized_network]
      result = link unless link.empty?

      if link and !link.empty? and options[:anchor]
        result = link_to options[:text], link, options.delete_if{|key, value| [:anchor, :text].include? key}
      end
    end

    return result
  end

end
