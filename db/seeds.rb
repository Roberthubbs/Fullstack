# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do 
    guestUser = User.create(username: "DemoUser", password: "Password")
    
    

    Project.destroy_all
    makingLuresOneOOne = Project.create(description: "Making good all-purpose lures", body: "Jointed crankbaits (aka “broke-back crankbaits”) add a whole new dimension to lure fishing. If you take one of your favorite 1-piece crankbaits bodies, cut it in two and then rejoin it, you’ll be surprised at the difference.
On the upside, adding a join somewhere in the lure body causes it to have a more sinuous, slithery action…… and it does so at much lower cranking speeds. This means you can keep it wiggling enticingly in “the zone” for much longer. They also tend to make a little more noise, which can be either advantageous or not, depending on your circumstances.
On the down-side? Their floppiness means that jointed crankbaits tend to cast poorly, both in terms of distance and accuracy. More hardware means more potential places for the lure to break. If you’re using screw eyes, the tail section is particularly vulnerable, so be sure to read my article on how to use screw eyes for maximum strength. Of course, more hardware also means more potential entry points for water. And jointed crankbaits are a little more fiddly and time consuming to make than single piece bodies.
3 Tips For Designing And Making Jointed Crankbaits
“V” Cut Vs Straight Cut
I usually shape the bodies of my jointed crankbaits as a single piece and then cut them in two for rejoining them. When I get to the cutting stage, there are two options:
A straight cut that leaves both ends square, or
A “V” joint made by angling the saw back towards the tail and cutting half way through from each side of the lure.
A “V” cut is a bit more work and takes a little more skill to get right. But it has the advantage of concealing the joint more when the lure is looked at from the side. On the other hand, a straight cut is fast and easy, but leaves a big open gap in the lure when looked at from side on.
Which is best? I still prefer the appearance of jointed crankbaits that use a “V” cut. But experience and observations suggest the fish don’t really care either way.
Jointed Crankbaits: Effect Of GapThe Gap Between Sections
Jointed crankbaits are usually held together by interconnecting screw eyes or hand made through wires that interlock. One of the advantages of screw eyes (and the reason I always use a screw eye for prototypes) is that you can adjust the gap between the two body parts. Just open the screw eyes up, separate the two parts and screw the eyes in or out further. Then put the lure back together and re-test it. Once I know what gaps works best I can make through wires for future lures.
The reason this is important is that the two halves of the lure body limit the movement, as show in the image.
As a rule with jointed crankbaits, the wider the gap between the body parts, the wider the action of the lure and the better it can be worked at slower speeds. On the flip side, a narrower gap gives a tighter action, but a more stable lure that can handle a wider range of speeds.
Single Or Double Jointed?
Jointed crankbaits can be constructed with a single joint – 1 loop on the front connecting to two loops on the tail. Or they can have double joints: two loops on each of the parts, one above the other.
Single joints tend to be more floppy and give a more erratic, wider action. The tail section also tends to hang down into the water when they are at rest, which presents the rear hook nicely to the fish. They can usually be worked more slowly, too.
A Double Hinged Jointed CrankbaitDouble joints restrict the movement of the tail section to just side to side and pretty much eliminate up and down movement. This helps with casting and stabilizes the lure so it can be worked a little faster. In my view it also looks more natural when the lure is swimming.
The Wash-up On Jointed Crankbaits
Like any style of lure, jointed crankbaits have their pros and cons. They have their fans and their haters too! To be honest, when I’m fishing this is not a style of lure I often search my lure selection for. But on their day, jointed crankbaits can definitely out-fish other styles. So if you’re having a quiet day on the water and want to give fish something different, give them a go!", materials: "twine, beads, fishingline, hooks", number_of_likes: 3, author_id: 12, image_url: "https://designobserver.com/media/images/mondrian/38914-7_folk+art+fishing+lure_group1d-1_m.jpg")
end