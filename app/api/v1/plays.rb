# frozen_string_literal: true

module V1
  class Plays < Grape::API
    version 'v1', using: :path

    resource :plays do
      desc 'API for creating plays'
      params do
        requires :title,      type: String, desc: 'Play title'
        requires :starts_on,  type: Date, desc: 'Date of play premier'
        requires :ends_on,    type: Date, desc: 'Date of last show'
      end
      post '/create' do
        Rails.logger.info("You've just created a play!")
      end

      desc 'API for creating plays'
      delete '/delete' do
        Rails.logger.info("You've just deleted a play!")
      end

      desc 'API for creating plays'
      get '/' do
        Play.pluck(:title, :starts_on, :ends_on)
      end
    end
  end
end
