# frozen_string_literal: true

class AddUniquenessCompositeIndexOnPlays < ActiveRecord::Migration[6.0]
  disable_ddl_transaction!

  def change
    add_index :plays, %w[title starts_on ends_on], unique: true, algorithm: :concurrently
  end
end
