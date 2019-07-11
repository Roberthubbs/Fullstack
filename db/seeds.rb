# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
ActiveRecord::Base.transaction do 
#####################################################################################


############################### USERS ##########################################

#####################################################################################


    User.destroy_all
    guestUser = User.create!(username: "DemoUser", password: "Password")
    guestUser2 = User.create!(username: "lurePro22", password: "Password")
    guestUser3 = User.create!(username: "gone-fishing34", password: "Password")
    guestUser4 = User.create!(username: "born-on-the-sea", password: "Password")
    guestUser5 = User.create!(username: "professional36", password: "Password")
    guestUser6 = User.create!(username: "caliangler", password: "Password")
    guestUser7 = User.create!(username: "fishin_in_ponds", password: "Password")
    guestUser8 = User.create!(username: "howyoulikethembass", password: "Password")
    guestUser9 = User.create!(username: "got_bass?", password: "Password")
    guestUser10 = User.create!(username: "workingOn-water", password: "Password")
    guestUser11 = User.create!(username: "georgia-fisher", password: "Password")
    guestUser12 = User.create!(username: "MarlinMan", password: "Password")
    guestUser13 = User.create!(username: "howBoutThat", password: "Password")
    guestUser14 = User.create!(username: "best_isBlessed", password: "Password")
    guestUser15 = User.create!(username: "hereWeGo", password: "Password")
    guestUser16 = User.create!(username: "Likescasting", password: "Password")
    guestUser17 = User.create!(username: "castMan", password: "Password")
    guestUser18 = User.create!(username: "Bigtimecasting", password: "Password")
    guestUser19 = User.create!(username: "Lake-placcid", password: "Password")
    guestUser22 = User.create!(username: "piranha33", password: "Password")
    guestUser23 = User.create!(username: "spooky-fish", password: "Password")
    guestUser24 = User.create!(username: "reds667", password: "Password")
    guestUser25 = User.create!(username: "trout778", password: "Password")
    guestUser26 = User.create!(username: "send-boat", password: "Password")
    guestUser27 = User.create!(username: "SOS-send", password: "Password")
    guestUser28 = User.create!(username: "flare_gun", password: "Password")
    guestUser29 = User.create!(username: "fire-fighter", password: "Password")
    guestUser30 = User.create!(username: "fishingsTheName", password: "Password")
    guestUser31 = User.create!(username: "catchingsThegame890", password: "Password")
    guestUser32 = User.create!(username: "PMmefish", password: "Password")
    guestUser33 = User.create!(username: "LurePro", password: "Password")
    guestUser34 = User.create!(username: "Guaranteedcatch", password: "Password")
    guestUser35 = User.create!(username: "ImACatch322", password: "Password")
    guestUser36 = User.create!(username: "wheresthetrout", password: "Password")
    guestUser37 = User.create!(username: "StripedBass4", password: "Password")
    guestUser38 = User.create!(username: "just-floundering", password: "Password")
   
#####################################################################################


############################### CATEGORIES ##########################################

#####################################################################################
Category.destroy_all
category1 = Category.create!(name: "Lures", description: "Projects Involving Lures for Every Type of Fishing")
    
category2 = Category.create!(name: "Rods", description: "Projects Involving Building or Understanding Rods")
#####################################################################################



############################### PROJECTS ##########################################

###############################  LURES   ##########################################

Project.destroy_all
makingLuresOneOOne = Project.create!(description: "Making good all-purpose lures", materials: "Twine, string, joints, ballbearings, treble hooks", number_of_likes: 32, author_id: guestUser10.id, category_id: category1.id)

file1 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/alabamalure.jpg')
makingLuresOneOOne.photo.attach(io: file1, filename: 'alabamalure.jpg')

#####################################################################################

makingLures2 = Project.create!(description: "Tying Your Own Bucktail Dressed Trebles", materials: "Treble Hooks (size 3/0, 4/0, or 5/0),
Tying Vise, scissors, head cement with applicator bottle, Heavy Thread (we like using D size), and bobbin, An assortment genuine white tail deer bucktails, Red hackle (Optional)", number_of_likes: 3, author_id: guestUser14.id, category_id: category1.id)

file2 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/alabamalure.jpg')
makingLures2.photo.attach(io: file2, filename: 'alabamalure.jpg')

#####################################################################################
makingLures3 = Project.create!(description: "Assemble Your Own French Spinners", materials: "Materials listed in directions", number_of_likes: 3, author_id: guestUser18.id, category_id: category1.id)

file3 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/drill.jpg')
makingLures3.photo.attach(io: file3, filename: 'drill.jpg')

#####################################################################################
makingLures4 = Project.create!(description: "Make Your Balsa Wooden Plug", materials: "Materials included inside", number_of_likes: 3, author_id: guestUser22.id, category_id: category1.id)

file4 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/lures_and_hooks.jpg')
makingLures4.photo.attach(io: file4, filename: 'lures_and_hooks.jpg')

#####################################################################################
makingLures5 = Project.create!(description: "Intro To Lure Making", materials:"N/A", number_of_likes: 3, author_id: guestUser29.id, category_id: category1.id)

file5 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/largeeyelure.jpg')
makingLures5.photo.attach(io: file5, filename: 'largeeyelure.jpg')




#####################################################################################
makingLures7 = Project.create!(description: "Casting Your Own Lead Jigs", materials: "Lead, melting equipment (melting pot and ladle) and Do-It mold. Lead melts at 620°F so you require a reliable source of heat.", number_of_likes: 3, author_id: guestUser30.id, category_id: category1.id)

file7 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/lures-hardbaits.jpg')
makingLures5.photo.attach(io: file7, filename: 'lures-hardbaits.jpg')



#####################################################################################
makingLures8 = Project.create!(description: "Fly Fishing Lures for Perch", materials: "Three hooks, twine", number_of_likes: 3, author_id: guestUser37.id, category_id: category1.id)

file8 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/perchriglure.jpg')
makingLures8.photo.attach(io: file8, filename: 'perchriglure.jpg')


makingLures9 = Project.create!(description: "Which Lure Is For You?", materials: "N/A", number_of_likes: 3, author_id: guestUser15.id, category_id: category1.id)

file9 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/help_decide_lure.jpg')
makingLures9.photo.attach(io: file9, filename: 'help_decide_lure.jpg')



############################### PROJECTS ##########################################

###############################  POLES   ##########################################

buildingRods1 = Project.create!(description: "Why Buld Your Own", materials: "Materials Listed inside", number_of_likes: 32, author_id: guestUser10.id, category_id: category2.id)

    file10 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/fishingRod1.jpeg')
        buildingRods1.photo.attach(io: file10, filename: 'fishingRod1.jpg')

#####################################################################################


buildingRods2 = Project.create!(description: "How To Get Started", materials: "Bamboo, Rod Winder, Some Sort of Weight", number_of_likes: 3, author_id: guestUser11.id, category_id: category2.id)
    file11 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/fishingRod2.png')
        buildingRods2.photo.attach(io: file11, filename: 'fishingRod2.jpg')

#####################################################################################


buildingRods3 = Project.create!(description: "Choosing The Right Line", materials: "N/A", number_of_likes: 3, author_id: guestUser23.id, category_id: category2.id)
        file12 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/fishingLine5.jpeg')
            buildingRods3.photo.attach(io: file12, filename: 'fishingLine5.jpg')

#####################################################################################

buildingRods4 = Project.create!(description: "Build your own rod: Part 1", materials: "N/A", number_of_likes: 3, author_id: guestUser28.id, category_id: category2.id)
        file13 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/fishingRod3.jpeg')
            buildingRods4.photo.attach(io: file13, filename: 'fishingLine3.jpg')

#####################################################################################

buildingRods5 = Project.create!(description: "Build your own rod: Part 2", materials: "N/A", number_of_likes: 3, author_id: guestUser28.id, category_id: category2.id)
        file14 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/fishingRod3.jpeg')
            buildingRods5.photo.attach(io: file14, filename: 'fishingLine3.jpg')
#####################################################################################



buildingRods6 = Project.create!(description: "Shorten Your Rod Butt", materials: "Replacement Butt, Hacksaw, Dremel", number_of_likes: 3, author_id: guestUser22.id, category_id: category2.id)
        file15 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/fishingRod4.jpeg')
            buildingRods5.photo.attach(io: file15, filename: 'fishingLine4.jpg')
############################### STEPS ##########################################

#####################################################################################

###############################  LURES ###############################################


Step.destroy_all 
project1_step1 = Step.create!(title: "Jointed crankbaits (aka “broke-back crankbaits”) add a whole new dimension to lure fishing. If you take one of your favorite 1-piece crankbaits bodies, cut it in two and then rejoin it, you’ll be surprised at the difference", project_id: makingLuresOneOOne.id, body: "On the upside, adding a join somewhere in the lure body causes it to have a more sinuous, slithery action…… and it does so at much lower cranking speeds. This means you can keep it wiggling enticingly in “the zone” for much longer. They also tend to make a little more noise, which can be either advantageous or not, depending on your circumstances. On the down-side? Their floppiness means that jointed crankbaits tend to cast poorly, both in terms of distance and accuracy. More hardware means more potential places for the lure to break. If you’re using screw eyes, the tail section is particularly vulnerable, so be sure to read my article on how to use screw eyes for maximum strength. Of course, more hardware also means more potential entry points for water. And jointed crankbaits are a little more fiddly and time consuming to make than single piece bodies. 3 Tips For Designing And Making Jointed Crankbaits “V” Cut Vs Straight Cut I usually shape the bodies of my jointed crankbaits as a single piece and then cut them in two for rejoining them. When I get to the cutting stage, there are two options: A straight cut that leaves both ends square, or A “V” joint made by angling the saw back towards the tail and cutting half way through from each side of the lure. A “V” cut is a bit more work and takes a little more skill to get right. But it has the advantage of concealing the joint more when the lure is looked at from the side. On the other hand, a straight cut is fast and easy, but leaves a big open gap in the lure when looked at from side on. Which is best? I still prefer the appearance of jointed crankbaits that use a “V” cut. But experience and observations suggest the fish don’t really care either way.")
project1_step2 = Step.create!(title: "Screw Eyes", project_id: makingLuresOneOOne.id, body: "Jointed crankbaits are usually held together by interconnecting screw eyes or hand made through wires that interlock. One of the advantages of screw eyes (and the reason I always use a screw eye for prototypes) is that you can adjust the gap between the two body parts. Just open the screw eyes up, separate the two parts and screw the eyes in or out further. Then put the lure back together and re-test it. Once I know what gaps works best I can make through wires for future lures. The reason this is important is that the two halves of the lure body limit the movement, as show in the image. As a rule with jointed crankbaits, the wider the gap between the body parts, the wider the action of the lure and the better it can be worked at slower speeds. On the flip side, a narrower gap gives a tighter action, but a more stable lure that can handle a wider range of speeds.")
project1_step2 = Step.create!(title: "Single Or Double Jointed?", project_id: makingLuresOneOOne.id, body: "Jointed crankbaits can be constructed with a single joint – 1 loop on the front connecting to two loops on the tail. Or they can have double joints: two loops on each of the parts, one above the other. Single joints tend to be more floppy and give a more erratic, wider action. The tail section also tends to hang down into the water when they are at rest, which presents the rear hook nicely to the fish. They can usually be worked more slowly, too. A Double Hinged Jointed CrankbaitDouble joints restrict the movement of the tail section to just side to side and pretty much eliminate up and down movement. This helps with casting and stabilizes the lure so it can be worked a little faster. In my view it also looks more natural when the lure is swimming. The Wash-up On Jointed Crankbaits Like any style of lure, jointed crankbaits have their pros and cons. They have their fans and their haters too! To be honest, when I’m fishing this is not a style of lure I often search my lure selection for. But on their day, jointed crankbaits can definitely out-fish other styles. So if you’re having a quiet day on the water and want to give fish something different, give them a go!")







project2_step1 = Step.create!(title: "Step 1:", project_id: makingLures2.id, body: "Insert the treble hook (here we are using 4/0) into the fly tying vise. Slowly wrap the thread starting at the hook eye and work away from the eye. You will require a 1/2 inch (1cm) to 1 inch (2.5cm) long bed depending on the number of collars of hair your trebles will require")
project2_step2 = Step.create!(title: "Step 2:", project_id: makingLures2.id, body: "After completing the bed for the hair work plenty of head cement into the thread.")
project2_step3 = Step.create!(title: "Step 3:", project_id: makingLures2.id , body: "Place the first piece of hackle onto the bed of hair and wrap with thread four to six times. Keep the thread snug at all times. Work plenty of head cement over the wraps of thread.")
project2_step4 = Step.create!(title: "Step 4", project_id: makingLures2.id, body: "Rotate the hook in the vise and tie another piece of hackle along opposite side of hook shank. Again, work plenty of head cement onto the thread.")
project2_step5 = Step.create!(title: "Step 5", project_id: makingLures2.id, body: "Wrap several more wraps of thread and apply a little more head cement..")





project3_step1 = Step.create!(title: "Step 1:", project_id: makingLures3.id, body: "Place hook eye in eye of open loop wire shaft.")
project3_step2 = Step.create!(title: "Step 2:", project_id: makingLures3.id, body: "Pinch the two ends of the wire shaft together and slip the desired brass spinner body(ies) down the shaft. With small spinners you may have to trim the tag end of the spinner shaft a little.")
project3_step3 = Step.create!(title: "Step 3:", project_id: makingLures3.id, body: "Slide remaining body components and the desired spinner blade with properly sized stirrup clevise onto the shaft. Note: the blade has a polka-dot die cut prism tape attached.")
project3_step4 = Step.create!(title: "Step 4:", project_id: makingLures3.id, body: "Using needle nose pliers grab the wire shaft about 1/4\ (6mm) above the clevise and bend the wire three quarters (270°) around the nose of the pliers.")
project3_step5 = Step.create!(title: "Step 5:", project_id: makingLures3.id, body: "Now Wrap the tag end of the wire shaft tightly around the shaft. Wrap two complete turns.")
project3_step6 = Step.create!(title: "Step 6:", project_id: makingLures3.id, body: "Trim excess wire as closely to the shaft as possible")





project4_step1 = Step.create!(title: "Step 1:", project_id: makingLures4.id, body: "Draw a simple lure pattern on the tracing paper, (should be between 2 to 4 inches long). Glue 2 pieces of balsa wood together temporarily and place the paper pattern on the top. Gently mark the balsa wood with the pattern for cutting with your cutting knife. Now cut the wood as for the pattern. Round the edges with sand paper, now separate the two pieces of wood. You should now have two symmetrical halves of the lure.")
project4_step2 = Step.create!(title: "Step 2:", project_id: makingLures4.id, body: "Using the cutting knife gently carve out a small grove for the wire and lead ballast weight as shown. Glue the two halves together and sand smooth. Apply several coats of clear coat over the unpainted body.")
project4_step3 = Step.create!(title: "Step 3:", project_id: makingLures4.id, body: "Gently draw desired patterns on the aluminum foil tape. Now gently apply the foil to the lure being careful not to wrinkle the foil.")
project4_step4 = Step.create!(title: "Step 4:", project_id: makingLures4.id, body: "Apply several more coats clear coat over the foiled body.")
project4_step5 = Step.create!(title: "Step 5:", project_id: makingLures4.id, body: "Paint or leave silver. Glue on eyes and match lip to bait")
project4_step6 = Step.create!(title: "Step 6:", project_id: makingLures4.id, body: "Attach lip by gently cutting a small grove into the lure and glue in position. Now attach split rings and hooks.")



project5_step1 = Step.create!(title: "Intro to Lure Making", project_id: makingLures5.id, body: "Well, here it is! The Lure Making Web Site many of you have waited many years for. I am sure you are much like I am. Whenever I sit at my work tackle work bench and begin making a few lures my mind begins to drift off into nowhere land. I begin thinking of fishing trips, and I even recollect the many individual fish I have taken in the past and dream of trips, excursions and fish that I hope and dream will taken in the future. This is an updated version of our first lure making web site. I have added many create! illustrations and photos and many more details. The instructions to making more lures and many more tips which I hope will make your tackle making life more enjoyable. Instructions to create! and exciting lures will be added over time as time permits. What you will see and read here is information gathered from my years of designing and making lures and from many of you who have been making and selling tackle for years. I would like to take this opportunity to thank many of the tackle manufactures and fishing guides who I am in contact with on a regular basis and do not hesitate to share valuable information on the making of fishing tackle. I hope you find the Lure Maker's Work Shop easy to follow, practical and most of all I hope it gets you started in what I believe is an incredibly fun hobby or possibly even a business. This manual has been written with the simple goal of introducing anglers to the world of lure making in a concise and practical manner. As a partner in Real Pro's SportFishing I am lucky to speak with thousands of anglers across Canada and the United States and now the world each year, many of whom said they wanted a simple guide to making the most practical lures. Please remember that not every lure you assemble, design from scratch, or copy from a brand name lure will work perfectly without a little tinkering or redesigning. It would be great if they all worked on our first attempt. Don't get discouraged if a few, or even most of them don't work out as planned. Be prepared to take a few apart and rebuild them from scratch. It's part of the fun. But in no time at all you too will be building a wide variety of incredible fish catching lures.")



project7_step1 = Step.create!(title: "Step 1:", project_id: makingLures7.id, body: "Place hooks or other components in mold cavity.")
project7_step2 = Step.create!(title: "Step 2:", project_id: makingLures7.id, body: "Carefully pour lead into mold cavities.")
project7_step3 = Step.create!(title: "Step 3:", project_id: makingLures7.id, body: "The lead will cool quickly. Carefully remove jig heads from mold. Caution: They are still hot!")
project7_step4 = Step.create!(title: "Step 4:", project_id: makingLures7.id, body: "Remove spruce from the jigs with a pair of gate shears.")
project7_step5 = Step.create!(title: "Step 5:", project_id: makingLures7.id, body: "Paint lures as desired with vinyl jig paint or powder paint.")




project8_step1 = Step.create!(title: "Step 1:", project_id: makingLures8.id, body: "The “Tightline Rig”  is the newest thing on the scene, this set-up has three hooks tied in a staggered series on the line")
project8_step2 = Step.create!(title: "Issues", project_id: makingLures8.id, body: "The theory is you will feel the slightest bite and increase your catch rate.")
project8_step3 = Step.create!(title: "Solution:", project_id: makingLures8.id, body: "Unfortunately it has some fatal flaws, but can be resolved when you make your own for less than 50 cents each.  First flaw is that the top hook gets no action at all, its just too far out of the strike zone.  The 2nd flaw is that the hooks are just too close together.  When you hook up with a fish, you will get another hook into the meat along its backside at some point. The solution is easy, tie on your snap at the bottom, within the first two inches run the line (typically 20 or 25 lb test) twice through a 5 mm bead and slide on your #6 gold perch hook, then run another 5 mm bead down the line and loop the line through once.")
project8_step4 = Step.create!(title: "Rinse And Repeat", project_id: makingLures8.id, body: "Repeat this process 8 to 10 inches above the first hook, and then 20 inches or so above that, tie on a crane swivel.  If you are already using a snap and swivel on your main line, you can skip the crane swivel, and just tie a double loop knot to connect too.  Now, to get your third hook on the line, down at the snap, attach an eight inch snell when you put your weight on.  You will catch more fish simply because you have now three hooks in the perch’s natural strike zone….easy peasy!")




project9_step1 = Step.create!(title: "Jigs", project_id: makingLures9.id, body: "Of all lures, I would say that jigs are the most versatile. A jig can catch about every game fish there is, and are inexpensive to boot. They have a weighted lead head and come in every size and color and can be “dressed” (think of it like a tail or skirt) in feathers, hair, a soft plastic grub, or with the bait of your choice. Jig fishing takes a lot of concentration, unlike spinners, all the “action” (how a lure moves in the water) comes from you. If you don’t do anything the jig just sinks. The classic way to fish a jig is to cast it out, wait until it hits the bottom (you will know it has hit bottom when your line goes slack), then retrieve it in a series of hops. You make it hop by lifting the rod tip, lowering it, and retrieving your line. Try different speeds, big lifts, little hops, twitching until you find what works. Pay attention, though. Detecting the strike is the hardest thing about jigging.")
project9_step2 = Step.create!(title: "Spinner", project_id: makingLures9.id, body: "Spinners are a great beginner lure because they are so easy to use. They are essentially a metal shaft with spinning blade. The hook can be bare or dressed. Dragging a spinner through water causes the blade to spin. The spinning motion of the blade creates sound and vibration that can be picked up by fish through their lateral line (you’ll learn more about this in the fish section.) This makes spinners an excellent choice for stained or murky water. Simple as can be. Cast and retrieve, that’s it. As long as the blade is spinning, its working. You can try speeding up or slowing down your retrieve for variety.")
project9_step3 = Step.create!(title: "Spoons", project_id: makingLures9.id, body: "Spoons are curved metal lures. The first spoons were just that, spoons with the handle broken off. Today, spoons can be had (like all other lures) in any color and size. There is a spoon for every fishing situation. The shape of this lure gives it its distinctive action. Spoons move through water with a side-to-side wobble that simulates an injured baitfish, and game fish just love injured baitfish. Some spoons are made to be cast, others to be trolled, and some even to be jigged. As a beginner you will most likely be using the most common type; the casting spoon. Casting spoons are easy to use. Like spinners, just cast and retrieve. You can vary your speed as long as it’s wobbling. If the spoon begins to spin, slow down your retrieve. Add a split ring to the eye of the lure for better action.")
project9_step4 = Step.create!(title: "Soft Plastic", project_id: makingLures9.id, body: "Soft plastic baits encompass a variety of different lures, mostly used for bass fishing. The classic soft plastic bait is the worm. These type of baits are created by pouring liquid plastic into a mould and adding dyes, metallic flakes, or even scent. They can resemble the natural forage of fish, like worms, crawfish, lizards or frogs, but some plastic baits don’t resemble anything you might find in or out of the water; these are referred to as creature baits or “critters.” The soft plastic bodies of these lures, encourage fish to hold on to them a little longer before they spit them out, giving the angler a better chance to set the hook. Presentation for soft plastic baits depends on the type of bait. For the classic worm, the most popular technique is the Texas Rig. To rig your worm this way, you use a bullet weight (read the section on sinkers in the terminal tackle post if you don’t know what a bullet weight is). Thread the bullet weight on the the line above your hook, and then insert the hook through the top of the worm’s head, then bury the barb into the body of the worm to make it “weedless” (meaning it will not get hung up on underwater foliage.) Now cast it into a likely fish holding area and let it fall to the bottom. Twitch your rod tip a few times. If you still don’t have a bite, hop it back to you in short twitchy hops.")
project9_step5 = Step.create!(title: "Plug", project_id: makingLures9.id, body: "Plugs are constructed from hollow plastic or wood to resemble baitfish, frogs or other prey. They usually sport two or three treble hooks. These hard bodied lures can be fished at almost any depth, as some are made to float or dive or both. Depending on the design, a plug will wobble, rattle or gurgle. They come in all sizes, and most of them have some sort of plastic lip that allows them to dive when you pull them through the water. Different kind of plugs include: crankbaits, jerkbaits, surface plugs, floating/diving plugs, and poppers, One of the most effective (and one of the first plugs you should add to your tackle box) is the long, narrow minnow imitation in three to four inch length, the original is made by Rapala. It floats when its not moving and dives shallowly when it’s retrieved. Add a split ring to the eye if it doesn’t have one. Cast it out and wait until the rings on the surface of the water dissipate, then retrieve it slowly or fast, stopping suddenly and maybe throwing in an occasional twitch.")





############################### STEPS ##########################################

#####################################################################################

###############################  POLES ###############################################


makingPoles1_step1 = Step.create!(title: "Why Build your own", body: "There are lots of reasons. First, there’s a great feeling of accomplishment when you catch a fish on a rod you have made yourself. It just increases the enjoyment of your sport. Second, you can design a rod that fits your fishing style. Like pitching crankbaits? A crankbait rod is a lot different than a rod made for jig fishing, or pulling spinners behind bottom bouncers or throwing spinnerbaits, or drop shotting.", project_id: buildingRods1.id)
makingPoles1_step2 = Step.create!(title: "The biggest reason", body: "But perhaps the biggest reason is simply the enjoyment of doing so. How better to fill a couple of hours most winter evenings by working on a rod you will fish with next spring. It’s productive and it is time well spent.", project_id: buildingRods1.id)
makingPoles1_step3 = Step.create!(title: "I've been making mine since the 60's!", body: " Those were the days of fiberglass. Honestly, there were few rods being made by the major companies that were any good for the sophistication that was rapidly entering the industry. Jig fishing was coming on strong, spoon plugging was making news across the north country. New crankbait designs were plentiful and the advent of plastics in fishing was just coming on.", project_id: buildingRods1.id)
makingPoles1_step4 = Step.create!(title: "I reccommend bamboo", body: "For almost the past 20 years, my rod making has been focused on bamboo. I like the challenge and the learned skills that come with taking a bamboo pole and turning it into a fly rod that is well worth $1,000 or so. But every once in a while I buy a graphite blank and put it together because I just can’t resist it.", project_id: buildingRods1.id)

#####################################################################################

makingPoles2_step1 = Step.create!(title: "Let's get started!", body: "A good rod winder would be a wise purchase, although I’ve wrapped a lot of rods with the thread spool sitting in a bowl on a table with the thread going through the pages of a book. Add weight to the book, such as more books, until you get the tension you like and begin winding.But it helps to have a cradle to hold the rod while you wind the thread onto the guides. I don’t use a cradle because I have wrapped so many rods simply holding the blank in my hands it is just easier for me.", project_id: buildingRods2.id)
makingPoles2_step2 = Step.create!(title: "Threading!", body: "You will need an inexpensive burnisher to pack your thread and burnish it after you wrap a guide to flatten the thread. Add a razor blade to cut your thread and you are ready to wrap. Once your wraps are made you can apply color preserver to maintain the thread color or simply apply special rod wrap epoxy without the color preserver, your choice.", project_id: buildingRods2.id)
makingPoles2_step3 = Step.create!(title: "Grips" ,body: "You can make your own grips with cork disks or buy grips already shaped and ready to glue onto the blank with a reel seat.", project_id: buildingRods2.id)
makingPoles2_step4 = Step.create!(title: "Where to Find Supplies", body: "I’ve always been a strong proponent of buying locally, so check out your local outlets to see what is being offered for the rod maker. Chances are there will not be much. For the businessman, it just isn’t feasible to stock the large number of rod building merchandise that will be needed to be offered for sale.", project_id: buildingRods2.id)
makingPoles2_step5 = Step.create!(title: "There are many possibilities", body: "There’s also an incredible number of ways of customizing a rod, including decals, threadwork and penmanship. When it comes to customizing your own rod, the sky is the limit.", project_id: buildingRods2.id)



#####################################################################################

makingPoles3_step1 = Step.create!(title: "MONOFILAMENT", body: "Let me say right up front that I no longer flip or pitch with mono. There are better choices, and I use them. Still, it's not like I haven't caught my share of bass with it. In fact, it's all I used for many years.The first problem with monofilament fishing line is that its abrasion resistance isn't all that great. Almost by definition when you're flipping or pitching you're in heavy cover. That'll eat your line up in no time.The second big problem with mono is stretch. It can be very difficult to get a good hook set with it if you have a bad angle to the fish or too much line out. You can reduce the stretch factor by upsizing your line. The difference between 20-pound test and 25-pound test is huge.If you're on a very tight budget, monofilament is still the cheapest way to go. So, if you have to use it make sure you check it every few casts and retie frequently — at least after every fish — and never use less than 25-pound test (30 is even better).", project_id: buildingRods3.id)
makingPoles3_step2 = Step.create!(title: "FLUOROCARBON", body: "I probably use fluorocarbon line 80 percent of the time. It has reasonably good abrasion resistance, almost no stretch and is nearly invisible.The lightest weight I use is 20-pound test, and I only fish with that under very controlled circumstances. If I'm flipping or pitching to isolated cover in very clear water I'll go with it, but it scares me even then. The risk of a break-off is just too great. I'm willing to take that risk, however, if I think it'll get me more quality bites.Most days I'm going to spool 25-pound test. It isn't that much harder to handle, and it gives me an extra margin of error. It removes the fear factor when I'm competing.", project_id: buildingRods3.id)
makingPoles3_step3 = Step.create!(title: "BRAID", body: "Braid is really the best line for flipping and pitching. It doesn't break and it has no stretch. Unfortunately, it's highly visible, and that can be a big drawback in clear water. I always use it when conditions permit, however. Mostly that's when I'm penetrating heavy mats or fishing stained water.Fishing heavy mats is tough on your line. First, there's the abrasion factor. The heavy, snarled vegetation — some of it years old with a surface like sandpaper — can cut line in an instant. Braid will fray or cut; it's not perfect. But it won't do so nearly as quickly as monofilament or fluorocarbon.Next is the hook set factor. When you flip or pitch into a heavy mat you're dropping your bait down through it towards the bottom of the lake. If you look at what's happening, you'll note that the line runs from your rod tip straight to the mat and then goes straight down. It makes a 90-degree angle at the mat.", project_id: buildingRods3.id)



#####################################################################################


makingPoles4_step1 = Step.create!(title: "The Why of It", body: "For years, I've worked with Shimano in the development of their fishing rods, and I've learned a lot along the way. But until recently, I've never actually tried building one myself. And now that I know how simple it is, I regret not having done it sooner.I know what you're thinking — with so many rods out there to choose from, why build one yourself? Actually, there are several reasons. Building your own rod can be fun and rewarding, and, even better, it gives you the opportunity to build it to your own specifications.", project_id: buildingRods4.id)
makingPoles4_step2 = Step.create!(title: "Getting Started", body: "Let's assume you know what type of rod it is you intend to build, and you already have a blank picked out — its material type, length and action, all ready to go. The next step is to pick the right guides, reel seat, and handle components so that the rod suits your specific needs. And believe it or not, much of that is decided by the brand and model reel you plan to pair to the rod when it's complete. To make the selection process easier for spinning rods, Anglers Resource developed a computerized program to help you make those choices. It's called Guide Placement Software (GPS) and it's super quick and easy. It's also free. I recommend looking there.", project_id: buildingRods4.id)
makingPoles4_step3 = Step.create!(title: "Do You Need Fancy Tools?", body: "While a rod-turning machine would be nice, it's really not necessary. A large cardboard box with V notches cut in each end will work just fine. Once you have everything together, you're ready to begin the building process.", project_id: buildingRods4.id)


#####################################################################################

makingPoles5_step1 = Step.create!(title: "STEP 1: HANDLE ASSEMBLY", body: "To begin the build, you must first test-fit the handle components to the blank you've selected. This will include the reel seat, foregrip, rear grip and/or butt grip, butt cap, the arbors (that occupy the space between the reel seat and the blank) and the winding checks (the small decorative washers that cover and protect any exposed cork ends wherever they occur). The interior sections of each cork piece will need to be reamed with a rattail file, as will the arbors inside the reel seat. Remove only a necessary amount of material so that each piece fits snugly to the blank in its appropriate position. With all pieces in place, it’s time to glue up the handle, reels seat and winding checks using rod epoxy. Mark the blank with a white grease pencil so you'll know where to reposition each component. For visual help on this phase, follow this link.", project_id: buildingRods5.id)
makingPoles5_step2 = Step.create!(title: "STEP 2: GUIDE PLACEMENT", body: "With the reel seat and grips secured to the blank, it's time to align the guide train (all of the guides) with the reel. This is the point where many new rod builders become confused. To assure correct spacing for maximum performance with your selected reel and blank, I suggest watching a couple of quick tutorials. For spinning rods, you're ready to apply the proprietary Guide Placement Software (GPS). Enter the required measurements of your reel into the proper boxes. Hopefully, you used this link in Part 1 when choosing your guides. The program provides the proper layout for any guide type in Fuji's selection.", project_id: buildingRods5.id)
makingPoles5_step3 = Step.create!(title: "STEP 3: PRE-TESTING FOR PERFORMANCE", body: "With your GPS results for spinning, or a good understanding of static positioning for casting rods in hand, it’s time to “tape and test”. This is a critical aspect of your project, since it is the final phase of setting up your rod prior to wrapping.Tape the guides (regular masking tape works well) in place according to the type rod you're building and the style guide you selected. Mount the reel and use a practice plug to determine the overall performance of the rod. It should be quiet, smooth, and exhibit zero “line slap” against the blank. If necessary, move guides slightly to achieve optimum performance.  ", project_id: buildingRods5.id)
makingPoles5_step4 = Step.create!(title: "STEP 4: GLUE AND CLEARCOAT", body: "The instructions are clear and simple. Once all guides are wrapped onto the rod in their predetermined positions, it’s time for a final clear coat of finish over the thread.", project_id: buildingRods5.id)


makingPoles6_step1 = Step.create!(title: "How dedicated are you?", body: "I've shortened the butts on many of my rods...the way I fish and the size of my hands, I don't need those long butts, and in my opinion, if the rod is of good quality and light weight, the so-called balance that the butts are supposed to provide is highly overrated. And long butts get in the way when I'm manipulating a topwater lure. I often don't even bother to plug up the end of the rod butt once I hacksaw it off. Might look a little trashy and unfinished, but it doesn't affect the use of the rod that I can see.", project_id: buildingRods6.id)
makingPoles6_step2 = Step.create!(title: "Adding New Butt(if you wish)", body: "When it comes to choosing butt-cap styles, Fogle notes that gimbaled caps, which lock into a holder, might be necessary for trollers and those who fight large pelagics. Do not, however, try to brace a gimbaled butt cap against your gut without a fighting belt or a slide-on butt cap unless you enjoy being bruised and scraped. Fogle also says that long-butt offshore boat rods (intended strictly for use in a fighting chair) have become far less popular than stand-up gear in the past few years, although he has recently built rods for some customers with Winthrop rod butts that adjust between straight and bent, and can be multipurposed.", project_id: buildingRods6.id)
makingPoles6_step3 = Step.create!(title: "Finishin Up", body: "So at least for the time being, aluminum will be reserved for the heaviest applications, while casting and inshore rods will remain limited to cork, EVA, Hypalon, rubber and plastic. And this fits a familiar pattern: As is true of most fishing gear, every choice reflects a trade-off. A rod used purely for casting light lures in inshore waters will be best off with a light butt and a plastic cap, just as long as you realize that plastic won’t last forever. You can improve longevity with rubber, but weight will also go up. A rod used for heavier action will benefit from the added leverage of a longer butt, but you’ll pay for that leverage when the butt gets caught in your shirt or jacket as you try to cast.Each seemingly small choice you make when selecting a rod butt has an effect on different aspects of how you use that rod. And while the tiptop might get most of the attention, that butt end plays a significant role in just how satisfied you will ultimately be with each and every fishing rod in your rack.", project_id: buildingRods6.id)
end

