class Cakes
    attr_accessor :name, :price, :description, :picture
    def initialize(name,price,description,picture)
        @name = name
        @price = price
        @description = description
        @picture = picture
    end
end

class Cookies
    attr_accessor :name, :price, :description, :picture
    def initialize(name,price,description,picture)
        @name = name
        @price = price
        @description = description
        @picture = picture
    end
end

class Muffins
    attr_accessor :name, :price, :description, :picture
    def initialize(name,price,description,picture)
        @name = name
        @price = price
        @description = description
        @picture = picture
    end
end

#Cakes
v1 = Cakes.new("Strawberry Chocolate Cake ", "$14", "A chocolote cake garnished with strawberries ", "https://i.imgur.com/SE8tV2O.jpg")
v2 = Cakes.new("A Strawberry Sponge Cake", "$15", "A Strawberry Sponge Cake with frosting", "https://i.imgur.com/VvR5xrz.jpg")
v3 = Cakes.new("Assorted Cupcakes", "$4", "Colorful Assorted Cupcakes", "https://i.imgur.com/oKDN4tA.jpg")
v4 = Cakes.new("Cakes & Muffins", "$13", "A mix of cakes and muffins", "https://i.imgur.com/qjB9D1s.jpg")
v5 = Cakes.new("Red Wine Chocolate Cake", "$9", "A tasty cake choice with a hint of red wine", "https://i.imgur.com/GdGuuBA.jpg")
v6 = Cakes.new("Apple Cake", "$4", "A taste of this cake keeps the doctors away!", "https://i.imgur.com/0D7UkmV.jpg")

#Cookies
v1 = Cookies.new("Chewy Chocolate Chip Cookies", "$2", "These cookies are a chewy treat", "https://i.imgur.com/LSb0Nwa.jpg")
v2 = Cookies.new("Frosted Chocolate Chip Cookies Cookies", "$4", "This is how your granny use to make em", "https://i.imgur.com/LV1QvDf.jpg")
v3 = Cookies.new("Christmas Cookies", "$4", "Perfect cookies for Santa", "https://i.imgur.com/758sfDI.jpg")
v4 = Cookies.new("Oatmeal Cookies", "$2", "Oatmeal cookies with raisins", "https://i.imgur.com/VJUEcDT.jpg")
v5 = Cookies.new("Butter Milk Cookies", "$1.50", "These cookies are a buttery delicacy", "https://i.imgur.com/jg4ktKD.jpg")
v6 = Cookies.new("Chocolate chip cookies with a twist", "$3", "This one is special, come find out why", "https://i.imgur.com/EkYKVTY.jpg")

#Muffins
v1 = Muffins.new("Blue Berry Muffins", "$4", "These are muffins with rich gooey berries", "https://i.imgur.com/vVBTRe7.jpg")
v2 = Muffins.new("Bran Muffins", "$5", "A healthy option for our muffin lovers", "https://i.imgur.com/UFbeWlm.jpg")
v3 = Muffins.new("Dulce De Leche Muffins", "$2", "Dulce De Leche Muffins", "https://i.imgur.com/C7tw5ig.jpg")
v4 = Muffins.new("Olive Rosemary Muffins", "$5", "Muffins made with Olive Rosemary", "https://i.imgur.com/K2joeg3.jpg")
v5 = Muffins.new("Chocolote Chip Muffins", "$4", "A Chocolate Chip favorite", "https://i.imgur.com/iFtUnaa.jpg")
v6 = Muffins.new("Delicious Fujiz Muffins", "$3", "Tasty Fujiz Muffins", "https://i.imgur.com/ET5M6Us.jpg")