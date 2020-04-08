# frozen_string_literal: true

# == Schema Information
#
# Table name: plays
#
#  id         :bigint           not null, primary key
#  ends_on    :date             not null
#  starts_on  :date             not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_plays_on_title  (title)
#
class Play < ApplicationRecord
  validates :title, :starts_on, :ends_on, presence: true
end
