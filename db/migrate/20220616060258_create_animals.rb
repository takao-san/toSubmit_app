class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :nickname
      t.references :user, null: false, foreign_key: true
      t.belongs_to :user

      t.timestamps
    end
  end
end
