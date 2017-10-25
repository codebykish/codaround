class AddDateToDay < ActiveRecord::Migration[5.1]
  def change
    add_column :days, :day, :date
  end
end
