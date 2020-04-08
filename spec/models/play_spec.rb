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
#  index_plays_on_title                            (title)
#  index_plays_on_title_and_starts_on_and_ends_on  (title,starts_on,ends_on) UNIQUE
#
describe Play, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:starts_on) }
  it { is_expected.to validate_presence_of(:ends_on) }
end
