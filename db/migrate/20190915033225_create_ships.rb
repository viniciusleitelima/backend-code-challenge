class CreateShips < ActiveRecord::Migration[6.0]
  def change
    create_table :ships do |t|
      t.string :origem
      t.string :destino
      t.string :peso

      t.timestamps
    end
  end
end