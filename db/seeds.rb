# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

usernames = ["Jesse", "Avatar", "Us3r"]
usernames.each do |username|
  user = User.create
  user.username = username
  user.email = "#{username}@example.com"
  user.password = "12341234"
  user.save
end

puts "There are now #{User.count} users in the database."


Company.create(name: 'Unity Technologies', description: 'Makes game 2D and 3D game engines', hq_address: 'Unity Technologies, 30 3rd Street San Francisco, CA 94103, United States', active_business: 1, user_id: 1)
Company.create(name: 'Osterhout Design Group', description: 'Developer and manufacturer of mobile headworn computing and augmented, virtual and mixed reality technologies and products', hq_address: '153 Townsend Street, Suite 570
San Francisco, CA 94107', active_business: 1, user_id: 1)
Company.create(name: 'Daqri', description: 'Makers of augmented reality gear', hq_address: '1201 W. 5th Street, Suite T-900, Los Angeles CA, 90017', active_business: 1, user_id: 2)

puts "There are now #{Company.count} companies in the database."


Article.create(url: 'https://unity3d.com/company/public-relations/news/mobile-games-generated-more-40-billion-2016', title: 'Mobile Games Generated More Than $40 Billion in 2016', company_id: 1, date: DateTime.strptime("2/1/2017", "%m/%d/%Y"), user_id: 1)
Article.create(url: 'https://venturebeat.com/2017/03/30/tech-pioneer-tony-parisi-wants-vr-to-change-the-world/', title: 'Tech pioneer Tony Parisi wants VR to change the world', company_id: 1, date: DateTime.strptime("3/30/2017", "%m/%d/%Y"), user_id: 1)
Article.create(url: 'https://techcrunch.com/2016/12/01/smartglasses-maker-odg-scores-58m-in-series-a-led-by-21st-century-fox/', title: 'Smartglasses-maker ODG scores $58M in Series A led by 21st Century Fox', company_id: 2, date: DateTime.strptime("12/1/2016", "%m/%d/%Y"), user_id: 1)
Article.create(url: 'https://techcrunch.com/2017/04/04/odg-unveils-new-ar-smart-glasses-optimized-for-hazardous-locations/', title: 'ODG unveils enterprise-focused AR smart glasses optimized for hazardous locations', company_id: 2, date: DateTime.strptime("4/4/2017", "%m/%d/%Y"), user_id: 2)
Article.create(url: 'http://www.businessinsider.com/vr-company-daqri-is-laying-off-staff-worldwide-2017-2', title: 'An augmented reality company that raised over $130 million is laying off staff worldwide', company_id: 3, date: DateTime.strptime("2/10/2017", "%m/%d/%Y"), user_id: 3)

puts "There are now #{Article.count} articles in the database."


Story.create(company_id: 1, article_id: 1)
Story.create(company_id: 1, article_id: 2)
Story.create(company_id: 2, article_id: 3)
Story.create(company_id: 2, article_id: 4)
Story.create(company_id: 3, article_id: 5)

puts "There are now #{Story.count} article to company pairings in the database."


companies.each do |company_comment|
  rand(6).times do
    company_comment = Company_comment.new
    company_comment.id = company_comment.id
    company_comment.company_id = company_comment.company.id
    company_comment.user_id = users.sample.id
    company_comment.comment = Faker::Hacker.say_something_smart
    company_comment.save
  end
end

# Company_comment.create(comment: 'Unity is awesome', company_id: 1, user_id: 1)
# Company_comment.create(comment: 'I love programming using Unity', company_id: 1, user_id: 1)
# Company_comment.create(comment: 'Unity sucks', company_id: 1, user_id: 2)
# Company_comment.create(comment: 'Yay! I recommend Unity to all my friends', company_id: 1, user_id: 3)
# Company_comment.create(comment: 'Viva ODG!', company_id: 2, user_id: 1)
# Company_comment.create(comment: 'ODG has some cool gear', company_id: 2, user_id: 2)
# Company_comment.create(comment: 'The Daqri smart helmet looks stupid', company_id: 3, user_id: 2)
# Company_comment.create(comment: 'The helmet makes the wearer look like a fashion-unaware Stormtrooper wearing blue sunglasses', company_id: 3, user_id: 3)

puts "There are now #{Company_comment.count} company comments in the database."


Contact.create(name: 'Ms. Unity CEO', role: 'CEO', email: 'UnityCEO@Unity.com', phone_number: '555-123-5555', notes: 'Seems like a chill CEO', company_id: 1, user_id: 1)
Contact.create(name: 'Ms. Unity CEO', role: 'CEO', email: 'UnityCEO@Unity.com', phone_number: '555-123-5555', notes: 'Seems like an angry CEO', company_id: 1, user_id: 2)
Contact.create(name: 'Ms. Unity CTO', role: 'CTO', email: 'UnityCTO@Unity.com', phone_number: '555-456-5555', notes: 'Seems like a chill CTO', company_id: 1, user_id: 2)
Contact.create(name: 'Mr. ODG CEO', role: 'CEO', email: 'ODG_CEO@ODG.com', phone_number: '123-555-5555', notes: 'Seems like a chill CEO', company_id: 2, user_id: 1)
Contact.create(name: 'Mr. ODG CEO', role: 'CEO', email: 'ODG_CEO@ODG.com', phone_number: '123-555-5555', notes: 'Seems like an angry CEO', company_id: 2, user_id: 2)
Contact.create(name: 'Mr. ODG CMO', role: 'CMO', email: 'ODG_CMO@ODG.com', phone_number: '321-555-5555', notes: 'Seems like a chill CMO', company_id: 2, user_id: 2)
Contact.create(name: 'Ms. ODG CIO', role: 'CIO', email: 'ODG_CIO@ODG.com', phone_number: '654-555-5555', notes: 'Seems like a chill CIO', company_id: 2, user_id: 2)
Contact.create(name: 'Ms. Daqri CEO', role: 'CEO', email: 'DaqriCEO@Unity.com', phone_number: '555-555-1234', notes: 'Seems like a chill CEO', company_id: 3, user_id: 3)
Contact.create(name: 'Ms. Daqri CIO', role: 'CIO', email: 'DaqriCIO@Unity.com', phone_number: '555-123-1234', notes: 'Seems like an angry CIO', company_id: 3, user_id: 3)
Contact.create(name: 'Mr. Daqri CTO', role: 'CTO', email: 'DaqriCTO@Unity.com', phone_number: '555-987-5555', notes: 'Seems like a chill CTO', company_id: 3, user_id: 3)

puts "There are now #{Contact.count} contacts in the database."


Company.each do |company|
  users.sample(rand(users.count)).each do |user|
    tracking = Tracking.new
    tracking.user_id = user.id
    tracking.company_id = company.id
    tracking.save
  end
end

# Tracking.create(user_id: 1, company_id: 1)
# Tracking.create(user_id: 1, company_id: 2)
# Tracking.create(user_id: 2, company_id: 1)
# Tracking.create(user_id: 2, company_id: 3)
# Tracking.create(user_id: 3, company_id: 1)
# Tracking.create(user_id: 3, company_id: 2)
# Tracking.create(user_id: 3, company_id: 3)

puts "There are now #{Tracking.count} trackings in the database."
