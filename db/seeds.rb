user1 = User.create(username: "ChemTeachR101", password: "password1")
user2 = User.create(username: "BioBuff", password: "password2")
user3 = User.create(username: "MathProf3", password: "password3")

science = Subject.create(name: "Science", photo: "https://i.pinimg.com/originals/01/67/e9/0167e9df8103435b37b166aea72d57b3.jpg")
tech = Subject.create(name: "Technology", photo: "https://scienceandtechnologytodayblog.files.wordpress.com/2017/03/the-importance-of-science-and-technology-fea.jpg?w=600")
eng = Subject.create(name: "Engineering", photo: "https://yp6uap4od3sncuze-zippykid.netdna-ssl.com/wp-content/uploads/2016/04/Engineering-EDIWeekly.jpg")
math = Subject.create(name: "Mathematics", photo: "http://media.therakyatpost.com/wp-content/uploads/2015/10/bigstock-Maths-formulas-on-chalkboard-b-88875161.jpg")

chem = Course.create(name: "Chemistry", subject: science)
bio = Course.create(name: "Biology", subject: science)
phys = Course.create(name: "Physics", subject: science)
earth_sci = Course.create(name: "Earth Science", subject: science)
ap_chem = Course.create(name: "AP Chem", subject: science)
ap_bio = Course.create(name: "AP Bio", subject: science)
ap_phys = Course.create(name: "AP Physics", subject: science)
gaming = Course.create(name: "Gaming Fundamentals", subject: tech)
python = Course.create(name: "Python 101", subject: tech)
java = Course.create(name: "Intro to Java", subject: tech)
comp_sci = Course.create(name: "Computer Science Fundamentals", subject: tech)
ap_cs = Course.create(name: "AP Computer Science A", subject: tech)
cad = Course.create(name: "Intro to Engineering", subject: eng)
cars = Course.create(name: "Intro to Auto Mechanics", subject: eng)
sound = Course.create(name: "Audio and Sound Intro", subject: eng)
robotics = Course.create(name: "Lego Robotics", subject: eng)
alg1 = Course.create(name: "Algebra 1", subject: math)
alg2 = Course.create(name: "Algebra 2", subject: math)
geom = Course.create(name: "Geometry", subject: math)
trig = Course.create(name: "Trigonometry", subject: math)
precalc = Course.create(name: "PreCalculus", subject: math)
ap_calc1 = Course.create(name: "AP Calculus", subject: math)

Resource.create(resource_type: "Project", name: "Make Silly Putty",
  description: "Ingredients:  Elmer's Glue, liquid starch (or Borax), food coloring
It's a non-Newtonian fluid/colloidal substance. Polymers held together by covalent bonds and hydrogen bonds between the molecules give it it's properties.
https://www.thoughtco.com/silly-putty-history-and-chemistry-606806", photo: "http://1.bp.blogspot.com/-mQUa6G72e9U/UBAnZOu4EbI/AAAAAAAAAFU/EQlAFDGYcjs/s1600/P1030042.JPG",
  course: chem, user: user1)
Resource.create(resource_type: "Website", name: "Chemistry Science Projects" , description:
    "This is a great website that gives multiple ideas for chemistry projects. You can sort by difficulty!
website: https://www.sciencebuddies.org",
    photo: "https://venturebeat.com/wp-content/uploads/2017/07/kahoot.png?fit=1132%2C601&strip=all",
    course: chem, user: user1)
Resource.create(resource_type: "Website", name: "Crash Course Chemistry" , description:
      "This is one of the most helpful chemistry YouTube channels. I have shown my students many of Hank's videos and he's an engaging speaker.
website: https://www.youtube.com/playlist?list=PL8dPuuaLjXtPHzzYuWy6fYEaX9mQQ8oGr",
      photo: "https://jameskennedymonash.files.wordpress.com/2014/04/crash-course-chemistry.jpg",
      course: chem, user: user1)
Resource.create(resource_type: "Project", name: "Rate of Chem Rxn",
  description: "Test out the relative rates of reaction for varying amounts of solid material surface area.
Ingredients: Alka seltzer tablets, HCl/Muriatic Acid", photo: "https://alkaseltzer.com/static/media/images/3tablets.png",
  course: chem, user: user1)
Resource.create(resource_type: "Lab", name: "Stoich S'mores Lab" , description: "Use ingredients for smores to
  illustrate the concepts of stoichiometry. Make a smore as reward for finishing worksheet.",
  photo: "https://foodsogoodmall.com/wp-content/uploads/2013/08/Smores.jpg", course: chem, user: user1)
Resource.create(resource_type: "Lab", name: "Penny Lab", description: "Determine the density of 20 pennies using
  correct significant figures. Will need pennies, graduated cylinder, water, mass balance.",
  photo: "https://cdn.kastatic.org/googleusercontent/tI--eaJIzZAjnoe9UhgJ9KJ34klz-ibjWka9vUDuyyq3vbDBBfYXQTzk2i2Iz2r-GOUQeVW29WQ3Y7lhtL_l-ag",
  course: chem, user: user1)
Resource.create(resource_type: "Lab", name: "Chromatography Lab" , description: "Observe chromatography plates for specific dyes
  and determine the relative size of their molecules. Then determine the dyes present in an unmarked substance
  using what was observed previously. Will need chromatography kit (dyes, paper, toothpicks)",
  photo: "https://www.teachengineering.org/content/wst_/activities/wst_environmental/wst_environmental_lesson02_activity1_image1.jpg",
  course: ap_chem, user: user3)
Resource.create(resource_type: "Lab", name: "Acid-Base Titration Lab", description: "Given a known concentration of a base, determine
  the pH of an unknown acid using a buret and an indicator. Will need erlenmayer flasks, buret, acid & base solutions.",
  photo: "https://www.sciencesource.com/Doc/TR1_WATERMARKED/5/c/0/0/SS2824411.jpg?d63644876051", course: ap_chem, user: user3)
Resource.create(resource_type: "Review_Activity", name: "Scavenger Quiz", description: "Put 10 questions around the room
  and make students find the question before they answer it on their paper. First students to bring all 10 written
  correct answers gets a prize.",
  photo: "http://worldartsme.com/images/college-scavenger-hunt-clipart-1.jpg", course: chem, user: user1)
Resource.create(resource_type: "Review_Activity", name: "Jeopardy", description: "Create questions and answers and assign
  point values to each question. Break students up into teams and have some non-chaotic way for them to signal
  that they want to answer the question when it is read. First team to signal gets to answer the question. If
  incorrect, one other team gets to try to answer and steal the points. If the second team fails,
  the question is dead and we choose another category. Team with most points wins. Can also create a
  Daily Double question worth more points than its category. Can also have a wager
  question at the end to serve as a tie-breaker.",
  photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Jeopardy_game_board.png/255px-Jeopardy_game_board.png",
  course: chem, user: user1)
  Resource.create(resource_type: "Field_Trip_Idea", name: "Recycling Center", description: "https://www.montgomerycountymd.gov/sws/facilities/rc/tours.html",
    photo: "https://vignette.wikia.nocookie.net/scribblenauts/images/b/b7/Recycling_Plant.png/revision/latest?cb=20130303133509",
    course: chem, user: user1)
Resource.create(resource_type: "Website", name: "Kahoot Thermo 2 Quiz" , description:
  "https://play.kahoot.it/#/k/5488194d-24ce-43a9-b214-3f546f482779",
  photo: "https://venturebeat.com/wp-content/uploads/2017/07/kahoot.png?fit=1132%2C601&strip=all",
  course: ap_chem, user: user3)
Resource.create(resource_type: "Website", name: "Weak Acid Base Equilibria" , description:
  "https://www.khanacademy.org/science/chemistry/acids-and-bases-topic/copy-of-acid-base-equilibria/a/weak-acid-base-equilibria",
  photo: "https://cdn.greenhouse.io/external_greenhouse_job_boards/logos/000/000/457/original/khan-logo_clear-bg.jpg?1534963954",
   course: chem, user: user1)
Resource.create(resource_type: "Field_Trip_Idea", name: "Natural History Museum --Gem Exhibit" , description: "Molecular Structure",
  photo: "https://i.ytimg.com/vi/QV-SvNMW4QQ/maxresdefault.jpg", course: chem, user: user1)
Resource.create(resource_type: "Field_Trip_Idea", name: "NIST Fieldtrip", description: "Explore the importance of having standards of measurement.",
  photo: "https://www.nist.gov/sites/default/files/styles/480_x_480_limit/public/images/2017/01/04/nist_fbi_joint.jpg?itok=p9ME_Bb1",
  course: chem, user: user1)
Resource.create(resource_type: "Project", name: "Make A Volatic Cell", description: "Will need potassium nitrate, copper metal, zinc metal,
  wire, voltimeter, beakers, tube for salt-bridge, zinc sulfate solution and copper sulfate solution.",
  photo: "https://www.chem.wisc.edu/deptfiles/genchem/netorial/rottosen/tutorial/modules/electrochemistry/electro_icons/cell_diagram.gif",
  course: ap_chem, user: user3)
Resource.create(resource_type: "Project", name: "Mobile Elements",
  description: "This is a research project. Assign students an element and have
  them create a hanging mobile to display the information they discovered. Should include the element name & symbol,
  history of the element, primary uses, preferred ionic state, family, characteristics @ room temperature,
  and diagram of its atom.", photo: "https://newvillagecharter.digication.com/files/M496c2bb58bdc3.JPG",
  course: chem, user: user1)

Resource.create(resource_type: "Review_Activity", name: "Whiteboard Race",
  description: "Prepare some math problems. Have 2 teams of students in two single file lines facing the board.
  Write the problem on the board and say, Go. First team member to get problem correct on the board with work
  shown earns a point for their team.",
  photo: "https://i.pinimg.com/originals/5b/3c/dc/5b3cdcc42a0a39e8a70d906abb0f6f1e.jpg", course: alg1, user: user2)
Resource.create(resource_type: "Review_Activity", name: "Whiteboard Race",
  description: "Prepare some math problems. Have 2 teams of students in two single file lines facing the board.
  Write the problem on the board and say, Go. First team member to get problem correct on the board with work
  shown earns a point for their team.",
  photo: "https://i.pinimg.com/originals/5b/3c/dc/5b3cdcc42a0a39e8a70d906abb0f6f1e.jpg", course: alg2, user: user2)
Resource.create(resource_type: "Review Activity", name: "Scavenger Quiz", description: "Put 10 questions around the room
  and make students find the question before they answer it on their paper. First student to bring all 10 written
  correct answers gets a prize.",
  photo: "http://worldartsme.com/images/college-scavenger-hunt-clipart-1.jpg", course: alg1, user: user2)
Resource.create(resource_type: "Review_Activity", name: "Scavenger Quiz", description: "Put 10 questions around the room
  and make students find the question before they answer it on their paper. First student to bring all 10 written
  correct answers gets a prize.",
  photo: "http://worldartsme.com/images/college-scavenger-hunt-clipart-1.jpg", course: alg2, user: user2)
Resource.create(resource_type: "Website", name: "Matrix Algebra Resource" ,
  description:"https://www.khanacademy.org/math/algebra-home/alg-matrices",
  photo: "https://i.ytimg.com/vi/T_aiofOSWfI/maxresdefault.jpg", course: alg2, user: user2)
Resource.create(resource_type: "Website", name: "Factoring Patterns" , description: "https://www.expii.com/t/using-factoring-patterns-4806",
  photo: "https://www.humbleisd.net/cms/lib/TX01001414/Centricity/Domain/9989/factoring%20special%20polynomials.gif",
  course: alg1, user: user2)

ch1 = Post.create(content: "Does anyone have any ideas for 11th grade Chemistry field trip?
  I have a bunch of rambunctious students and am worried about taking them on a field trip.", course: chem, user: user1)
al1 = Post.create(content: "Does anyone have any ideas for 9th grade Algebra 1 field trip?
  I have a bunch of rambunctious students and am worried about taking them on a field trip.", course: alg1, user: user1)
bio1= Post.create(content: "Does anyone have any ideas for 10th grade Biology field trip?
  I have a bunch of rambunctious students and am worried about taking them on a field trip.", course: bio, user: user3)
ph1 = Post.create(content: "Does anyone have any ideas for 12th grade Physics field trip?
  I have a bunch of bored students and need to spice up my curriculum.", course: phys, user: user3)
ac1 = Post.create(content: "Does anyone have any ideas for 11th grade AP Chem field trip?
  I have a bunch of terrified and stressed out students and need to show them chemistry is not the worst.", course: ap_chem, user: user2)

Comment.create(content: "Take them outside and do some demonstrations.", post: ch1, user: user2)
Comment.create(content: "Are there any textile, plastics, or food labs or plants in your community?
  You could take them there and show them chemistry in action.", post: ch1, user: user3)
Comment.create(content: "Bio is cool.", post: bio1, user: user3)
Comment.create(content: "Mitosis", post: bio1, user: user2)
Comment.create(content: "Math fieldtrips require some thought.", post: al1, user: user3)
