class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :nickname
      t.string :species
      t.integer :level
      t.timestamps
    end
  end
end
