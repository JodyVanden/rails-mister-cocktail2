class ChangeTypeColumnDescription < ActiveRecord::Migration[5.0]
  def change
    change_column :doses, :description, :text

  end
end
