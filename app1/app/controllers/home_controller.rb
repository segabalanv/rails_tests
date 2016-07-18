# encoding: utf-8
class HomeController < ApplicationController
  layout "bootstrap", :only => "index"
  def index
    @titulo = "Empresa ROR - Inicio"
  end

  def contacto
    @titulo = "Formulario de Contacto"
    if request.post?
      # Enviar el correo electrónico
      begin
        if Email.micorreo(params).deliver and Email.enviar(params).deliver
          flash.now[:noticia] = "Se ha enviado correctamente"
        end
      rescue
        flash.now[:error] = "Ha ocurrido un error. Por favor contacte al administrador"
      end
    end
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
