class ContactsController < ApplicationController

  def new
    data = params[:contact]
    msg = ContactForm.new( data )
    if msg.deliver
      flash[:info] = 'Gracias por tu interés. Pronto nos comunicaremos contigo para atender tus comentarios.'
    else
      flash[:error] = 'Ups! aparentemente algo salió mal. Por favor intenta de nuevo.'
    end
    redirect_to '/contacto'
  end

end
