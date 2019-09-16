class CreateDistances < ActiveRecord::Migration[6.0]
  def change
    create_table :distances do |t|
      t.string :origem
      t.string :destino
      t.string :distancia

      t.timestamps
    end
  end
end
