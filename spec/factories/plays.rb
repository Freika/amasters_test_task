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
FactoryBot.define do
  factory :play do
    title     { FFaker::Book.title }
    starts_on { Date.tomorrow.to_s }
    ends_on   { (Date.tomorrow + 2.days).to_s }
  end
end
