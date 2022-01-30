# frozen_string_literal: true

class CreateSystemRequirements < ActiveRecord::Migration[7.0] # :nodoc:
  def change
    create_table :system_requirements do |t|
      t.string :name
      t.string :operational_system
      t.string :storage
      t.string :processor
      t.string :memory
      t.string :video_board

      t.timestamps
    end
  end
end
