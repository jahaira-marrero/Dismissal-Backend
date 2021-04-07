class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :address
      t.integer :homeroom
      t.string :guardian
      t.integer :phone
      t.belongs_to :transportation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
