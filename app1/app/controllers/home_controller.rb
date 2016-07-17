# encoding: utf-8
class HomeController < ApplicationController
  layout "bootstrap", :only => "index"
  def index
    @titulo = "Empresa ROR - Inicio"
  end

  def contacto
    @titulo = "Empresa ROR - Contacto"
  end

  def localizacion
    @titulo = "Empresa ROR - Localización"
  end

  def quienes_somos
    @titulo = "Empresa ROR - ¿Quiénes Somos?"
  end

  def servicios
    @titulo = "Empresa ROR - Servicios"
  end
end
