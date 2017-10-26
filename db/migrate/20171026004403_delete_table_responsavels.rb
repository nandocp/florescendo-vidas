class DeleteTableResponsavels < ActiveRecord::Migration[5.1]
  def change
    drop_table :responsavels
  end
end
