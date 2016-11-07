class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.integer :poke_id
      t.string :poke_name
      t.integer :height
      t.integer :weight
      t.integer :base_experience
      t.integer :generation
      t.timestamps
    end
  end
end
