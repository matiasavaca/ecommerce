class BasePolicy
  attr_reader :record

  def initialize(record)
    @record = record
  end

  #mitodo por si nos olvidamos de declarar un metodo en el policy
  #viene a buscar un method, ya sea ejemplo index, como no lo encuentra entra al method missing y cuiando entra se fija si el usuario es administrador o no
  def method_missing(m, *args, &block)
    false
  end
end
