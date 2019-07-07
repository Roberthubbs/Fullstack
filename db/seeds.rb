# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
ActiveRecord::Base.transaction do 
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
   
    
Category.destroy_all
category1 = Category.create(name: "Lures", description: "Projects Involving Lures for Every Type of Fishing")
    

    Project.destroy_all
    makingLuresOneOOne = Project.create!(description: "Making good all-purpose lures", body: "Jointed crankbaits (aka “broke-back crankbaits”) add a whole new dimension to lure fishing. If you take one of your favorite 1-piece crankbaits bodies, cut it in two and then rejoin it, you’ll be surprised at the difference.
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
Like any style of lure, jointed crankbaits have their pros and cons. They have their fans and their haters too! To be honest, when I’m fishing this is not a style of lure I often search my lure selection for. But on their day, jointed crankbaits can definitely out-fish other styles. So if you’re having a quiet day on the water and want to give fish something different, give them a go!", materials: "twine, beads, fishingline, hooks", number_of_likes: 32, author_id: guestUser10.id, category_id: category1.id)

makingLures2 = Project.create!(description: "Tying Your Own Bucktail Dressed Trebles", body: "Step 1: Insert the treble hook (here we are using 4/0) into the
fly tying vise. Slowly wrap the thread starting at the hook eye
and work away from the eye. You will require a 1/2 inch (1cm)
to 1 inch (2.5cm) long bed depending on the number of
collars of hair your trebles will require.

Step 2:: After completing the bed for the hair work plenty of
head cement into the thread.

Step 3: Place the first piece of hackle onto the bed of hair and
wrap with thread four to six times. Keep the thread snug at all times.
Work plenty of head cement over the wraps of thread.

Step 4: Rotate the hook in the vise and tie another piece of hackle
along opposite side of hook shank. Again, work plenty of head
cement onto the thread.

Step 5:: Wrap several more wraps of thread and apply a little more
head cement..", materials: "Treble Hooks (size 3/0, 4/0, or 5/0),
Tying Vise, scissors, head cement with applicator bottle, Heavy Thread (we like using D size), and bobbin,
An assortment genuine white tail deer bucktails, Red hackle (Optional)", number_of_likes: 3, author_id: guestUser14.id, category_id: category1.id)

file2 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/alabamalure.jpg')
makingLures2.photo.attach(io: file2, filename: 'alabamalure.jpg')

makingLures3 = Project.create!(description: "Assemble Your Own French Spinners", body: "Step 1: Place hook eye in eye of open loop wire shaft.

Step 1 of making a French Spinner.
Step 2: Pinch the two ends of the wire shaft together and slip
the desired brass spinner body(ies) down the shaft. With
small spinners you may have to trim the tag end of the spinner
shaft a little.

Step 2 of making a French Spinner.
Step 3:: Slide remaining body components and the desired spinner
blade with properly sized stirrup clevise onto the shaft. Note: the blade
has a polka-dot die cut prism tape attached.

Step 3 of making a French Spinner.
Step 4: Using needle nose pliers grab the wire shaft about 1/4\
(6mm) above the clevise and bend the wire three quarters (270°)
around the nose of the pliers.

Step 4 of making a French Spinner.
Step 5: Now Wrap the tag end of the wire shaft tightly around
the shaft. Wrap two complete turns.

Step 5 of making a French Spinner.
Step 6:: Trim excess wire as closely to the shaft as possible", materials: "Materials listed in directions", number_of_likes: 3, author_id: guestUser18.id, category_id: category1.id)

file3 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/drill.jpg')
makingLures3.photo.attach(io: file3, filename: 'drill.jpg')


makingLures4 = Project.create!(description: "Make Your Balsa Wooden Plug", body: "Step 1: Draw a simple lure pattern on the tracing paper, (should be between 2 to 4 inches long). Glue 2 pieces of balsa wood together temporarily and place the paper pattern on the top. Gently mark the balsa wood with the pattern for cutting with your cutting knife. Now cut the wood as for the pattern. Round the edges with sand paper, now separate the two pieces of wood. You should now have two symmetrical halves of the lure.


Step 2: Using the cutting knife gently carve out a small grove for the wire and lead ballast weight as shown. Glue the two halves together and sand smooth. Apply several coats of clear coat over the unpainted body.


Step 3:: Gently draw desired patterns on the aluminum foil tape. Now gently apply the foil to the lure being careful not to wrinkle the foil.


Step 4: Apply several more coats clear coat over the foiled body.


Step 5: Paint or leave silver. Glue on eyes and match lip to bait


Step 6:: Attach lip by gently cutting a small grove into the lure and glue in position. Now attach split rings and hooks.", materials: "Materials included inside", number_of_likes: 3, author_id: guestUser22.id, category_id: category1.id)

file4 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/lures_and_hooks.jpg')
makingLures4.photo.attach(io: file4, filename: 'lures_and_hooks.jpg')

makingLures5 = Project.create!(description: "Intro To Lure Making", body: "Well, here it is! The Lure Making Web Site many of you have waited many years for. I am sure you are much like I am. Whenever I sit at my work tackle work bench and begin making a few lures my mind begins to drift off into nowhere land. I begin thinking of fishing trips, and I even recollect the many individual fish I have taken in the past and dream of trips, excursions and fish that I hope and dream will taken in the future.

This is an updated version of our first lure making web site. I have added many create! illustrations and photos and many more details. The instructions to making more lures and many more tips which I hope will make your tackle making life more enjoyable. Instructions to create! and exciting lures will be added over time as time permits. 

What you will see and read here is information gathered from my years of designing and making lures and from many of you who have been making and selling tackle for years. I would like to take this opportunity to thank many of the tackle manufactures and fishing guides who I am in contact with on a regular basis and do not hesitate to share valuable information on the making of fishing tackle.

I hope you find the Lure Maker's Work Shop easy to follow, practical and most of all I hope it gets you started in what I believe is an incredibly fun hobby or possibly even a business. This manual has been written with the simple goal of introducing anglers to the world of lure making in a concise and practical manner. As a partner in Real Pro's SportFishing I am lucky to speak with thousands of anglers across Canada and the United States and now the world each year, many of whom said they wanted a simple guide to making the most practical lures.

Please remember that not every lure you assemble, design from scratch, or copy from a brand name lure will work perfectly without a little tinkering or redesigning. It would be great if they all worked on our first attempt. Don't get discouraged if a few, or even most of them don't work out as planned. Be prepared to take a few apart and rebuild them from scratch. It's part of the fun. But in no time at all you too will be building a wide variety of incredible fish catching lures.", materials:"N/A", number_of_likes: 3, author_id: guestUser29.id, category_id: category1.id)

file5 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/largeeyelure.jpg')
makingLures5.photo.attach(io: file5, filename: 'largeeyelure.jpg')
makingLures7 = Project.create!(description: "Casting Your Own Lead Jigs", body: "Step 1: Place hooks or other components in mold
cavity.
Step 2: Carefully pour lead into mold cavities.
Step 3: The lead will cool quickly. Carefully remove jig
heads from mold. Caution: They are still hot!
Step 4: Remove spruce from the jigs with a pair of
gate shears.
Step 5: Paint lures as desired with vinyl jig paint or
powder paint.
Step 6: (Optional) Tying bucktail using
tying vise and bobbin.", materials: "Lead, melting equipment (melting pot and ladle) and Do-It mold. Lead melts at 620°F so you require a reliable source of heat.", number_of_likes: 3, author_id: guestUser30.id, category_id: category1.id)


makingLures6 = Project.create!(description: "Casting Your Own", body: "Step 1: Place hooks or other components in mold
cavity.
Step 2: Carefully pour lead into mold cavities.
Step 3: The lead will cool quickly. Carefully remove jig
heads from mold. Caution: They are still hot!
Step 4: Remove spruce from the jigs with a pair of
gate shears.
Step 5: Paint lures as desired with vinyl jig paint or
powder paint.
Step 6: (Optional) Tying bucktail using
tying vise and bobbin.", materials: "Lead, melting equipment (melting pot and ladle) and Do-It mold. Lead melts at 620°F so you require a reliable source of heat.", number_of_likes: 3, author_id: guestUser6.id, category_id: category1.id)

file6 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/lures-hardbaits.jpg')
makingLures6.photo.attach(io: file6, filename: 'lures-hardbaits.jpg')

makingLures7 = Project.create!(description: "Fly Fishing Lures for Perch", body: "The “Tightline Rig”  is the newest thing on the scene, this set-up has three hooks tied in a staggered series on the line, the theory is you will feel the slightest bite and increase your catch rate.  Unfortunately it has some fatal flaws, but can be resolved when you make your own for less than 50 cents each.  First flaw is that the top hook gets no action at all, its just too far out of the strike zone.  The 2nd flaw is that the hooks are just too close together.  When you hook up with a fish, you will get another hook into the meat along its backside at some point. The solution is easy, tie on your snap at the bottom, within the first two inches run the line (typically 20 or 25 lb test) twice through a 5 mm bead and slide on your #6 gold perch hook, then run another 5 mm bead down the line and loop the line through once.  
Repeat this process 8 to 10 inches above the first hook, and then 20 inches or so above that, tie on a crane swivel.  If you are already using a snap and swivel on your main line, you can skip the crane swivel, and just tie a double loop knot to connect too.  Now, to get your third hook on the line, down at the snap, attach an eight inch snell when you put your weight on.  You will catch more fish simply because you have now three hooks in the perch’s natural strike zone….easy peasy!", materials: "Three hooks, twine", number_of_likes: 3, author_id: guestUser37.id, category_id: category1.id)

file7 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/perchriglure.jpg')
makingLures7.photo.attach(io: file7, filename: 'perchriglure.jpg')


makingLures8 = Project.create!(description: "Which Lure Is For You?", body: "Jigs

jig lure

Of all lures, I would say that jigs are the most versatile. A jig can catch about every game fish there is, and are inexpensive to boot. They have a weighted lead head and come in every size and color and can be “dressed” (think of it like a tail or skirt) in feathers, hair, a soft plastic grub, or with the bait of your choice.

Presentation

Jig fishing takes a lot of concentration, unlike spinners, all the “action” (how a lure moves in the water) comes from you. If you don’t do anything the jig just sinks. The classic way to fish a jig is to cast it out, wait until it hits the bottom (you will know it has hit bottom when your line goes slack), then retrieve it in a series of hops. You make it hop by lifting the rod tip, lowering it, and retrieving your line. Try different speeds, big lifts, little hops, twitching until you find what works. Pay attention, though. Detecting the strike is the hardest thing about jigging.

Spinners

spinner lure

Spinners are a great beginner lure because they are so easy to use. They are essentially a metal shaft with spinning blade. The hook can be bare or dressed. Dragging a spinner through water causes the blade to spin. The spinning motion of the blade creates sound and vibration that can be picked up by fish through their lateral line (you’ll learn more about this in the fish section.) This makes spinners an excellent choice for stained or murky water.

Presentation

Simple as can be. Cast and retrieve, that’s it. As long as the blade is spinning, its working. You can try speeding up or slowing down your retrieve for variety.

Spoons

fishing spoon lure

Spoons are curved metal lures. The first spoons were just that, spoons with the handle broken off. Today, spoons can be had (like all other lures) in any color and size. There is a spoon for every fishing situation. The shape of this lure gives it its distinctive action. Spoons move through water with a side-to-side wobble that simulates an injured baitfish, and game fish just love injured baitfish.

Presentation

Some spoons are made to be cast, others to be trolled, and some even to be jigged. As a beginner you will most likely be using the most common type; the casting spoon. Casting spoons are easy to use. Like spinners, just cast and retrieve. You can vary your speed as long as it’s wobbling. If the spoon begins to spin, slow down your retrieve. Add a split ring to the eye of the lure for better action.

Soft Plastic Baits

plastic worm bait

Soft plastic baits encompass a variety of different lures, mostly used for bass fishing. The classic soft plastic bait is the worm. These type of baits are created by pouring liquid plastic into a mould and adding dyes, metallic flakes, or even scent. They can resemble the natural forage of fish, like worms, crawfish, lizards or frogs, but some plastic baits don’t resemble anything you might find in or out of the water; these are referred to as creature baits or “critters.” The soft plastic bodies of these lures, encourage fish to hold on to them a little longer before they spit them out, giving the angler a better chance to set the hook.

Presentation

Presentation for soft plastic baits depends on the type of bait. For the classic worm, the most popular technique is the Texas Rig. To rig your worm this way, you use a bullet weight (read the section on sinkers in the terminal tackle post if you don’t know what a bullet weight is). Thread the bullet weight on the the line above your hook, and then insert the hook through the top of the worm’s head, then bury the barb into the body of the worm to make it “weedless” (meaning it will not get hung up on underwater foliage.) Now cast it into a likely fish holding area and let it fall to the bottom. Twitch your rod tip a few times. If you still don’t have a bite, hop it back to you in short twitchy hops.

worm texas rigged

Plugs

fishing plug lure

Plugs are constructed from hollow plastic or wood to resemble baitfish, frogs or other prey. They usually sport two or three treble hooks. These hard bodied lures can be fished at almost any depth, as some are made to float or dive or both. Depending on the design, a plug will wobble, rattle or gurgle. They come in all sizes, and most of them have some sort of plastic lip that allows them to dive when you pull them through the water. Different kind of plugs include: crankbaits, jerkbaits, surface plugs, floating/diving plugs, and poppers,

Presentation

One of the most effective (and one of the first plugs you should add to your tackle box) is the long, narrow minnow imitation in three to four inch length, the original is made by Rapala. It floats when its not moving and dives shallowly when it’s retrieved. Add a split ring to the eye if it doesn’t have one. Cast it out and wait until the rings on the surface of the water dissipate, then retrieve it slowly or fast, stopping suddenly and maybe throwing in an occasional twitch.

 

 

minnow plug

Spinnerbaits/Buzzbaits

spinnerbait lure

Spinnerbaits and buzzbaits are awkward looking looking lures, consisting of a safety-pin like wire attached to a lead head body. The body usually is dressed with a rubber skirt and the arm with one or two metallic blades like those seen on spinners.

Presentation

The most common way to fish a spinnerbait is what is called “Chuck-N-Wind,” simply cast it out and retrieve it at a moderate speed, keeping the lure at a depth between the surface and five feet. It is a popular technique because it is effective.

Flies

fishing dry flies

Flies are traditionally used with fly fishing equipment, but with the addition of a clear bubble float, spinning gear will cast flies too. Flies are very light lures that imitate insects in various stages of their life cycle, or other natural prey such as baitfish, leeches, hoppers or even mice and frogs. They are usually constructed of fur and and feathers, though some patterns make use of new materials like foam and rubber.

Presentation

Dry flies are intended to float on the surface of the water, to this end they are dressed with some kind of floatant to aid in their buoyancy. Wet flies, like nymphs and streamers are designed to be fished below the surface of the water. Fly fishing is a difficult but rewarding area of the fishing universe.
Now that you know the basic lures and how they are used, you should have an easier time starting your own collection. Buy only a few at a time, and take the time to learn to fish them. If you know anyone that fishes the same water you do, ask them what kind of lures they like to use and what they recommend.", materials: "N/A", number_of_likes: 3, author_id: guestUser15.id, category_id: category1.id)

file8 = open('https://fishables-seed.s3-us-west-1.amazonaws.com/help_decide_lure.jpg')
makingLures8.photo.attach(io: file8, filename: 'help_decide_lure.jpg')


end