class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.string :lastname
      t.string :cellphone
      t.string :email, :null => false
      t.timestamps
    end
  end
end
