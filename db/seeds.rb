# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all


City.create(name: 	  'Atlanta',       photoUrl: 'http://i1.wp.com/www.atlantaskyriseblog.com/wp-content/uploads/2016/07/ohm-wlad-02-towercam05-04b.jpg',
			location: 'Georgia');
City.create(name: 	  'London',        photoUrl: 'https://cdn.londonandpartners.com/visit/general-london/areas/77954-640x360-london_eye_housesofparliament_skyline_640.jpg',
			location: 'England');
City.create(name:     'San Francisco', photoUrl: 'http://assets.lookbookspro.com/bernstein-andriulli/gm_52c70ea2-a228-421f-9b72-48520af4b6c2.jpg',
			location: 'California');
