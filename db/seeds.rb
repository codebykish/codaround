User.destroy_all

User.create!([
  {name: "Wayne", email: "piet@piet1.com", password: 123456, admin: false},
  {name: "Taddeo", email: "piet@piet2.com", password: 123456, admin: true},
  {name: "Klaas", email: "piet@piet3.com", password: 123456, admin: false},
  {name: "Erik", email: "piet@piet4.com", password: 123456, admin: false},
  {name: "Arno", email: "piet@piet5.com", password: 123456, admin: false},
  {name: "Mike", email: "piet@piet6.com", password: 123456, admin: false},
  {name: "Rembert", email: "piet@piet7.com", password: 123456, admin: false},
  {name: "Matt", email: "piet@piet8.com", password: 123456, admin: false},
  {name: "Michiel", email: "piet@piet9.com", password: 123456, admin: false},
  {name: "Cor", email: "piet@piet0.com", password: 123456, admin: false},
  {name: "Ernest", email: "piet@piet10.com", password: 123456, admin: false},
  {name: "Lara", email: "piet@piet11.com", password: 123456, admin: false},
  {name: "Floris", email: "piet@piet12.com", password: 123456, admin: false},
  {name: "Friso", email: "piet@piet13.com", password: 123456, admin: false},
  {name: "Aljaz", email: "piet@piet14.com", password: 123456, admin: false},
  {name: "Alex", email: "piet@piet15.com", password: 123456, admin: false},
  {name: "Xander", email: "piet@piet16.com", password: 123456, admin: false},
  {name: "Jhjdn", email: "piet@piet17.com", password: 123456, admin: false},
  {name: "Anthony", email: "piet@piet18.com", password: 123456, admin: false},
  {name: "Maurice", email: "piet@piet19.com", password: 123456, admin: false},
  {name: "Bruna", email: "piet@piet20.com", password: 123456, admin: false},


])

(1..50).each do |day|
  Day.create!(date: date.(today + day));
end
