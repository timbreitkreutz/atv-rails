# frozen_string_literal: true

module ATV
  class Engine < ::Rails::Engine
    JAVASCRIPTS = %w[atv.js atv.min.js].freeze

    initializer "ATV.configure_rails_initialization" do
      if Rails.application.config.respond_to?(:assets)
        Rails.application.config.assets.precompile += JAVASCRIPTS
      end
    end
  end
end
