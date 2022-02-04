# frozen_string_literal: true

class CreateCategories < ActiveRecord::Migration[7.0] # :nodoc:
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
