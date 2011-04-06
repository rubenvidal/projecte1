class Cliente < ActiveRecord::Base
  validates_presence_of :nombre, :apellido1, :apellido2, :direccion, :cod_postal, :fecha_nacimiento
end
