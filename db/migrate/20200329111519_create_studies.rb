class CreateStudies < ActiveRecord::Migration[5.2]
  def change
    create_table :studies do |t|
      t.datetime :date, null: false
      t.string :field, null: false
      t.float :studytime, null: false
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
