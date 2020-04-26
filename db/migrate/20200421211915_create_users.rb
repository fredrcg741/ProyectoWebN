class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :correo
      t.string :clave
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :empresa_id
      t.string :estado
      t.string :foto_dir

      t.timestamps
    end
  end
end
