class AddImgloteToDigitals < ActiveRecord::Migration[6.0]
  def change
    add_column :digitals, :imglote, :string
  end
end
