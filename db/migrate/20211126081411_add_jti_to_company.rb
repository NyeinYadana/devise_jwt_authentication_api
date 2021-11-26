class AddJtiToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :jti, :string
    add_index :companies, :jti, unique: true
  end
end
