# frozen_string_literal: true

require "rails"
require "decidim/core"

module Decidim
  module FriendlySignup
    # This is the engine that runs on the public interface of friendly_signup.
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::FriendlySignup

      routes do
        # Add engine routes here
        # resources :friendly_signup
        # root to: "friendly_signup#index"
      end

      initializer "FriendlySignup.webpacker.assets_path" do
        Decidim.register_assets_path File.expand_path("app/packs", root)
      end
    end
  end
end
