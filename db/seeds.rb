def half_value(number)
  (number * 2).round / 2.0
end

rndr = Random.new

FIRSTNAMESF = %w(Anna Bertha Elisabeth Emma Frieda Gertrude Margarethe Maria Marie Martha Edith Elfriede Erna Gerda Gertrude Hildegard Ilse Irmgard Lieselotte Ursula Dieter Uwe Christa Elke Erika Gisela Helga Ingrid Karin Monika Renate Ursula Uwe Andrea Angelika Birgit Gabriele Heike Martina Petra Sabine Susanne Ute Anja Christina Julia Katrin Melanie Nadine Nicole Sabrina Sandra Stefanie Anna Hannah Julia Lara Laura Lea Lena Lisa Michelle Sarah)
FIRSTNAMESM = %w(Ernst Friedrich Hans Heinrich Hermann Karl Otto Paul Walter Wilhelm Gerhard Günter Hans Heinz Helmut Herbert Karl Kurt Walter Werner Günter Hans Horst Jürgen Klaus Manfred Peter Wolfgang Andreas Frank Jörg Jürgen Klaus Michael Peter Stefan Thomas Alexander Christian Daniel Dennis Jan Martin Michael Sebastian Stefan Thomas Finn Jan Jannik Jonas Leon Luca Lukas Niklas Tim Tom)
LASTNAMES = %w(Abel Aber Achen Ackert Adelberg Ahlgrim Aller Altenberg Altmann Ames Anders Angert Anschuetz Appel Asch Ascher Aulbach Austen Babler Bach Bachmann Bahler Bahn Ballmann Balsinger Bank Banner Bartel Bauch Bauer Baum Bayer Beck Beemer Behringer Bellinger Belser Berg Berger Bernd Bernstein Bertels Bertram Bickel Bieber Biehl Biel Birk Blacker Blaschko Blatt Bliss Blum Blumberg Bluth Boeder Bohnert Bohr Bose Brahm Brandt Brecker Brenner Brickle Buck Buller Burger Burr Buseman Butz Clemens Cruse Dahm Danner Debus Decker Degler Deichert Dell Denhart Denning Denzel Deutsch Dewitz Dick Dickmann Dieleman Dieter Dinkelman Dittmann Doppler Dorfman Dorner Dreiling Duell Eben Eberhhardt Eckard Eckelman Edinger Egle Eichmann Eidman Eiker Eisenberg Eisenhauer Eleazer Elfman Elm Emmerich Endorf Engel Erler Esther Eulberg Eyer Fackler Fahrer Falkner Fassbender Faust Federer Fehler Feldmann Fey Fickle Fieber Fink Finkel Fitz Florman Frankenstein Frei Friedemann Fritz Fuhr Funke Gabel Gebhardt Gehr Geiss Geller Gerner Gerwig Giebler Ginger Glaser Glassmann Goethe Gossmann Goth Grande Greber Gressler Grimm Grimmer Grof Grund Gunderman Haag Haber Hader Hager Hahn Halberg Haling Hammerstein Handler Hansel Hardt Hardwick Harling Hasselbach Haubert Heffner Heimlich Heinkel Helberg Heller Helsing Hemp Hendler Henke Hensel Herber Hertz Hiegel Hilde Hilger Himmel Hoch Hoffman Hoffner Hogg Hopper Hoss Hummel Hurst Ingman Isaac Jackels Jaeger Jager Janowitz Jenner Johannes Judd Kafer Kahl Kalbach Kant Kaplan Katz Kaufmann Kegel Kehr Kemper Kiehl Kimmel Klamm Klauss Kleinfield Kleinmann Klopp Kloss Knapp Koback Koepf Kohl Konrad Kopp Kostner Krall Kramer Kroll Kroner Krueger Kuehler Kupper Lachmann Landt Last Lauer Lehr Lemmer Lichtenberg Liebe Lillich Linde Lindt Lockert Loeb Loewe Lottman Lowitz Ludwig Lukas Lux Mahler Majer Mandel Markus Mauer Mayer Mechler Mehr Merkel Messer Metz Moretz Muehl Muller Nacht Naser Neider Nessel Neuer Neumann Nickol Nimz Nix Norder Oberhaus Oberlin Ockert Odenwald Offen Osen Ostermeyer Ostwald Pahl Palmer Paxman Peifer Perleberg Pfeiffer Picker Pier Pine Pittman Plath Platt Pohl Polk Posner Prather Printz Radke Rahman Rand Ranger Rasner Rath Redmann Reinhart Rembold Reuter Rigler Ringer Ringwald Rinkel Ritter Rockefeller Rodebaugh Roemer Rosenbach Roth Rothschild Ruben Rucker Rummel Sachs Salzberg Schaeffer Scheffer Schlei Schmidt Scholl Schweiger Schwimmer Seifried Seiss Seltzer Seyfried Siegel Simson Sonderman Spader Spangler Spielmann Spier Stahler Stark Stein Sterling Steuber Stiller Strick Stueber Suess Tannanbaum Tinsman Traeger Tripp Uber Uehling Uhl Ulrich Ungerer Vasel Visel Voelker Vogel Berg Stein Voss Wack Wagler Walberg Wall Weigel Weimer Wein Weisel Weiser Weiss Weltman Wendle Werth Wertz Wicker Wieber Wiese Wilhelms Winkel Wisser Wurst Xander Zachmann Zaske Zeiger Zeller Zimmermann Zuckerman)
LANGUAGES = %w(German Spanish English Hindi Arabic French Italian)
def language
  if rand(10) <= 8
    "German"
  else
    LANGUAGES.sample
  end
end

# BIO = <<~TEXT
#   This is my text
#   It is gonna be formatted exactly like that
# TEXT

BIOS = [
  "I have a doctorate in psychology and am a diploma candidate in analytical psychology at the C.G. Jung Institute Zurich. I am a registered intern of the Oregon Board of Licensed Professional Counselors & Therapists and abide by the Board's Code of Ethics and supervision requirements.",
  "Did you know you could change your brain to change your mind? Through the therapeutic relationship and various techniques including Biofeedback, Neurofeedback, mindfulness and cognitive behavioral therapy, you can change your brain and change your relationship to yourself and others.",
  "My job is to provide a safe holding space for you to become more aware of the obstacles in the way of your own healing and growth. This includes any obstacle that keeps you from coming to therapy. Please call, email , or text me so I can help.",
  "Productive therapy and life change happens when a solid, trusting relationship forms between client and therapist. My greatest strength as a therapist is forming that bond quickly with my clients so that we can identify and address the problem(s) together.",
  "As a therapist, I consider it an honor to be a part of my clients journey as they develop insight, create change, and identify goals. Life can bring up challenging and painful situations that can make us feel lost or stuck. My goal is to provide you with the tools you need to get to a better place.",
  "I think counseling is always useful, even when there's nothing wrong We get a lot of chances to go, go, go but not a lot to slow down and reflect. Usually it takes some crisis of feeling or relationship to tell us it's time. I see those crises as opportunities, doorways to deeper understanding.",
  "I believe strongly in the human potential for growth and change especially during times of difficulty and personal crisis. I believe that every problem presents us with an opportunity, as we often resist that which we need to learn most.",
  "I use a straight-forward supportive approach, building on strengths to develop needed resources. I value diversity in my part time practice. I also have a salaried position working with physicians and their families. Sliding fee may be an option.",
  "I am a down-to-earth therapist, who brings my genuine self, and a spirit of openness to my relationships. Areas of focus include supporting the LGBTQ+ community and offering financial therapy to individuals & couples. A strength of mine is noticing and building upon the strengths of others.",
  "Thank you for taking the time to visit my site. I believe that all of life’s challenges can be overcome and I would be honored to walk beside you on that path to a happier and healthier way of living.",
  "You appear to be taking the awesome and courageous step of looking for a therapist. I’d love to help. I bring affirmation, warmth and humor as a way to create a comfortable space for you to feel welcomed exactly as you are.",
  "Hello! I'm a Licensed Marriage and Family Therapist who specializes in a variety of therapeutic modalities and orientation. I especially enjoy utilizing Animal-Assisted Therapy to treat children and teens with anxiety and and other stress-related disorders.",
  "I genuinely care for the well-being of others, and I have the ability to fully support each person I counsel. In addition to traditional therapy, I offer wilderness immersion counseling and outdoor therapy services throughout all of Europe.",
  "I have been studying human behavior and interactions ever since I can remember. First, in my family and through literature. I became interested in Eastern Philosophy in high school and that has influenced my psychotherapy approach.",
  "Do you struggle to cope with intense emotion? Are you triggered by small, unforeseeable incidents? It may feel like your life is in shambles, but you can cope. As an LGBT+ affirming counselor, I work with you to learn how to access your inner resources so that you may live a mindful, healthy life.",
  "Are you struggling with some overwhelming issues in your life? I would love to help you overcome your obstacles, take control of your life and live it to the full. Let's collaborate together to help you reach your goals.",
  "I am a positive and nurturing person, bringing heart and soul into my work. Together we will find creative solutions to complicated problems and help you feel empowered and optimistic about the challenges you face. Please email me to schedule a free 20 minute phone consultation.",
  "Each person seeking counseling deserves to be seen and respected as an individual, and the counseling process must reflect this individuality. It is my job as a counselor to help my clients plan and use their personal strengths, resources, and supports to find new ways to live.",
  "The problem is on one side of the table, you and I sit on the other. I’ve got your back. I also tools and evidenced-based practices to support the process.",
  "Decision coaching, career counseling, personal productivity coaching, strategic planning and achieving goals. Specialites: lifestyle and career choices; change and transitions; leadership and team decisions, time-management and productivity.",
  "I am a Licensed Clinical Social Worker and a Certified Holistic Nutritionist who believes strongly in working with clients around both the physical and mental factors that are keeping them from enjoying vibrant health. I love working with children, families and adults.",
  "I've been helping people like you live happier lives for 12 years. I focus on anxiety and depression issues that cause you to view the world in negative, fearful ways. I help you learn to feel more hopeful and positive about yourself and your life.",
  " I specialize in working with adults searching for meaning and clarity as they contemplate making life changes. These changes can cause anxiety, which we immediately want to suppress, but what if we used anxiety to fuel curiosity about our lives?",
  "Hi, and welcome to my profile page. I am a Clinical Social Worker who prides herself on supporting and being fully present to others. My therapeutic experience includes the public sector--Head Start Consultation --and the private sector--working with individuals and families.",
  "We are all capable of growth. Through secure tele-therapy/online sessions, I aim to provide a space for self exploration and healing through the cultivation of insight, understanding, and compassion. Together, we look into the inner conflicts that are obstacles on the path to a more fulfilled life.",
  "Successful counseling is built on a positive and trusting relationship, much as successful living is dependent on trusting, healthy relationships. Most importantly I bring myself; my heart, my humor, my understanding, knowledge and years of experience."
]

PHOTOSWOMEN = [
  'https://images.unsplash.com/photo-1513732822839-24f03a92f633?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1520813792240-56fc4a3765a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1471017851983-fc49d89c57c2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1552699498-ec96cf4765ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1514448553123-ddc6ee76fd52?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1493666438817-866a91353ca9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1518822275865-16eec4d3023d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1559172802-f5de3d1ed91d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1507152832244-10d45c7eda57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1521511189395-b82252213754?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1529232356377-57971f020a94?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1551863863-e01bbf274ef6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1533781107041-b3b8441e1612?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1547212371-eb5e6a4b590c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://live.staticflickr.com/4688/38423140934_a7207c5c25_b.jpg',
  'https://live.staticflickr.com/4683/38251160585_52dbaaf5dc_b.jpg',
  'https://live.staticflickr.com/3583/3373106750_2ddd4772d9_b.jpg',
  'https://cdn.pixabay.com/photo/2017/08/16/14/21/psychology-2647941_960_720.jpg',
  'https://live.staticflickr.com/4089/5028522377_286bdd625a_b.jpg',
  'https://live.staticflickr.com/4693/38251160315_df360c9b55_z.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/b/bf/LizGorinsky_Headshot_SmilingSideways.jpg',
  'https://images.pexels.com/photos/1973104/pexels-photo-1973104.jpeg?cs=srgb&dl=beautiful-blazer-blonde-1973104.jpg&fm=jpg',
  'https://live.staticflickr.com/840/41804803890_c42368b4d2_z.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/6/61/Hon._Akierra_Mary_Deanne_Missick.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/0/01/Atkins_Headshot.jpg',
  'https://2009-2017.state.gov/img/16/65820/Thailand_150_1.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP0W23Zdd2RiLPQ7hkOwCyNlA12hmYo0UUczYUxKPVUkLidts2Gw',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKnfKgoXqomzzJyg7ZEUo8zBi9hLgYT1w9wSfG9sEx1dgqFl7R',
  'https://live.staticflickr.com/4040/4333257442_80b749b1ea_b.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/f/f4/Julie_Brown_%28business_person%29.jpg',
  'https://live.staticflickr.com/4641/39101514312_e1aa9c0867_z.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/d/d2/Cara_Hale_Alter.jpg',
  'https://live.staticflickr.com/4599/38251161105_66d4c7022b_z.jpg',
  'https://live.staticflickr.com/814/27755397848_b228fbd94e_b.jpg',
  'https://live.staticflickr.com/441/20379201645_4f78f37b07_b.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA3IzhSVXsWW_rdPQMPC0LK0SDadwsEhyFGkHBBt5DAxuQY-hgrQ',
  'https://upload.wikimedia.org/wikipedia/commons/9/94/GW_Photo.jpg',
  'https://images.pexels.com/photos/1869709/pexels-photo-1869709.jpeg?cs=srgb&dl=attractive-beautiful-beauty-1869709.jpg&fm=jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBHIBRSd-spSth44Hed7jHPBIFKM89n4pLHqQSVyDAF8178YjS',
  'https://upload.wikimedia.org/wikipedia/commons/4/49/Dalia_Ziada.jpg',
  'https://cdn.pixabay.com/photo/2017/04/24/05/10/portrait-2255525_960_720.jpg',
  'https://storage.needpix.com/rsynced_images/african-2942355_1280.jpg',
  'https://live.staticflickr.com/5150/5621398789_1c6e6b2d1a_b.jpg',
  'https://storage.needpix.com/rsynced_images/smiling-1180847_1280.jpg',
  'https://storage.needpix.com/rsynced_images/smiling-2385790_1280.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGB2BxNuAyMqbkEr004Av9lQ6Fos4ABjfETFK9a0nBxQJxHFFDyg',
  'https://storage.needpix.com/rsynced_images/girl-3240646_1280.png',
  'https://images.pexels.com/photos/568039/pexels-photo-568039.jpeg?cs=srgb&dl=africa-black-hair-black-woman-smiling-568039.jpg&fm=jpg',
  'https://live.staticflickr.com/7150/6759452607_886b59afe1_b.jpg',
  'https://live.staticflickr.com/3646/3513281048_df49e6893b_z.jpg',
  'https://i2.nicepik.com/files/364/566/337/pretty-fresh-happy-female.jpg',
  'https://live.staticflickr.com/4248/34768609756_cb97d88299_b.jpg',
  'https://live.staticflickr.com/3250/3100756250_efbe62b282_b.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/f/f2/SaraJacobs_headshot.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/e/e7/Mona2x.jpg',
  'https://static.timesofisrael.com/njjewishnews/uploads/2018/03/LadinJoyCOM.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/1/11/BlackHeadshot.JPG',
  'https://live.staticflickr.com/5311/14365669046_06540bbbff_b.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/f/f2/Sarah_Beattie-Smith.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwn7FngXrOs-82YZFU7k3gEcURjGX5xKuo984TJgPz6dc9r5IrOw',
  'https://storage.needpix.com/rsynced_images/girl-1512323_1280.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlpQTh0VkS7tt5Xvxj3c0LsFg7Cb-2exozEs-a9m7GQfo5vGJkZQ',
  'https://upload.wikimedia.org/wikipedia/commons/f/fe/StacyKeibler2011.jpeg',
  'https://i0.nicepik.com/files/513/845/112/attractive-beautiful-beauty-black-and-white.jpg',
  'https://i0.nicepik.com/files/626/548/833/close-up-daylight-eyes-face.jpg',
  'https://i2.nicepik.com/files/624/942/511/woman-smile-person-head-covering.jpg',
  'https://i2.nicepik.com/files/827/264/841/portrait-girl-photoshoot.jpg'
]

PHOTOSMEN = [
  'https://images.unsplash.com/photo-1544168190-79c17527004f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1506919258185-6078bba55d2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1548372290-8d01b6c8e78c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1546672657-366775449156?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1514222709107-a180c68d72b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1553184295-61555299d97e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1540569014015-19a7be504e3a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1557862921-37829c790f19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1562693313-2ef8cef483a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1559718062-361155fad299?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1561590625-1836232c4472?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1549473448-b0acc73629dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1544225917-1bf66feace19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://cdn.pixabay.com/photo/2015/08/14/15/28/smiling-888532_960_720.jpg',
  'https://images.pexels.com/photos/325682/pexels-photo-325682.jpeg?cs=srgb&dl=adult-close-up-dentist-325682.jpg&fm=jpg',
  'https://storage.needpix.com/rsynced_images/portrait-3275985_1280.jpg',
  'https://cdn.pixabay.com/photo/2016/05/11/01/50/business-man-1385050_960_720.jpg',
  'https://live.staticflickr.com/2909/14202199100_c1d8c57e35_b.jpg',
  'https://live.staticflickr.com/2499/4005621303_e9b8d023d0_b.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTXBbPTo1SMDztdxtT809p1M5an_YoS4C97B9O3gPoKg9L74KlzQ',
  'https://cdn.pixabay.com/photo/2019/05/01/12/29/rishi-gangoly-4170744_960_720.jpg',
  'https://www.publicdomainpictures.net/pictures/210000/nahled/smiling-african-canadian-male.jpg',
  'https://i.pinimg.com/originals/0b/a6/23/0ba6230d7524eb4dcff784c28e9e5fe2.jpg',
  'https://storage.needpix.com/rsynced_images/office-207219_1280.jpg',
  'https://storage.needpix.com/rsynced_images/man-537136_1280.jpg',
  'https://cdn.pixabay.com/photo/2019/05/01/12/30/rishi-gangoly-4170752_960_720.jpg',
  'https://live.staticflickr.com/4733/38300006385_dce114aa90.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/f/f6/Paul_Kingsman_Headshot.jpg',
  'https://live.staticflickr.com/4687/39101514852_7648267b44_b.jpg',
  'https://upload.wikimedia.org/wikipedia/en/8/8a/Mylo_Kaye_Professional_Headshot.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/f/ff/Adam-Falk-Headshot-August-2018.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/a/a9/Stephen_Balkam.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/e/e6/Allen_Bird_Headshot.png',
  'https://upload.wikimedia.org/wikipedia/commons/2/23/Wei_Ji_Ma_headshot_2013.jpg',
  'https://live.staticflickr.com/3426/4626436841_1483a945c4_b.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/9/98/Michael_Ratner_Headshot.jpg',
  'https://upload.wikimedia.org/wikipedia/en/a/af/Professor_Bryan_Williams.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/0/0b/Professor_Steven_Chu_ForMemRS_headshot.jpg',
  'https://live.staticflickr.com/5497/14576905116_c97fe8282b_b.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/3/3e/Professor_Tumani_Corrah_CBE_MRG.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/8/86/Professor_Gilean_McVean_FMedSci_FRS.jpg',
  'https://live.staticflickr.com/1898/44223672491_42867278fb_b.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/f/f1/Professor_Brian_Cox_OBE_FRS.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/6/6c/Professor_Richard_Harvey_FRS.jpg',
  'https://live.staticflickr.com/4172/34046849670_ccf44c571a_b.jpg',
  'https://cdn.pixabay.com/photo/2017/05/20/00/29/teacher-2327961_960_720.jpg',
  'https://upload.wikimedia.org/wikipedia/en/8/8a/Professor_Adam_Habib_2017.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc0oqUP8dPAFrYDVtuHQWfUU-irJbS-E6iPCcQkEYyLITgahqB_A',
  'https://upload.wikimedia.org/wikipedia/commons/8/8a/Professor_Jonathan_Ashmore.jpg',
  'https://upload.wikimedia.org/wikipedia/commons/b/b7/Professor_Stephen_Challacombe_%282019%29.png',
  'https://live.staticflickr.com/4364/37030994992_d48ece848e_b.jpg'
]

puts "checking if you are in development mode"

if Rails.env.development?
  puts "wiping the database "
  Therapist.destroy_all
  Booking.destroy_all
  Specialty.destroy_all
  Specialty.destroy_all
  User.destroy_all
  puts "current stats :"
  puts "Therapists: #{Therapist.count}"
  puts "Availabilities: #{Availability.count}"
  puts "Bookings: #{Booking.count}"
  puts "Reviews: #{Review.count}"
  puts "Specialties: #{Specialty.count}"
  puts "Therapist specialty tags: #{TherapistSpecialty.count}"
  puts "Users: #{User.count}"
else
  puts "you are not in development mode !"
end

puts "creating fake users"

puts "creating 10 men"

10.times do
  User.create!(
    email: "#{FIRSTNAMESM.sample}.#{LASTNAMES.sample}@example.com",
    password: "123456"
  )
end

 puts "creating 10 women out of the rib of ten men"

10.times do
  User.create!(
    email: "#{FIRSTNAMESF.sample}.#{LASTNAMES.sample}@example.com",
    password: "123456"
  )
end


puts "#{User.count} users created"

puts "creating therapists"


i = 0
while i < 10
  Therapist.create!(
    first_name: FIRSTNAMESF[i],
    last_name: LASTNAMES.sample,
    avg_rating: half_value(rndr.rand(3.0..5.0)),
    language: language,
    bio: BIOS.sample,
    years_exp: rndr.rand(1..5),
    remote_photo_url: PHOTOSWOMEN[i],
    rate: rndr.rand(20..60)
    )
  i += 1
end

n = 0

while n < 10
  Therapist.create!(
    first_name: FIRSTNAMESM[n],
    last_name: LASTNAMES.sample,
    avg_rating: half_value(rndr.rand(3.0..5.0)),
    language: language,
    bio: BIOS.sample,
    years_exp: rndr.rand(1..5),
    remote_photo_url: PHOTOSMEN[n],
    rate: rndr.rand(20..60)
    )
  n += 1
end

puts "#{Therapist.count} therapists created"

therapists = Therapist.all
users = User.all

puts "giving the therapists availabilties"


therapists.first(5).each do |therapist|
  Availability.create!(
      week_day: 1,
      start_time: '08:00:00',
      end_time: '9:00:00',
      therapist: therapist
    )
   Availability.create!(
      week_day: 2,
      start_time: '09:00:00',
      end_time: '10:00:00',
      therapist: therapist
    )
    Availability.create!(
      week_day: 3,
      start_time: '10:00:00',
      end_time: '11:00:00',
      therapist: therapist
    )
     Availability.create!(
      week_day: 4,
      start_time: '09:00:00',
      end_time: '10:00:00',
      therapist: therapist
    )
    Availability.create!(
      week_day: 4,
      start_time: '10:00:00',
      end_time: '11:00:00',
      therapist: therapist
    )
    Availability.create!(
      week_day: 4,
      start_time: '11:00:00',
      end_time: '12:00:00',
      therapist: therapist
    )
end

therapists.last(5).each do |therapist|
  Availability.create!(
      week_day: 1,
      start_time: '08:00:00',
      end_time: '9:00:00',
      therapist: therapist
    )
   Availability.create!(
      week_day: 2,
      start_time: '09:00:00',
      end_time: '10:00:00',
      therapist: therapist
    )
    Availability.create!(
      week_day: 3,
      start_time: '10:00:00',
      end_time: '11:00:00',
      therapist: therapist
    )
     Availability.create!(
      week_day: 3,
      start_time: '09:00:00',
      end_time: '10:00:00',
      therapist: therapist
    )
    Availability.create!(
      week_day: 4,
      start_time: '10:00:00',
      end_time: '11:00:00',
      therapist: therapist
    )
    Availability.create!(
      week_day: 5,
      start_time: '11:00:00',
      end_time: '12:00:00',
      therapist: therapist
    )
end

therapists.each do |therapist|
   Availability.create!(
      week_day: 1,
      start_time: '16:00:00',
      end_time: '17:00:00',
      therapist: therapist
    )
   Availability.create!(
      week_day: 2,
      start_time: '17:00:00',
      end_time: '18:00:00',
      therapist: therapist
    )
    Availability.create!(
      week_day: 3,
      start_time: '17:00:00',
      end_time: '18:00:00',
      therapist: therapist
    )
     Availability.create!(
      week_day: 3,
      start_time: '16:00:00',
      end_time: '17:00:00',
      therapist: therapist
    )
    Availability.create!(
      week_day: 4,
      start_time: '16:00:00',
      end_time: '17:00:00',
      therapist: therapist
    )
    Availability.create!(
      week_day: 5,
      start_time: '14:00:00',
      end_time: '13:00:00',
      therapist: therapist
    )
end


puts "#{Availability.count} availabilties created"

puts "creating specialties"

SPECIALTIES = ['Anxiety', 'Depression', 'Eating Disorders', 'Relationship problems', 'Stress', 'Anger Management', 'Bipolar', 'ADHD', 'Insomnia', 'Mindfulness', 'Psychoanalysis', 'Family Counseling', 'Couples therapy', 'Grief counseling', 'Post-Partum Depression']

SPECIALTIES.each do |specialty|
  Specialty.create!(name: specialty)
end

puts "#{Specialty.count} specialties created"

puts "now assigning specialties to therapists"

specialties = Specialty.all

therapists.each do |therapist|
  n = rndr.rand(0..3)
  n.times do
  TherapistSpecialty.create!(
    therapist: therapist,
    specialty: specialties.sample)
end
end

puts "#{TherapistSpecialty.count} tags created"

puts "now creating some bookings"

#myself to have two past bookings

puts "#{Booking.count} bookings created"

puts "current stats :"
  puts "Therapists: #{Therapist.count}"
  puts "Availabilities: #{Availability.count}"
  puts "Bookings: #{Booking.count}"
  puts "Reviews: #{Review.count}"
  puts "Specialties: #{Specialty.count}"
  puts "Therapist specialty tags: #{TherapistSpecialty.count}"
  puts "Users: #{User.count}"
