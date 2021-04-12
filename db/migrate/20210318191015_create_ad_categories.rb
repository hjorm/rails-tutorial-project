# frozen_string_literal: true

class CreateAdCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :ad_categories, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
