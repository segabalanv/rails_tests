class Email < ActionMailer::Base
  default from: "empresa_ror@rails.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.email.recepcion.subject
  #
  def micorreo(parametros)
    enviar_correo(parametros, "segabalanvun@hotmail.com", "Mensaje de la App1")
  end
  
  def enviar(parametros)
    enviar_correo(parametros, parametros[:email], "Empresa ROR - Gracias por contactar con nosotros")
  end
  
private
  
  def enviar_correo(parametros, email, asunto)
    @nombre = parametros[:nombre]
    @email = parametros[:email]
    @asunto = parametros[:asunto]
    @contenido = parametros[:contenido]
    mail(:to => email, :subject => asunto) do |format|
      format.text
      format.html
    end
  end
  
end