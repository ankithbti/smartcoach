namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
# t.string :title
#       t.strng :author
#       t.int :course_id
#       t.string :category
#       t.string :image
#       t.string :desc


		users_hash = {
			1 => [Faker::Name.name, #Name
				Faker::Internet.free_email, #email
				"password1", #password
				1, #user_type
				1, #sub_plan
				"This is a dummy message about user. This will tell soemthing about this user."
			],
			2 => [Faker::Name.name, #Name
				Faker::Internet.free_email, #email
				"password2", #password
				1, #user_type
				2, #sub_plan
				"This is a dummy message about user. This will tell soemthing about this user."
			],
			3 => [Faker::Name.name, #Name
				Faker::Internet.free_email, #email
				"password3", #password
				2, #user_type
				1, #sub_plan
				"This is a dummy message about user. This will tell soemthing about this user."
			],
			4 => [Faker::Name.name, #Name
				Faker::Internet.free_email, #email
				"password4", #password
				3, #user_type
				2, #sub_plan
				"This is a dummy message about user. This will tell soemthing about this user."
			],
			5 => [Faker::Name.name, #Name
				Faker::Internet.free_email, #email
				"password5", #password
				2, #user_type
				2, #sub_plan
				"This is a dummy message about user. This will tell soemthing about this user."
			],
			6 => [Faker::Name.name, #Name
				Faker::Internet.free_email, #email
				"password6", #password
				2, #user_type
				2, #sub_plan
				"This is a dummy message about user. This will tell soemthing about this user."
			],
			7 => [Faker::Name.name, #Name
				Faker::Internet.free_email, #email
				"password7", #password
				2, #user_type
				2, #sub_plan
				"This is a dummy message about user. This will tell soemthing about this user."
			],
			8 => [Faker::Name.name, #Name
				Faker::Internet.free_email, #email
				"password8", #password
				2, #user_type
				2, #sub_plan
				"This is a dummy message about user. This will tell soemthing about this user."
			],
			9 => [Faker::Name.name, #Name
				Faker::Internet.free_email, #email
				"password9", #password
				2, #user_type
				2, #sub_plan
				"This is a dummy message about user. This will tell soemthing about this user."
			],
			10 => [Faker::Name.name, #Name
				Faker::Internet.free_email, #email
				"password10", #password
				2, #user_type
				2, #sub_plan
				"This is a dummy message about user. This will tell soemthing about this user."
			]
		}

		users_hash.each do |key, array|
		  User.create!(name: array[0],
			email: array[1],
			password: array[2],
			password_confirmation: array[2],
			user_type: array[3],
			sub_plan: array[4],
			user_desc: array[5])
		end


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
			 	1, #user_id
			 	[1,3], #Category
			 	"sqlessentials.png", #image
			 	"Have you been wanting to learn SQL, but have not start yet? Or, maybe you know some SQL, but you need a better understanding of it. Either way, this course is just right for you. Andrew Burgess is teaching on the basic use of SQL with MySQL server and using it from PHP. So, let&#39;s get started!"
			 	],
			 2 => ["Organizing Testable Backbone and Require.js Applications", #Title
			 	Faker::Name.name, #Author
			 	2, #user_id
			 	[1,3], #Category
			 	"organizing.jpg", #image
			 	"So you have learned a bit about JavaScript testing, and are now ready to begin testing your Backbone apps. The only problem is that your team uses Require.js to organize and load your scripts. This can make your modules considerably more difficult to test. In this screencast, I will break everything down. In addition to Backbone and Require.js, we will be using Jam to load our dependencies, and Testem, which provides an easy interface to perform automated tests (using Jasmine). Finally, we will create a minimal build script."
			 	],
			 3 => ["Programming Windows in .NET", #Title
			 	Faker::Name.name, #Author
			 	3, #user_id
			 	[3], #Category
			 	"progWNet.png", #image
			 	"Have you ever wanted to learn to make Windows programs using the .NET Library? Well, Jeremy is here to teach us how to do it. Come and join the fun!"
			 	],
			 4 => ["Less is More", #Title
			 	Faker::Name.name, #Author
			 	1, #user_id
			 	[1,3], #Category
			 	"less-is-more.jpg", #image
			 	"In this course, I&#39;ll show you all of the cool features that the LESS CSS preprocessor provides, in order to make writing CSS more awesome! You&#39;ll learn all the ins and outs, including variables, nesting, Math and color functions, namespacing, and the various forms of mixins. In no time, you&#39;ll master the syntax!"
			 	],
			 5 => ["Riding Ruby on Rails", #Title
			 	Faker::Name.name, #Author
			 	5, #user_id
			 	[1,3], #Category
			 	"RidingRuby100x100.png", #image
			 	"Been meaning to learn Ruby on Rails, but felt that it was too hard? Well, not anymore. In this course, Jose Mota will take you through the process of creating dynamic and creative web applications, using Ruby on Rails. Come join us for the ride!"
			 	],
			 6 => ["Build Web Apps in Node and Express", #Title
			 	Faker::Name.name, #Author
			 	1, #user_id
			 	[2], #Category
			 	"nodejs.jpg", #image
			 	"Node.js is the JavaScript engine for Chrome, moved to the command line for use as a general programming language. In this course, you will learn how to make use this engine to build web applications with ease."
			 	],
			 7 => ["jQuery Plugin Development: Best Practices", #Title
			 	Faker::Name.name, #Author
			 	1, #user_id
			 	[1,2,3], #Category
			 	"jquery.jpg", #image
			 	"This course will explain the fundamental aspects of writing great jQuery plugins. Some of the topics we&#39;ll cover include how plugins extend jQuery&#39;s prototype to add new methods to the library, understanding the this object inside a plugin, keeping plugins configurable, theming them, handling events and exposing AJAX options for easier implementation by others. Sound fun?"
			 	],
			 8 => ["Perfect Workflow in Sublime Text 2", #Title
			 	Faker::Name.name, #Author
			 	2, #user_id
			 	[1], #Category
			 	"sublime.jpg", #image
			 	"Welcome! In this course, we&#39;re going to take the knowledge that you&#39;ve gained from coding for the browser, and apply it to the server environment. Over the next fifteen lessons, we&#39;ll start from the beginning, get Node installed and running, and then move on to more complex projects that will explore the basics tools and functionality that the Node.js platform has to offer."
			 	],
			 9 => ["An Introduction to Node.js", #Title
			 	Faker::Name.name, #Author
			 	3, #user_id
			 	[1,2], #Category
			 	"nodejs.jpg", #image
			 	"I&#39;m a confessed code editor addict, and have tried them all! I was an early adopter of Coda, a TextMate advocate, even a Vim convert. But all of that changed when I discovered Sublime Text 2, the best code editor available today. Don&#39;t believe me? Let me convince you in this course."
			 	],
			 10 => ["Programming .NET", #Title
			 	Faker::Name.name, #Author
			 	5, #user_id
			 	[3], #Category #Category
			 	"100-netprogramming.png", #image
			 	"For over ten years, Microsoft&#39;s .NET Framework has been the platform to develop for if you want to target Windows or Windows-based technologies. Getting started with the .NET Framework can be a daunting task, as the .NET Framework class library is pretty darn big. But, thankfully, there are a core set of classes that you can use in any Windows or Web app. In this course, we will take a look at these classes and how we can use them in our code."
			 	]


		}

		count=0
		courses_hash.each do |key, array|
		  Course.create!(title: array[0],
			author: array[1],
			user_id: array[2],
			# 3 is category/topic
			image: array[4],
			desc: array[5])
		  	count=count+1
		  	array[3].each do |topicId| 
		  		Relationship.create!(course_id: count,topic_id: topicId)
		  	end
		end


		

		


		# courses = Course.all
		# courses.each do |course|
		# 	Relationship.create!(course_id: course.id,
		# 						 topic_id: 1
		# 							)
		# 	Relationship.create!(course_id: course.id,
		# 						 topic_id: 3
		# 							)
		# end





		
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
