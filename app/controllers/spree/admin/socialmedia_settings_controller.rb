module Spree
  module Admin
    class SocialmediaSettingsController < Spree::Admin::BaseController
      def edit
        @config      = Spree::SocialmediaConfiguration.new
        @preferences = [:socialmedia_facebook,
                        :socialmedia_twitter,
                        :socialmedia_google_plus,
                        :socialmedia_pinterest,
                        :socialmedia_youtube,
                        :socialmedia_flickr,
                        :socialmedia_skype
                        ]
      end

      def update
        config = Spree::SocialmediaConfiguration.new

        params.each do |name, value|
          next unless config.has_preference? name
          config[name] = value
        end
        flash[:success] = Spree.t(:successfully_updated, resource: Spree.t('social_media.settings.title'))

        redirect_to edit_admin_socialmedia_settings_path
      end
    end
  end
end
