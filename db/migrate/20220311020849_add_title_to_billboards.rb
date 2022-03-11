class AddTitleToBillboards < ActiveRecord::Migration[7.0]
  def change
    add_column :billboards, :title, :string
  end
end
