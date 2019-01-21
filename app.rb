require "sinatra"
require_relative "class.rb"
require 'sendgrid-ruby'
include SendGrid

get "/" do
    erb :home
end

cakes = [
    Cakes.new("Strawberry Chocolate Cake","$14","A chocolote cake with strawberries","https://i.imgur.com/SE8tV2O.jpg"),
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
    Cookies.new("Chocolate chip cookies with a twist", "$3", "This one is special, come find out why", "https://i.imgur.com/EkYKVTY.jpg"),
    Cookies.new("Chocolate chip cookies with a twist", "$3", "This one is special, come find out why", "https://i.imgur.com/EkYKVTY.jpg"),
    Cookies.new("Chocolate chip cookies with a twist", "$3", "This one is special, come find out why", "https://i.imgur.com/EkYKVTY.jpg"),
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


post "/" do
  from = SendGrid::Email.new(email: 'bolamuyis@gmail.com')
  to = SendGrid::Email.new(email: params[:email])
  subject = params[:name]
  content = SendGrid::Content.new(
    type: 'text/html',
    value: 
  "<p><strong>Ma BAKERY CATALOG</strong><br>
  Feel free to reach out with any questions or for quotes for your upcoming event.</p>

<p><strong>CAKES</stong></p>
  <p><a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/0D7UkmV.jpg\" alt=\"Apple Cake\"/></a><br>
    Name: Apple Cake, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/VvR5xrz.jpg\" alt=\"Strawberry Cake\"/></a><br>
    Name: Strawberry Cake, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/GdGuuBA.jpg\" alt=\"Red Wine Chocolate Cake\"/></a><br>
    Name: Red Wine Chocolate Cake, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/SE8tV2O.jpg\" alt=\"Strawberry and Chocolate Cake\"/></a><br>
    Name: Strawberry and Chocolate Cake, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/oKDN4tA.jpg\" alt=\"Assorted Cupcakes with Icing\"/></a><br>
    Name: Assorted Cupcakes with Icing, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/qjB9D1s.jpg\" alt=\"Cakes and Cupcakes\"/></a><br>
    Name: Cakes and Cupcakes, Price: $42
  </p>
  <p><strong>COOKIES</stong></p>
  <p><a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/0D7UkmV.jpg\" alt=\"Apple Cake\"/></a><br>
    Name: Apple Cake, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/VvR5xrz.jpg\" alt=\"Strawberry Cake\"/></a><br>
    Name: Strawberry Cake, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/GdGuuBA.jpg\" alt=\"Red Wine Chocolate Cake\"/></a><br>
    Name: Red Wine Chocolate Cake, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/SE8tV2O.jpg\" alt=\"Strawberry and Chocolate Cake\"/></a><br>
    Name: Strawberry and Chocolate Cake, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/oKDN4tA.jpg\" alt=\"Assorted Cupcakes with Icing\"/></a><br>
    Name: Assorted Cupcakes with Icing, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/qjB9D1s.jpg\" alt=\"Cakes and Cupcakes\"/></a><br>
    Name: Cakes and Cupcakes, Price: $42
  </p>
  <p><strong>MUFFINS</stong></p>
  <p><a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/0D7UkmV.jpg\" alt=\"Apple Cake\"/></a><br>
    Name: Apple Cake, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/VvR5xrz.jpg\" alt=\"Strawberry Cake\"/></a><br>
    Name: Strawberry Cake, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/GdGuuBA.jpg\" alt=\"Red Wine Chocolate Cake\"/></a><br>
    Name: Red Wine Chocolate Cake, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/SE8tV2O.jpg\" alt=\"Strawberry and Chocolate Cake\"/></a><br>
    Name: Strawberry and Chocolate Cake, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/oKDN4tA.jpg\" alt=\"Assorted Cupcakes with Icing\"/></a><br>
    Name: Assorted Cupcakes with Icing, Price: $12 <br>
    <a href=\"http://localhost:4567/cakes\" target=\"_blank\"><img src=\"https://i.imgur.com/qjB9D1s.jpg\" alt=\"Cakes and Cupcakes\"/></a><br>
    Name: Cakes and Cupcakes, Price: $42
  </p>
  "
  )
  # create mail object with from, subject, to and content
  mail = SendGrid::Mail.new(from, subject, to, content)
  sg = SendGrid::API.new(api_key: ENV["SENDGRID_API_KEY"])
  # sends the email
  response = sg.client.mail._('send').post(request_body: mail.to_json)

  # display http response code
  puts response.status_code

  # display http response body
  puts response.body

  # display http response headers
  puts response.headers

  redirect "/confirm"
end

get "/confirm" do
  erb :confirm
end