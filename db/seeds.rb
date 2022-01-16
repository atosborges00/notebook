# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kind.create!([{description: 'Amigo'}, 
              {description: 'Contato'}, 
              {description: 'Comercial'}])
puts 'Gerando os tipos de contato (Kinds) [OK]'


Contact.create!([
    {name: 'Light Yagami', email: 'kira@gmail.com', kind: Kind.all.sample,  rmk: 'obs'},
    {name: 'Naruto Uzumaki', email: 'naruto@gmail.com', kind: Kind.all.sample,  rmk: ''},
    {name: 'Monkey D. Luffy', email: 'rei_dos_piratas@gmail.com', kind: Kind.all.sample,  rmk: 'carne'}
])
puts 'Gerando os tipos de Contatos (Contacts) [OK]'


Contact.all.each do |contact|
    Address.create!([
        {street: 'Rua Gayoso', city: 'São Paulo', state: 'SP', contact: contact}
    ])
end
puts 'Gerando Endereços (Addresses) [OK]'


Contact.all.each do |contact|
    Phone.create!([
        {phone: '+55 86 99911-2233', contact: contact}
    ])
end
puts 'Gerando Telefones (Phones) [OK]'