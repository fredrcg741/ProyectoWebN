class AddNivelToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nivel, :string
  end
end
