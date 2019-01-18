require "sinatra"
require_relative "class.rb"

get "/" do
    erb :home
end

cakes = [
    Cakes.new("Strawberry Chocolate Cake","$14","A chocolote cake garnished with strawberries","https://i.imgur.com/SE8tV2O.jpg"),
    Cakes.new("A Strawberry Sponge Cake","$15","A Strawberry Sponge Cake with frosting","https://i.imgur.com/VvR5xrz.jpg"),
    Cakes.new("Assorted Cupcakes","$4","Colorful Assorted Cupcakes","https://i.imgur.com/oKDN4tA.jpg"),
    Cakes.new("Cakes & Muffins","$13","A mix of cakes and muffins","https://i.imgur.com/qjB9D1s.jpg"),
    Cakes.new("Red Wine Chocolate Cake","$9","A tasty cake choice with a hint of red wine","https://i.imgur.com/GdGuuBA.jpg"),
    Cakes.new("Apple Cake","$4","A taste of this cake keeps the doctors away!","https://i.imgur.com/0D7UkmV.jpg")
]

get "/cakes" do 
    @cakes = cakes
    erb :cakes
end

cookies = [
    Cookies.new("Chewy Chocolate Chip Cookies", "$2", "These cookies are a chewy treat", "https://i.imgur.com/LSb0Nwa.jpg"),
    Cookies.new("Frosted Chocolate Chip Cookies Cookies", "$4", "This is how your granny use to make em", "https://i.imgur.com/LV1QvDf.jpg"),
    Cookies.new("Christmas Cookies", "$4", "Perfect cookies for Santa", "https://i.imgur.com/758sfDI.jpg"),
    Cookies.new("Oatmeal Cookies", "$2", "Oatmeal cookies with raisins", "https://i.imgur.com/VJUEcDT.jpg"),
    Cookies.new("Butter Milk Cookies", "$1.50", "These cookies are a buttery delicacy", "https://i.imgur.com/jg4ktKD.jpg"),
    Cookies.new("Chocolate chip cookies with a twist", "$3", "This one is special, come find out why", "https://i.imgur.com/EkYKVTY.jpg")
]
get "/cookies" do
    @cookies = cookies
    erb :cookies
end

muffins = [
    Muffins.new("Blue Berry Muffins", "$4", "These are muffins with rich gooey berries", "https://i.imgur.com/vVBTRe7.jpg"),
    Muffins.new("Bran Muffins", "$5", "A healthy option for our muffin lovers", "https://i.imgur.com/UFbeWlm.jpg"),
    Muffins.new("Dulce De Leche Muffins", "$2", "Dulce De Leche Muffins", "https://i.imgur.com/C7tw5ig.jpg"),
    Muffins.new("Olive Rosemary Muffins", "$5", "Muffins made with Olive Rosemary", "https://i.imgur.com/K2joeg3.jpg"),
    Muffins.new("Chocolote Chip Muffins", "$4", "A Chocolate Chip favorite", "https://i.imgur.com/iFtUnaa.jpg"),
    Muffins.new("Delicious Fujiz Muffins", "$3", "Tasty Fujiz Muffins", "https://i.imgur.com/ET5M6Us.jpg"),
]

get "/muffins" do
    @muffins = muffins
    erb :muffins
end


