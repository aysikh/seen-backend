# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Company.destroy_all
Review.destroy_all

amy = User.create(
  email: "amy@gmail.com", 
  firstname: "amy", 
  lastname: "sikhammountry", 
  password: "nugget"
)

malaika = User.create(
  email: "malaika@gmail.com", 
  firstname: "malaika", 
  lastname: "english", 
  password: "123"
)

darwin = User.create(
  email: "darwin@gmail.com", 
  firstname: "darwin", 
  lastname: "irby", 
  password: "123"
)

life360 = Company.create(
  name: "Life360", 
  description: "Life360 is a wellness company that brings peace of mind to families all over the world. The company’s app helps families keep tabs on family members by showing their whereabouts, sharing if they’re currently driving and even marking favorite routes that each member likes to take. Life360 is available in monthly subscriptions, so families can have constant peace of mind about the safety of their loved ones.", 
  size: "100-250", 
  location: "San Francisco, CA", 
  industry: "Technology",
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2020-07/e8opx8Ip_400x400.png"
)

# https://www.builtinsf.com/company/life360

benchling = Company.create(
  name: "Benchling", 
  description: "We're on a mission to expand and accelerate life science research & development. Biotech has the potential to solve humanity’s most pressing challenges: disease, renewable energy, clean water and hunger. The brightest minds are working on these problems but they are equipped with archaic tools - that's where we come in. Benchling makes life science research faster and helps unearth the solutions to global issues.",
  size: "250-500",
  location: "San Francisco, CA",
  industry: "Technology",
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2020-10/0_3.jpeg"
)

  # https://www.builtinsf.com/company/benchling

sensortower = Company.create(
  name: "Sensor Tower", 
  description: "Sensor Tower helps businesses navigate the multi-billion dollar mobile app ecosystem. We're on a mission: To Be the Trusted Source of Mobile Insights. We provide investors, mobile app developers, and brands with the competitive data they need to be successful in the mobile ecosystem. We serve independent and Fortune 500 customers alike, spanning mobile gaming, travel & hospitality, finance, and entertainment verticals.",
  size: "50-100",
  location: "San Francisco, CA", 
  industry: "Technology",
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2019-10/1010065_674848569210259_1273132433_n.png"
) 
  # https://www.builtinsf.com/company/sensor-tower

niantic = Company.create(
  name: "Niantic",
  description: "Niantic is the world’s leading AR technology company, sparking creative and engaging journeys in the real world. Our products inspire outdoor exploration, exercise, and meaningful social interaction. Originally formed at Google in 2010, we became an independent company in 2014 with a strong group of investors including Nintendo, The Pokémon Company",
  size: "505",
  location: "San Francisco, CA",
  industry: "Technology",
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2019-10/niantic.png"
)

corsair = Company.create(
  name: "Corsair",
  description: "Founded in 1994, CORSAIR has grown from pioneering the high-performance DRAM market into one of the world’s leading providers of high-performance PC peripherals and components. CORSAIR offers a complete range of products to equip gamers, enthusiasts and e-sports athletes.",
  size: "350", 
  location: "San Francisco, CA",
  industry: "Technology", 
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2020-02/Corsair%20logo.png"
)

postmates = Company.create(
  name: "Postmates", 
  description: "Anything, anytime, anywhere. Postmate it. Postmates is transforming the way goods move around cities by enabling anyone to have anything delivered on-demand. Our revolutionary Urban Logistics platform connects customers with local couriers who can deliver anything from any store or restaurant in minutes.",
  size: "1801",
  location: "San Francisco, CA",
  industry: "Technology", 
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2020-04/Postmates.png"
)

instacart = Company.create(
  name: "Instacart", 
  description: "Instacart is the North American leader in online groceries and one of the fastest-growing companies in eCommerce. Instacart shoppers offer same-day delivery and pickup services to bring fresh groceries and everyday essentials to busy people and families across the U.S. and Canada.",
  size: "2900",
  location: "San Francisco, CA",
  industry: "Technology",
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2019-10/instacart.png"
)

discord = Company.create(
  name: "Discord", 
  description: "Discord is the easiest place to communicate with communities and friends over voice, video, and text. Discord is a voice, video and text communication service to talk and hang out with your friends and communities. Discord is used by everyone from local hiking clubs, to art communities, to study groups and gives everyone the power to belong.",
  size: "505",
  location: "San Francisco, CA"
  industry: "Technology", 
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2020-04/XCuWn8yF_400x400.jpg"
)

crunchyroll = Company.create(
  name: "Crunchyroll", 
  description: "Crunchyroll is the world’s largest destination for anime and manga focused on creating 360° experiences — from video to merchandise, events, and gaming — for fans to connect through the content they love.", 
  size: "757",
  location: "San Francisco, CA", 
  industry: "Technology", 
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2020-05/CR%20Orange%20LG%20JL.png"
)

freshworks = Company.create(
  name: "Freshworks", 
  description: "Freshworks provides customer engagement software to businesses of all sizes, making it easy for customer support, sales and marketing professionals to communicate more effectively with customers and deliver moments of wow.", 
  size: "3350", 
  location: "San Mateo, CA", 
  industry: "Technology", 
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2019-12/Freshworks%20logo.png"
)

vsco = Company.create(
  name: "VSCO",
  description: "VSCO builds creative tools, spaces and connections driven by self-expression. Helping people around the world unlock their creative potential, the company continues to innovate with VSCO Membership, an annual subscription that offers advanced editing features, inspiring editorial content, and immersive community experiences.",
  size: "152", 
  location: "Oakland, CA", 
  industry: "Mobile",
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2020-05/VSCO.png"
)

dropbox = Company.create(
  name: "Dropbox", 
  description: "Dropbox is a leading global collaboration platform that's transforming the way people work together, from the smallest business to the largest enterprise. With more than 500 million registered users across more than 180 countries, our mission is to unleash the world’s creative energy by designing a more enlightened way of working. Headquartered in", 
  size: "2323",
  location: "San Francisco, CA", 
  industry: "Technology", 
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2021-02/dropbox-logo.jpeg"
)

grammarly = Company.create(
  name: "Grammarly", 
  description: "Grammarly’s digital writing assistant helps 30 million people write more clearly and effectively every day. In building a product that scales across multiple platforms and devices, Grammarly works to empower users whenever and wherever they communicate.", 
  size: "570",
  location: "San Francisco, CA", 
  industry: "Technology", 
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2019-10/grammarly.png"
)

medium = Company.create(
  name: "Medium", 
  description: "We're a tight-knit group of engineers, editors, and creatives combining humans and technology to create a new model for digital publishing. Together, we’re building an open platform where anyone can share their ideas and where 170 million readers come to find insightful and dynamic thinking—and we’re growing fast. At Medium, we celebrate diversity in people, perspectives, and experiences, and we encourage new ideas and experimentation. Like our platform, there's room for you and your ideas to breathe — you’re not constrained by your job description. And we know that your life outside of Medium is just as important as the one inside of it.", 
  size: "242", 
  location: "San Francisco, CA", 
  industry: "Digital Media", 
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2021-01/Medium-Symbol-Black-RGB%402x%20(1).png"
)

reddit = Company.create(
  name: "Reddit", 
  description: "Reddit is a community of millions of users engaging in the creation of content and the sharing of conversation across tens of thousands of topics.", 
  size: "1475",
  location: "San Francisco, CA", 
  industry: "Technology"
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2019-10/reddit.png"
)

udemy = Company.create(
  name: "Udemy", 
  description: "With a mission to improve lives through learning, Udemy is the world’s largest online learning destination that helps individuals, businesses, and governments gain the skills they need to compete in today’s economy. Thirty-five million students are mastering new skills from 57,000 expert instructors teaching over 130,000 online courses in topics from programming and data science to leadership and team building. For companies, Udemy for Business offers an employee training and development platform with subscription access to 7,000 courses, learning analytics, as well as the ability to host and distribute their own content.",
  size: "1400",
  location: "San Francisco, CA",
  industry: "Technology", 
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2020-01/udemy-logo.png"
)

tinder = Company.create(
  name: "Tinder", 
  description: "Tinder was introduced on a college campus in 2012 and is the world’s most popular app for meeting new people. Available in 190 countries and 40+ languages, it’s been downloaded more than 400 million times and led to 55 billion matches. Tinder has 6.6 million subscribers and is the highest grossing non-gaming app globally.",
  size: "610", 
  location: "San Francisco, CA", 
  industry: "Technology", 
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2020-01/Tinder%20Logo.jpeg"
)

twitter = Company.create(
  name: "Twitter", 
  description: "
  Twitter is a global platform for public self-expression and conversation in real time. By developing a fundamentally new way for people to consume, create, distribute and discover content, Twitter enables any voice to echo around the world instantly and unfiltered. The service can be accessed at Twitter.com, on a variety of mobile devices, and via",
  size: "7500",
  location: "San Francisco, CA", 
  industry: "Technology", 
  logo: "https://cdn.builtinsf.com/cdn-cgi/image/fit=scale-down,sharpen=0.3,f=auto,q=100,w=170,h=170/sites/www.builtinsf.com/files/2020-04/twitter%20logo.png"
)