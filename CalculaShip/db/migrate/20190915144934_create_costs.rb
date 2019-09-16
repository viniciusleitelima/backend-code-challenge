class CreateCosts < ActiveRecord::Migration[6.0]
  def change
    create_table :costs do |t|
      t.string :peso
      t.string :origem
      t.string :destino

      t.timestamps
    end
  end
end
