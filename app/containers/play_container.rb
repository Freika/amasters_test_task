# frozen_string_literal: true

class PlayContainer
  extend Dry::Container::Mixin

  register(:create)  { Plays::Create.new }
  register(:destroy) { Plays::Destroy.new }
end
