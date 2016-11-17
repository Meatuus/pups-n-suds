class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :dog_breed
      t.string :dog_size
      t.string :pets_name
      t.integer :phone
      t.string :email
      t.string :comments

      t.timestamps
    end
  end
end
