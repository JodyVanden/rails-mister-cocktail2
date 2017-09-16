class RenameVolumeToDescriptionInDoses < ActiveRecord::Migration[5.0]
  def change
    rename_column :doses, :volume, :description
    change_column :doses, :description, :text
  end
end
