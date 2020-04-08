# frozen_string_literal: true

class CreatePlays < ActiveRecord::Migration[6.0]
  def change
    create_table :plays do |t|
      t.string :title, null: false
      t.date :starts_on, null: false
      t.date :ends_on, null: false

      t.timestamps
    end
    add_index :plays, :title
  end
end
