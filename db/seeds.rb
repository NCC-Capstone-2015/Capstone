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
company2 = Company.create(company_name: 'RobCo')
login2 = Login.create(username: 'jduser', password: 'password', first_name: "John", last_name: 'Doe', login_type: 0)
user2 = User.create(login_id: login2.id, email_addr: 'jjdoe@noctrl.edu', city: 'Naperville', state: 'IL', zip: '60540', spouse_first_name: 'Jane', spouse_last_name: 'Doe', spouse_middle_initial: 'J', number_children: 1, ethnicity: 'hispanic', general_opt_in: 1, email_opt_in: 1, phone_opt_in: 1, badges_opt_in: 1, status: 1, company_id: company2.id, job_title: 'Systems Analyst', birth_day: '1980-01-01', start_date:'2014-09-15', salary_range: 3, street: '610 N. Brainard St.')
user_phone2 = UserPhone.create(user_id: user2.id, country_code: '1', area_code: '260', prefix: '630', suffix: '1031', user_phones_type: 1)
company3 = Company.create(company_name: 'Vandelay Industries')
login3 = Login.create(username: 'gcuser', password: 'password', first_name: "George", last_name: 'Costanza', login_type: 0)
user3 = User.create(login_id: login3.id, email_addr: 'gcostanza@noctrl.edu', city: 'Manhattan', state: 'NY', zip: '12345', number_children: 0, ethnicity: 'caucasian', general_opt_in: 0, email_opt_in: 0, phone_opt_in: 0, badges_opt_in: 1, status: 1, company_id: company3.id, job_title: 'Importer/Exporter', birth_day: '1968-02-02', start_date:'2014-09-15', salary_range: 2, street: '1100 South St.')
user_phone3 = UserPhone.create(user_id: user3.id, area_code: '110', prefix: '120', suffix: '1111', user_phones_type: 0)
login4 = Login.create(username: 'cwuser', password: 'password', first_name: "Christian", last_name: 'Winger', login_type: 0)
user4 = User.create(login_id: login4.id, email_addr: 'cwinger@noctrl.edu', city: 'Bloomington', state: 'IL', zip: '61705', number_children: 0, ethnicity: 'caucasian', general_opt_in: 0, email_opt_in: 1, phone_opt_in: 1, badges_opt_in: 1, status: 0, birth_day: '1993-04-10', start_date:'2011-09-15', salary_range: 0, street: '9507 Grandville')
user_phone4 = UserPhone.create(user_id: user4.id, area_code: '309', prefix: '826', suffix: '2303', user_phones_type: 0)
list = SavedList.create(login_id: logins.id, list_name: 'My First List', date_saved: '2015-05-28')
list_users = SavedListUser.create(saved_list_id: list.id, user_id: user3.id)
