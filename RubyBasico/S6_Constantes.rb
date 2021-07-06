#constantes en mayuscula
MI_CONSTANTE="HOLA MUNDO"
#constantes en clases
class Message
  DEFAULT_MESSAGE = "Hello, world"
  def speak(message = nil)
    if message
      puts message
    else
      puts DEFAULT_MESSAGE
    end
  end
  end
  m=Message.new
  m.speak