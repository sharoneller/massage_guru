class AddFieldsToRecommendations < ActiveRecord::Migration
  def change
    add_column :recommendations, :description, :text
    add_column :recommendations, :pressure, :text
  end
end
