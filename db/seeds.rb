# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Organizations
Organization.create(name: 'acm', nif: '123456789', password: '123456', contact: '912345678', address: 'Av. de Berna, 45 A
1067-001 Lisboa, Portugal', email: '123@acm.pt')
Organization.create(name: 'gulbenkian', nif: '987654321', password: '123456', contact: '961234578', address: 'Av. de Berna, 45 A
1067-001 Lisboa, Portugal', email: 'hello@gulbenkian.pt')
Organization.create(name: 'lotus', nif: '111222333', password: '123456', contact: '921345678', address: 'Av. de Berna, 45 A
1067-001 Lisboa, Portugal', email: 'hello@lotus.pt')

# Refugees
Refugee.create(name: 'Anne Marie', birthday: "1971-06-24", gender: true, degree_id: 6)
Refugee.create(name: 'Michael Tutuola', birthday: "1975-06-24", gender: false, degree_id: 5)
Refugee.create(name: 'John Doe', birthday: "1990-06-24", gender: false, father_id: 2, mother_id: 1, degree_id: 7)
Refugee.create(name: 'Jane Doe', birthday: "2007-06-24", gender: true, father_id: 2, mother_id: 1, degree_id: 2)

# Professions
Profession.create(name: 'Professor Universitário')
Profession.create(name: 'Professor Secundário')
Profession.create(name: 'Seguros')
Profession.create(name: 'Programador')
Profession.create(name: 'Secretária')
Profession.create(name: 'Assistente')
Profession.create(name: 'Bombeiro')
Profession.create(name: 'Enfermeiro')
Profession.create(name: 'Médico')

# Refugee Profession Link
RefugeesProfessionsLink.create(refugee_id: 1, profession_id: 8)
RefugeesProfessionsLink.create(refugee_id: 2, profession_id: 7)
RefugeesProfessionsLink.create(refugee_id: 3, profession_id: 4)

# Degrees
Degree.create(name: 'N/D')
Degree.create(name: 'Ensino Primário')
Degree.create(name: 'Ensino Básico 2º Ciclo')
Degree.create(name: 'Ensino Básico 3º Ciclo')
Degree.create(name: 'Ensino Secundário')
Degree.create(name: 'Bacharelato')
Degree.create(name: 'Mestrado')
Degree.create(name: 'Doutoramento')

# Languages
Language.create(name: 'Português')
Language.create(name: 'Inglês')
Language.create(name: 'Árabe')
Language.create(name: 'Espanhol')
Language.create(name: 'Russo')
Language.create(name: 'Hindi')
Language.create(name: 'Chinês')

# Refugee Language Link
RefugeesLanguagesLink.create(refugee_id: 1, language_id: 3)
RefugeesLanguagesLink.create(refugee_id: 2, language_id: 3)
RefugeesLanguagesLink.create(refugee_id: 3, language_id: 3)
RefugeesLanguagesLink.create(refugee_id: 4, language_id: 3)
RefugeesLanguagesLink.create(refugee_id: 1, language_id: 2)
RefugeesLanguagesLink.create(refugee_id: 3, language_id: 2)
RefugeesLanguagesLink.create(refugee_id: 3, language_id: 1)
