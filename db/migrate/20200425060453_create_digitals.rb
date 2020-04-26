class CreateDigitals < ActiveRecord::Migration[6.0]
  def change
    create_table :digitals do |t|
      t.string :nro_lote
      t.string :correo
      t.string :documento
      t.integer :nro_pages

      t.timestamps
    end
  end
end
