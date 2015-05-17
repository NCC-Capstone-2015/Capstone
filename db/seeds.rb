# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

logins = Login.create(username: 'cvdonley', password: 'password', first_name: 'Cornelius', last_name: 'Donley')
users = User.create(login_id: logins.id, email_addr: 'cvdonley@noctrl.edu', city: 'Naperville', state: 'IL', zip: '60563')
user_phones = UserPhone.create(user_id: users.id, area_code: '260', prefix: '704', suffix: '0030')
