class CreatePontoDeDistribuicaos < ActiveRecord::Migration[6.0]
  def change
    create_table :ponto_de_distribuicaos do |t|

      t.timestamps
    end
  end
end
