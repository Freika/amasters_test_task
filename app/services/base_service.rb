# frozen_string_literal: true

require 'dry/monads'
require 'dry/monads/do'

class BaseService
  include Dry::Monads[:result]
  include Dry::Monads::Do
end
