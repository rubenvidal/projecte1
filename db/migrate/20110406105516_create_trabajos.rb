class CreateTrabajos < ActiveRecord::Migration
  def self.up
    create_table :trabajos do |t|
      t.string :nombre
      t.string :descripcion
      t.date :fecha_alta

      t.timestamps
    end
  end

  def self.down
    drop_table :trabajos
  end
end
