# frozen_string_literal: true

class Plays::Create < BaseService
  def call(params)
    play = Play.create(params)

    play.persisted? ? Success(201) : Failure(:could_not_create_play)
  end
end
