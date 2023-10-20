class AddNullOptionForTable < ActiveRecord::Migration[7.0]
  def change
    change_column_null :tables, :title, false
  end
end
