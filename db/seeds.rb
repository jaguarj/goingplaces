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

# Three bad boys!
User.create(email:    'abc@abc.com',   password: 'abcabc', favorite_city: 'Toledo', current_city: 'Hotlanta', username: 'Sanjeev',
    user_photo: 'https://avatars2.githubusercontent.com/u/4976591?v=3&s=460');
User.create(email:    '123@123.com',   password: '123123', favorite_city: 'Neverneverland', current_city: 'Atlanta', username: 'Kush', 
	user_photo: 'https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/13290/thumb_ga_atl_headshots_final_hr23_copy.jpg');
User.create(email:    'xyz@xyz.com',   password: 'xyzxyz', favorite_city: 'Passville', current_city: 'Atlanta', username: 'Gary', 
	user_photo: 'https://avatars1.githubusercontent.com/u/4154682?v=3&s=460');
