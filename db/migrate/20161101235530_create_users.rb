class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users, {:id => false} do |t|
      t.primary_key :user_id,       :null => false
      t.string      :user_name,     :null => false
      t.string      :email,         :null => false
      t.string      :rank,          :null => false
      t.string      :favorite_pokemon
      t.float       :points,        :null => false
      t.text        :about
      t.string      :session_token, :null => false
      t.timestamps
    end
  end
  
  def down
    drop_table :users
  end
end
