puts "Destruyendo operaciones"
Operation.destroy_all
puts "Destruyendo publicaciones"
Publication.destroy_all

puts "Creando publicaciones"
pub1 = Publication.create!(categoria: "Vaquillonas", cantidad: "110", raza: "Aberdeen Angus Negro", demanda: 1, oferta: 0)
pub2 = Publication.create!(categoria: "Nobillo", cantidad: "70", raza: "Braford", demanda: 0, oferta: 1)
pub3 = Publication.create!(categoria: "Ternero", cantidad: "65", raza: "Aberdeen Angus Colorado", demanda: 1, oferta: 0)

puts "Creando operaciones"

op1 = Operation.create!(nota: "algo paso", publication_id: pub1.id)
op2 = Operation.create!(nota: "algo no paso del todo", publication_id: pub2.id)

puts "Todo listo!"
