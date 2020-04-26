class CreateIndizacions < ActiveRecord::Migration[6.0]
  def change
    create_table :indizacions do |t|
      t.string :tipo_doc
      t.integer :num_doc
      t.date :fecha_doc
      t.integer :ini_fol
      t.integer :fin_fol
      t.integer :ini_doc
      t.integer :fin_doc
      t.integer :doc_id
      t.integer :user_id

      t.timestamps
    end
  end
end
