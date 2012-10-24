namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
# t.string :title
#       t.strng :author
#       t.int :course_id
#       t.string :category
#       t.string :image
#       t.string :desc



		# Course.create!(title: "Example Title",
		# author: "Example Author",
		# category: "Example category",
		# image: "Example Image",
		# desc: "Example Desc")

		# Topic categories for Courses
		topics_arr = ["Web Development", 
						"Web Design", 
						"Software Development",
						"Business",
						"Photoshop",
						"Mobile development"
					]
		
		topics_arr.each do |topic|
			Topic.create!(name: topic)
		end

		# Group categories for tutorials
		groups_arr = ["Web Development", 
						"Web Design", 
						"Software Development",
						"Business",
						"Photoshop",
						"Mobile development"
					]
		
		groups_arr.each do |group|
			Group.create!(name: group)
		end

		# Tag categories for Blogs
		tags_arr = ["Web Development", 
						"Web Design", 
						"Software Development",
						"Business",
						"Photoshop",
						"Mobile development"
					]
		
		tags_arr.each do |tag|
			Tag.create!(name: tag)
		end


		courses_hash = {
			1 => ["SQL Essentials", #Title
			 	Faker::Name.name, #Author
			 	"Web Development", #Category
			 	"organizing.jpg", #image
			 	"So you have learned a bit about JavaScript testing, and are now ready to begin testing your Backbone apps. The only problem is that your team uses Require.js to organize and load your scripts. This can make your modules considerably more difficult to test.
In this screencast, I will break everything down. In addition to Backbone and Require.js, we will be using Jam to load our dependencies, and Testem, which provides an easy interface to perform automated tests (using Jasmine). Finally, we will create a minimal build script."
			 	]
		}

		courses_hash.each do |key, array|
		  Course.create!(title: array[0],
			author: array[1],
			image: array[3],
			desc: array[4])
		end




		
		# 10.times do |n|
		# 	name = Faker::Name.name
		# 	email = "example-#{n+1}@railstutorial.org"
		# 	password = "password"
		# 	User.create!(name: name,
		# 	email: email,
		# 	password: password,
		# 	password_confirmation: password)
		# end

		
		# 10.times do |n|

		# 	title = "Example Title #{n+1}"
		# 	author = Faker::Name.name
		# 	category = "Example Category #{n+1}"
		# 	image = "Example Image Path #{n+1}"
		# 	desc = "Example Description #{n+1}"
		# 	Course.create!(title: title,
		# 		author: author,
		# 		category: category,
		# 		image: image,
		# 		desc: desc)
		# end
		# admin = User.first
		# admin.toggle!(:admin)

		# users = User.all(limit: 6)
		# 50.times do
		# 	content = Faker::Lorem.sentence(5)
		# 	users.each { |user| user.microposts.create!(content: content) }
		# end


		# users = User.all
		# user = users.first
		# followed_users = users[2..50]
		# followers 	   = users[3..40]
		# followed_users.each { |followed| user.follow!(followed) }
		# followers.each 	    { |follower| follower.follow!(user) }


	end
end
