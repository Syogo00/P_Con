class CreateConditions < ActiveRecord::Migration[6.1]
  def change
    create_table :conditions do |t|
      
      t.integer :member_id
      t.integer :temperature
      t.integer :status, default: "0"
      t.string :explation
      

      t.timestamps
    end
  end
end
