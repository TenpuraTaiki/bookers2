class AddYuzaIdToHons < ActiveRecord::Migration[5.1]
  def change
    add_column :hons, :yuza_id, :string
  end
end
