# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# users.rb
User.create!(
  email: 'usuario1@example.com',
  password: '123456',
  password_confirmation: '123456'
)

User.create!(
  email: 'usuario2@example.com',
  password: '123456',
  password_confirmation: '123456'
)


# articles.rb
Article.create!(
  title: 'Título del artículo 1',
  banner_url: 'url_de_la_imagen1.jpg',
  content: 'Contenido del artículo 1',
  user_id: 1 # Asigna el ID del usuario que creó este artículo
)

Article.create!(
  title: 'Título del artículo 2',
  banner_url: 'url_de_la_imagen2.jpg',
  content: 'Contenido del artículo 2',
  user_id: 2 # Asigna el ID del usuario que creó este artículo
)

# comments.rb
Comment.create!(
  title: 'Comentario 1 para el artículo 1',
  content: 'Contenido del comentario 1',
  user_id: 1, # Asigna el ID del usuario que escribió este comentario
  article_id: 1 # Asigna el ID del artículo al que pertenece este comentario
)

Comment.create!(
  title: 'Comentario 2 para el artículo 1',
  content: 'Contenido del comentario 2',
  user_id: 2, # Asigna el ID del usuario que escribió este comentario
  article_id: 1 # Asigna el ID del artículo al que pertenece este comentario
)

# Puedes continuar creando más seeds según tus necesidades.
