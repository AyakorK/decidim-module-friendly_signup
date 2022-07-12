# frozen_string_literal: true

module Decidim
  module FriendlySignup
    # This is the engine that runs on the public interface of `FriendlySignup`.
    class AdminEngine < ::Rails::Engine
      isolate_namespace Decidim::FriendlySignup::Admin

      paths["db/migrate"] = nil
      paths["lib/tasks"] = nil

      routes do
        # Add admin engine routes here
        # resources :friendly_signup do
        #   collection do
        #     resources :exports, only: [:create]
        #   end
        # end
        # root to: "friendly_signup#index"
      end

      def load_seed
        nil
      end
    end
  end
end
