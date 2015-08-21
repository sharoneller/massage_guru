class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.text :modality
      t.text :duration
      t.text :frequency

      t.timestamps
    end
  end
end
