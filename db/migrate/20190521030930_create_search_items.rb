class CreateSearchItems < ActiveRecord::Migration[5.1]
  def change
    create_table :search_items do |t|
      t.references :user, foreign_key: true
      t.string :city

      t.timestamps
    end
  end
end
