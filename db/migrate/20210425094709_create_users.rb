class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :nickname
      t.string :email
      t.string :password
      t.string :avatar
      t.string :slug

      t.timestamps
    end
  end
end
