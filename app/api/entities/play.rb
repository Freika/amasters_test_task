# frozen_string_literal: true

class Entities::Play < Grape::Entity
  expose :title,      documentation: { type: 'string', desc: 'Play title' }
  expose :starts_on,  documentation: { type: 'date', desc: 'Date of play premier' }
  expose :ends_on,    documentation: { type: 'date', desc: 'Date of last show' }
end
