# frozen_string_literal: true

class CreateGames < ActiveRecord::Migration[7.0] # :nodoc:
  def change
    create_table :games do |t|
      t.integer :mode
      t.datetime :release_date
      t.string :developer
      t.references :system_requirement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
