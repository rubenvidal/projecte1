class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.string :direccion
      t.string :cod_postal
      t.date :fecha_nacimiento

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
