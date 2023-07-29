class ProductPolicy < BasePolicy
  #comprueba si el usuario es el mismo que creo el producto
  def edit
    record.owner?
  end

  def update
    record.owner?
  end

  def destroy
    record.owner?
  end
end
