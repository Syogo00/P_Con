class AddPhoneNumberToMember < ActiveRecord::Migration[6.1]
  def up
    add_column :Members, :phone_number, :integer
  end
end
