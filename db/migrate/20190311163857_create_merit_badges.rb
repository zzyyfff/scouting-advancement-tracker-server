# frozen_string_literal: true

class CreateMeritBadges < ActiveRecord::Migration[5.2]
  def change
    create_table :merit_badges do |t|
      t.string :name, null: false
      t.boolean :completed, default: false
      t.text :notes, default: ''
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
