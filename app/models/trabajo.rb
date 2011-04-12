class Trabajo < ActiveRecord::Base
  has_many :tareas, :dependent => :destroy
  validates_presence_of :nombre, :descripcion, :fecha_alta
end

