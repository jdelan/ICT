# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create(name: 'Unity Technologies', description: 'Makes game 2D and 3D game engines', hq_address: 'Unity Technologies, 30 3rd Street San Francisco, CA 94103, United States', active_business: 1, user_id: 1)
Company.create(name: 'Osterhout Design Group', description: 'Developer and manufacturer of mobile headworn computing and augmented, virtual and mixed reality technologies and products', hq_address: '153 Townsend Street, Suite 570
San Francisco, CA 94107', active_business: 1, user_id: 1)
Company.create(name: 'Daqri', description: 'Makers of augmented reality gear', hq_address: '1201 W. 5th Street, Suite T-900, Los Angeles CA, 90017', active_business: 1, user_id: 2)

Article.create(url: 'https://unity3d.com/company/public-relations/news/mobile-games-generated-more-40-billion-2016', title: 'Mobile Games Generated More Than $40 Billion in 2016', company_id: '1', date: DateTime.strptime("2/1/2017", "%m/%d/%Y"), user_id: 1)
Article.create(url: 'https://venturebeat.com/2017/03/30/tech-pioneer-tony-parisi-wants-vr-to-change-the-world/', title: 'Tech pioneer Tony Parisi wants VR to change the world', company_id: '1', date: DateTime.strptime("3/30/2017", "%m/%d/%Y"), user_id: 1)

Article.create(url: 'https://techcrunch.com/2016/12/01/smartglasses-maker-odg-scores-58m-in-series-a-led-by-21st-century-fox/', title: 'Smartglasses-maker ODG scores $58M in Series A led by 21st Century Fox', company_id: '2', date: DateTime.strptime("12/1/2016", "%m/%d/%Y"), user_id: 1)
Article.create(url: 'https://techcrunch.com/2017/04/04/odg-unveils-new-ar-smart-glasses-optimized-for-hazardous-locations/', title: 'ODG unveils enterprise-focused AR smart glasses optimized for hazardous locations', company_id: '2', date: DateTime.strptime("4/4/2017", "%m/%d/%Y"), user_id: 2)

Article.create(url: 'http://www.businessinsider.com/vr-company-daqri-is-laying-off-staff-worldwide-2017-2', title: 'An augmented reality company that raised over $130 million is laying off staff worldwide', company_id: '3', date: DateTime.strptime("2/10/2017", "%m/%d/%Y"), user_id: 3)
