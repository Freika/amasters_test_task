# frozen_string_literal: true

class RootApi < Grape::API
  namespace do
    format :json

    prefix :api

    mount V1::Plays
  end

  rescue_from Grape::Exceptions::ValidationErrors do |e|
    error!(e, 400)
  end

  rescue_from :all do |e|
    raise e if Rails.env.development? || Rails.env.test?

    error_response(message: 'Internal server error', status: 500)
  end
end
