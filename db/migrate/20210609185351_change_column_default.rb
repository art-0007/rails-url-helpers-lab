class ChangeColumnDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default :students, :active, from: true, to: false
  end
end
