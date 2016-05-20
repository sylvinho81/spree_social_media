class Spree::SocialmediaConfiguration < Spree::Preferences::Configuration

  preference :socialmedia_facebook, :string, :default => ''
  preference :socialmedia_twitter, :string, :default => ''
  preference :socialmedia_google_plus, :string, :default => ''
  preference :socialmedia_pinterest, :string, :default => ''
  preference :socialmedia_youtube, :string, :default => ''
  preference :socialmedia_flickr, :string, :default => ''
  preference :socialmedia_skype, :string, :default => ''
end
