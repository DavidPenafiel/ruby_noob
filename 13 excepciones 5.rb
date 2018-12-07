def fullname(nom,ape)
  (nom.capitalize + ' ' + ape.capitalize)
rescue Exception  => error
  "El error es: #{error.message}"
  #retry #just once more for good luck
ensure
  puts "Nombre completo:"
end

puts fullname "david", "peñafiel"

# lista de tipos de error estándar

# NoMemoryError
# ScriptError
#   LoadError
#   NotImplementedError
#   SyntaxError
# SecurityError
# SignalException
#   Interrupt
# StandardError – default for rescue
#   ArgumentError
#     UncaughtThrowError
#   EncodingError
#   FiberError
#   IOError
#     EOFError
#   IndexError
#     KeyError
#     StopIteration
#   LocalJumpError
#   NameError
#     NoMethodError
#   RangeError
#     FloatDomainError
#   RegexpError
#   RuntimeError – default for raise
#   SystemCallError
#     Errno::*
#   ThreadError
#   TypeError
#   ZeroDivisionError
# SystemExit
# SystemStackError
# fatal – impossible to rescue
