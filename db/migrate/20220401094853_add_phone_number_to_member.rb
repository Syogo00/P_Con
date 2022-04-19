class AddPhoneNumberToMember < ActiveRecord::Migration[6.1]
  def change
   add_column :members, :phone_number, :integer
  end
end
