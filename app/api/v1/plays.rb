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
        result = PlayContainer[:create].call(params)

        result.success? ? status(201) : status(:no_content)
      end

      desc 'API for creating plays'
      delete '/destroy' do
        result = PlayContainer[:destroy].call(params)

        result.success? ? status(204) : status(:no_content)
      end
    end
  end
end
