# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all
Material.destroy_all
Project.destroy_all
User.destroy_all



puts "Creating users"

vee = User.create(username: "veeperks", password: "secret1", profile_pic: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627308976/final%20project%20images/profile%20pics/20210327_135341_ad6zvl.jpg")
eve = User.create(username: "negatori", password: "secret2", profile_pic: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627309195/final%20project%20images/profile%20pics/Untitled_design_1_rtnf81.png")

puts "Creating in progress projects"

floral_set = Project.create(user_id: vee.id, mock_up: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627309720/final%20project%20images/mockups/Stretch_sewing_book_14_csvpkq.jpg", finished: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627312193/final%20project%20images/finished/Untitled_design_2_zd9u8l.png", description: "Floral joggers and cropped hoodie", in_progress: true, completed: false, private: false, start_date: "2021-03-01", end_date: "2021-08-31")
velvet_suit = Project.create(user_id: vee.id, mock_up: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627310155/final%20project%20images/mockups/49214c4d9212a30899b59666774b9061_lrzvd6.jpg", finished: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627312193/final%20project%20images/finished/Untitled_design_2_zd9u8l.png", description: "Red velvet suit", in_progress: true, completed: false, private: false, start_date: "2020-11-01", end_date: "2021-12-15")
sequin_dress = Project.create(user_id: vee.id, mock_up: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627310302/final%20project%20images/mockups/Stretch_sewing_book_23_v4o9fa.jpg", finished: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627312193/final%20project%20images/finished/Untitled_design_2_zd9u8l.png", description: "Sequin party dress", in_progress: true, completed: false, private: true, start_date: "2021-03-01", end_date: "2021-08-31")

puts "Creating completed projects"

linen_romper = Project.create(user_id: vee.id, mock_up: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627310391/final%20project%20images/mockups/1355_sbytmq.jpg", finished: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627312193/final%20project%20images/finished/Untitled_design_2_zd9u8l.png", description: "Linen jumpsuit. Nautical vibes. Linen fabric from Joann. Modified simplicity pattern 1355.", in_progress: false, completed: true, private: false, start_date: "2020-05-01", end_date: "2020-05/20")
green_dress = Project.create(user_id: vee.id, mock_up: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627310454/final%20project%20images/mockups/Stretch_sewing_book_54_f0zjuf.jpg", finished: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627312193/final%20project%20images/finished/Untitled_design_2_zd9u8l.png", description: "Christmas green velvet dress. Many compliments. Fabric from Joann. Pattern is Tilly and the Buttons Joni dress", in_progress: false, completed: true, private: false, start_date: "2019-12-01", end_date: "2019-12-15")

puts "Creating future projects"

state_fair_dress = Project.create(user_id: vee.id, mock_up: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627310939/final%20project%20images/mockups/Untitled_design_rwwaav.png", finished: "https://res.cloudinary.com/dz2jdgus7/image/upload/v1627312193/final%20project%20images/finished/Untitled_design_2_zd9u8l.png", description: "Cute polka dot dress for the State Fair!", in_progress: false, completed: false, private: false, start_date: "2021-08-08", end_date: "2021-08-25")

puts "Creating tasks"

Task.create(project_id: floral_set.id, description: "hem and finish hoodie", in_progress: false, completed: true, start_date: "2021-03-20", end_date: "2021-03-30")
Task.create(project_id: floral_set.id, description: "cut out fabric for pants", in_progress: true, completed: false, start_date: "2021-03-30", end_date: "2021-08-31")
Task.create(project_id: floral_set.id, description: "sew pants", in_progress: false, completed: false, start_date: "2021-08-01", end_date: "2021-08-31")

puts "Creating materials"

Material.create(project_id: floral_set.id, description: "floral fleece", price: 5, acquired:true)

