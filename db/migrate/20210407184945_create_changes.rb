class CreateChanges < ActiveRecord::Migration[6.1]
  def change
    create_table :changes do |t|
      t.string :date
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :transportation, null: false, foreign_key: true
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
