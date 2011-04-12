class AddDescripcionToTareas < ActiveRecord::Migration
  def self.up
    add_column :tareas, :descripcion, :string
  end

  def self.down
    remove_column :tareas, :descripcion
  end
end
