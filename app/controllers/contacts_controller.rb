class ConactsController < ApplicationController

  def new
    data = params[:contact]
    msg = ContactForm.new( data )
    if msg.deliver
      flash[:msg] = 'Mensaje enviado'
    else
      flash[:error] = 'Error al enviar mensaje.'
    end
    redirect_to '/contacto'
  end

end
