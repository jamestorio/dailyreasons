class CreateTodays < ActiveRecord::Migration
  def change
    create_table :todays do |t|
      t.date :date
      t.string :Reason_to_celebrate

      t.timestamps
    end
  end
end
