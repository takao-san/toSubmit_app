class CreateChecks < ActiveRecord::Migration[7.0]
  def change
    create_table :checks do |t|
      t.string :product
      t.string :like
      t.text :text
      t.date :date

      t.timestamps
    end
  end
end
