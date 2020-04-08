# frozen_string_literal: true

class Plays::Destroy < BaseService
  def call(params)
    play = Play.find_by(params)
    play.destroy!

    play.persisted? ? Success(200) : Failure(:could_not_delete_play)
  end
end
