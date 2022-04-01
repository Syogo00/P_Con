class RenameBirthYaarToBirthYearInMembers < ActiveRecord::Migration[6.1]
  def change
    rename_column :members, :birth_yaar, :birth_year
  end
end
