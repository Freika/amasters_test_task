# frozen_string_literal: true

module V1
  class Plays < Grape::API
    version 'v1', using: :path

    resource :plays do
      desc 'API for creating plays'
      get '/' do
        plays = Play.all
        present plays, with: Entities::Play
      end

      desc 'API for creating plays' do
        params Entities::Play.documentation
      end
      post '/' do
        Play.create(params)

        status 201
      end

      desc 'API for creating plays'
      delete '/destroy' do
        play = Play.find_by(params)
        play.destroy

        status 204
      end
    end
  end
end
