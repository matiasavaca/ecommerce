puts 'Destruyendo categorias y productos viejos'
Product.destroy_all
Category.destroy_all

puts 'Creando usuario'

usuario1 = User.create(email: "matias@gmail.com", password: "123456", username: "matias")
usuario2 = User.create(email: "carlos@gmail.com", password: "123456", username: "carlos")
usuario3 = User.create(email: "cecilia@gmail.com", password: "123456", username: "cecilia", admin: true)

puts 'Creando categorias'
categoria1 = Category.create(name: "Pc armada")
categoria2 = Category.create(name: "Celulares")
categoria3 = Category.create(name: "Television")
categoria4 = Category.create(name: "Ropa")
categoria5 = Category.create(name: "Calzado")
categoria6 = Category.create(name: "Cocina")

puts 'creando productos 1'
Product.create(title: 'Pc Intel 16 RAM', description: '16 gb ram 512 gb ssd', price: 150, category: categoria1, user_id: usuario1.id)
Product.create(title: 'Pc AMD 16RAM', description: '16 gb ram 512 gb ssd', price: 150, category: categoria1, user_id: usuario1.id)
puts 'creando productos 2'
Product.create(title: 'Xiaomi X4', description: '128 gb 8 gb ram', price: 230, category: categoria2, user_id: usuario1.id)
Product.create(title: 'Xiaomi X5', description: '64 gb 6 gb ram', price: 230, category: categoria2, user_id: usuario1.id)
puts 'creando productos 3'
Product.create(title: 'TV Samsung', description: '65 pulgadas full HD', price: 460, category: categoria3, user_id: usuario2.id)
Product.create(title: 'TV Phillips', description: '60 pulgadas full HD', price: 450, category: categoria3, user_id: usuario2.id)
puts 'creando productos 4'
Product.create(title: 'Campera', description: 'Talle XL', price: 100, category: categoria4, user_id: usuario2.id)
Product.create(title: 'Remera', description: 'Talle L', price: 110, category: categoria4, user_id: usuario2.id)
puts 'creando productos 5'
Product.create(title: 'Zapatillas', description: 'Marca DC talle 40 ', price: 150, category: categoria5, user_id: usuario2.id)
Product.create(title: 'Botas', description: 'Marca Timberland talle 43 ', price: 180, category: categoria5, user_id: usuario2.id)
puts 'creando productos 6'
Product.create(title: 'Cucharas', description: 'set de 12 cucharas', price: 45, category: categoria6, user_id: usuario1.id)
Product.create(title: 'Tenedores', description: 'set de 12 tenedores', price: 40, category: categoria6, user_id: usuario1.id)

Product.create(title: 'Pc Intel 32 RAM', description: '32gb ram 512 gb ssd', price: 190, category: categoria1, user_id: usuario2.id)
Product.create(title: 'TV SONY', description: '70 pulgadas full HD', price: 490, category: categoria3, user_id: usuario1.id)

Product.create(title: 'TV SONY', description: '80 pulgadas full HD', price: 590, category: categoria3, user_id: usuario3.id)
