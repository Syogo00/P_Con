class AddAddressToMember < ActiveRecord::Migration[6.1]
  def up
   add_column :Members, :address, :string
  end
end
