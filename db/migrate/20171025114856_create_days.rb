class CreateDays < ActiveRecord::Migration[5.1]
  def change
    create_table :days do |t|
      t.references :pair, foreign_key: true

      t.timestamps
    end
  end
end
