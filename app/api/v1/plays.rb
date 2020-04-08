# frozen_string_literal: true

module V1
  class Plays < Grape::API
    version 'v1', using: :path

    resource :plays do
      desc 'API for creating plays'
      post '/create' do
        Rails.logger.info("You've just created a play!")
      end

      desc 'API for creating plays'
      delete '/delete' do
        Rails.logger.info("You've just deleted a play!")
      end

      desc 'API for creating plays'
      get '/' do
        Rails.logger.info("Here's a list of our plays!")
      end
    end
  end
end
