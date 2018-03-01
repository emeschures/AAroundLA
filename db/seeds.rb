# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.destroy_all
    @user1 = User.new({name: "Eli M", email: "elim@gmail.com", password: "password"})
    @user1.save
    @user2 = User.new({name: "Bruin", email: "bruin@gmail.com", password: "password"})
    @user2.save
    @user3 = User.new({name: "Heather P", email: "heather@gmail.com", password: "password"})
    @user3.save
    @user4 = User.new({name: "Mikey M", email: "mikeym@gmail.com", password: "password"})
    @user4.save    
    @user5 = User.new({name: "Dad", email: "dad@gmail.com", password: "password"})
    @user5.save   
    @user6 = User.new({name: "Suki", email: "suki@gmail.com", password: "password"})
    @user6.save

    @meeting1 = @user1.meetings.new({name: "Log Cabin", address: "621 N. Robertson Blvd, West Hollywood, CA 90069"})
    @meeting1.save
    @meeting2 = @user1.meetings.new({name: "West Hollywood Recovery Center", address: "626 N Robertson Blvd, West Hollywood, CA 90069"})
    @meeting2.save
    @meeting3 = @user1.meetings.new({name: "Red Rock Bar & Café ", address: "8782 Sunset Blvd, West Hollywood, CA 90069"})
    @meeting3.save
    @meeting4 = @user2.meetings.new({name: "Crescent Heights Methodist Church", address: "7866 Fountain Ave, West Hollywood, CA 90046"})
    @meeting4.save
    @meeting5 = @user2.meetings.new({name: "Roxbury Park Community Center", address: "471 Roxbury Dr, Beverly Hills, CA 90212"})
    @meeting5.save
    @meeting6 = @user3.meetings.new({name: "Rainbow Bar & Grill", address: "9015 Sunset Blvd, West Hollywood, CA 90069"})
    @meeting6.save
    @meeting7 = @user4.meetings.new({name: "La Cienega Tennis Center", address: "325 S La Cienega Blvd, Los Angeles, CA 90048"})
    @meeting7.save
    @meeting8 = @user5.meetings.new({name: "All Saints' Episcopal Church", address: "504 N Camden Dr, Beverly Hills, CA 90210"})
    @meeting8.save
    @meeting9 = @user6.meetings.new({name: "Bel Air Presbytterian Church", address: "16221 Mulholland Dr, Los Angeles, CA 90049"})
    @meeting9.save
end





