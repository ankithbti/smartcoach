namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
# t.string :title
#       t.strng :author
#       t.int :course_id
#       t.string :category
#       t.string :image
#       t.string :desc



		Course.create!(title: "Example Title",
		author: "Example Author",
		category: "Example category",
		image: "Example Image",
		desc: "Example Desc")
		
		# 10.times do |n|
		# 	name = Faker::Name.name
		# 	email = "example-#{n+1}@railstutorial.org"
		# 	password = "password"
		# 	User.create!(name: name,
		# 	email: email,
		# 	password: password,
		# 	password_confirmation: password)
		# end

		
		10.times do |n|

			title = "Example Title #{n+1}"
			author = Faker::Name.name
			category = "Example Category #{n+1}"
			image = "Example Image Path #{n+1}"
			desc = "Example Description #{n+1}"
			Course.create!(title: title,
				author: author,
				category: category,
				image: image,
				desc: desc)
		end
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
