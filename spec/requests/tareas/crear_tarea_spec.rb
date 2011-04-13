# encoding: utf-8
require 'spec_helper'

describe 'Tareas' do
#  it 'deberia tener un trabajo asignado' do
    #should have_one :trabajo
  #end
  it 'creando una tarea' do
    visit new_trabajo_tarea_path(@trabajo)
    fill_in "nombre", :with => "tarea xx"
  end
end
