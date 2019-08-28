# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# remote_url_photo: 'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
require 'faker'

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

rndr = Random.new



10.times do
  User.create!(
    email: Faker::Internet.email,
    password: "123456"
  )
end

puts "#{User.count} users created"

puts "creating therapists"

def half_value(number)
  (number * 2).round / 2.0
end

FIRSTNAMESF = w%(Anna Bertha Elisabeth Emma Frieda Gertrude Margarethe Maria Marie Martha Edith Elfriede Erna Gerda Gertrude Hildegard Ilse Irmgard Lieselotte Ursula Dieter Uwe Christa Elke Erika Gisela Helga Ingrid Karin Monika Renate Ursula Uwe Andrea Angelika Birgit Gabriele Heike Martina Petra Sabine Susanne Ute Anja Christina Julia Katrin Melanie Nadine Nicole Sabrina Sandra Stefanie Anna Hannah Julia Lara Laura Lea Lena Lisa Michelle Sarah)
FIRSTNAMESM = w%(Ernst Friedrich Hans Heinrich Hermann Karl Otto Paul Walter Wilhelm Gerhard Günter Hans Heinz Helmut Herbert Karl Kurt Walter Werner Günter Hans Horst Jürgen Klaus Manfred Peter Wolfgang Andreas Frank Jörg Jürgen Klaus Michael Peter Stefan Thomas Alexander Christian Daniel Dennis Jan Martin Michael Sebastian Stefan Thomas Finn Jan Jannik Jonas Leon Luca Lukas Niklas Tim Tom)
LASTNAMES = w%(Abel Aber Achen Ackert Adelberg Ahlgrim Aller Altenberg Altmann Ames Anders Angert Anschuetz Appel Asch Ascher Aulbach Austen Babler Bach Bachmann Bahler Bahn Ballmann Balsinger Bank Banner Bartel Bauch Bauer Baum Bayer Beck Beemer Behringer Bellinger Belser Berg Berger Bernd Bernstein Bertels Bertram Bickel Bieber Biehl Biel Birk Blacker Blaschko Blatt Bliss Blum Blumberg Bluth Boeder Bohnert Bohr Bose Brahm Brandt Brecker Brenner Brickle Buck Buller Burger Burr Buseman Butz Clemens Cruse Dahm Danner Debus Decker Degler Deichert Dell Denhart Denning Denzel Deutsch Dewitz Dick Dickmann Dieleman Dieter Dinkelman Dittmann Doppler Dorfman Dorner Dreiling Duell Eben Eberhhardt Eckard Eckelman Edinger Egle Eichmann Eidman Eiker Eisenberg Eisenhauer Eleazer Elfman Elm Emmerich Endorf Engel Erler Esther Eulberg Eyer Fackler Fahrer Falkner Fassbender Faust Federer Fehler Feldmann Fey Fickle Fieber Fink Finkel Fitz Florman Frankenstein Frei Friedemann Fritz Fuhr Funke Gabel Gebhardt Gehr Geiss Geller Gerner Gerwig Giebler Ginger Glaser Glassmann Goethe Gossmann Goth Grande Greber Gressler Grimm Grimmer Grof Grund Gunderman Haag Haber Hader Hager Hahn Halberg Haling Hammerstein Handler Hansel Hardt Hardwick Harling Hasselbach Haubert Heffner Heimlich Heinkel Helberg Heller Helsing Hemp Hendler Henke Hensel Herber Hertz Hiegel Hilde Hilger Himmel Hoch Hoffman Hoffner Hogg Hopper Hoss Hummel Hurst Ingman Isaac Jackels Jaeger Jager Janowitz Jenner Johannes Judd Kafer Kahl Kalbach Kant Kaplan Katz Kaufmann Kegel Kehr Kemper Kiehl Kimmel Klamm Klauss Kleinfield Kleinmann Klopp Kloss Knapp Koback Koepf Kohl Konrad Kopp Kostner Krall Kramer Kroll Kroner Krueger Kuehler Kupper Lachmann Landt Last Lauer Lehr Lemmer Lichtenberg Liebe Lillich Linde Lindt Lockert Loeb Loewe Lottman Lowitz Ludwig Lukas Lux Mahler Majer Mandel Markus Mauer Mayer Mechler Mehr Merkel Messer Metz Moretz Muehl Muller Nacht Naser Neider Nessel Neuer Neumann Nickol Nimz Nix Norder Oberhaus Oberlin Ockert Odenwald Offen Osen Ostermeyer Ostwald Pahl Palmer Paxman Peifer Perleberg Pfeiffer Picker Pier Pine Pittman Plath Platt Pohl Polk Posner Prather Printz Radke Rahman Rand Ranger Rasner Rath Redmann Reinhart Rembold Reuter Rigler Ringer Ringwald Rinkel Ritter Rockefeller Rodebaugh Roemer Rosenbach Roth Rothschild Ruben Rucker Rummel Sachs Salzberg Schaeffer Scheffer Schlei Schmidt Scholl Schweiger Schwimmer Seifried Seiss Seltzer Seyfried Siegel Simson Sonderman Spader Spangler Spielmann Spier Stahler Stark Stein Sterling Steuber Stiller Strick Stueber Suess Tannanbaum Tinsman Traeger Tripp Uber Uehling Uhl Ulrich Ungerer Vasel Visel Voelker Vogel Berg Stein Voss Wack Wagler Walberg Wall Weigel Weimer Wein Weisel Weiser Weiss Weltman Wendle Werth Wertz Wicker Wieber Wiese Wilhelms Winkel Wisser Wurst Xander Zachmann Zaske Zeiger Zeller Zimmermann Zuckerman)
LANGUAGES = w%(German Spanish English Hindi Arabic French Italian)
def language
  if rndr.rand(0.1..1) <= 0.8
    "German"
  else
    LANGUAGES.sample
end

BIOS = ["I have a doctorate in psychology and am a diploma candidate in analytical psychology at the C.G. Jung Institute Zurich. I am a registered intern of the Oregon Board of Licensed Professional Counselors & Therapists and abide by the Board's Code of Ethics and supervision requirements.",
  "Did you know you could change your brain to change your mind? Through the therapeutic relationship and various techniques including Biofeedback, Neurofeedback, mindfulness and cognitive behavioral therapy, you can change your brain and change your relationship to yourself and others.",
  "My job is to provide a safe holding space for you to become more aware of the obstacles in the way of your own healing and growth. This includes any obstacle that keeps you from coming to therapy. Please call, email , or text me so I can help.",
  "Productive therapy and life change happens when a solid, trusting relationship forms between client and therapist. My greatest strength as a therapist is forming that bond quickly with my clients so that we can identify and address the problem(s) together.",
  "As a therapist, I consider it an honor to be a part of my clients journey as they develop insight, create change, and identify goals. Life can bring up challenging and painful situations that can make us feel lost or stuck. My goal is to provide you with the tools you need to get to a better place.",
  "I think counseling is always useful, even when there's nothing wrong We get a lot of chances to go, go, go but not a lot to slow down and reflect. Usually it takes some crisis of feeling or relationship to tell us it's time. I see those crises as opportunities, doorways to deeper understanding.",
  "I believe strongly in the human potential for growth and change especially during times of difficulty and personal crisis. I believe that every problem presents us with an opportunity, as we often resist that which we need to learn most."
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
  "Successful counseling is built on a positive and trusting relationship, much as successful living is dependent on trusting, healthy relationships. Most importantly I bring myself; my heart, my humor, my understanding, knowledge and years of experience."]

PHOTOSWOMEN = []
PHOTOSMEN = []

i = 0
while i < 62
  Therapist.create!(
    first_name: FIRSTNAMESF[i],
    last_name: LASTNAMES.sample,
    avg_rating: half_value(rndr.rand(1.0..5.0)),
    language: language,
    bio: BIOS.sample,
    years_exp: rndr.rand(1..5),
    remote_photo_url: PHOTOSWOMEN[i]
    )
end

while i < 56
  Therapist.create!(
    first_name: FIRSTNAMESM[i],
    last_name: LASTNAMES.sample,
    avg_rating: half_value(rndr.rand(1.0..5.0)),
    language: language,
    bio: BIOS.sample,
    years_exp: rndr.rand(1..5),
    remote_photo_url: PHOTOSMEN[i]
    )
end

puts "#{Therapist.count} therapists created"

#   create_table "therapists", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.integer "avg_rating"
#     t.string "language"
#     t.text "bio"
#     t.string "photo"
#     t.integer "years_exp"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end


# create_table "availabilities", force: :cascade do |t|
#     t.integer "week_day"
#     t.time "start_time"
#     t.time "end_time"
#     t.bigint "therapist_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["therapist_id"], name: "index_availabilities_on_therapist_id"
#   end

#   create_table "bookings", force: :cascade do |t|
#     t.bigint "user_id"
#     t.bigint "therapist_id"
#     t.datetime "starts_at"
#     t.boolean "free"
#     t.integer "price"
#     t.integer "status"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["therapist_id"], name: "index_bookings_on_therapist_id"
#     t.index ["user_id"], name: "index_bookings_on_user_id"
#   end

#   create_table "reviews", force: :cascade do |t|
#     t.text "content"
#     t.integer "rating"
#     t.bigint "therapist_id"
#     t.bigint "user_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["therapist_id"], name: "index_reviews_on_therapist_id"
#     t.index ["user_id"], name: "index_reviews_on_user_id"
#   end

#   create_table "specialties", force: :cascade do |t|
#     t.string "name"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "therapist_specialties", force: :cascade do |t|
#     t.bigint "therapist_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.bigint "specialty_id"
#     t.index ["specialty_id"], name: "index_therapist_specialties_on_specialty_id"
#     t.index ["therapist_id"], name: "index_therapist_specialties_on_therapist_id"
#   end

#   create_table "therapists", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.integer "avg_rating"
#     t.string "language"
#     t.text "bio"
#     t.string "photo"
#     t.integer "years_exp"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "users", force: :cascade do |t|
#     t.string "email", default: "", null: false
#     t.string "encrypted_password", default: "", null: false
#     t.string "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["email"], name: "index_users_on_email", unique: true
#     t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
#   end

#   add_foreign_key "availabilities", "therapists"
#   add_foreign_key "bookings", "therapists"
#   add_foreign_key "bookings", "users"
#   add_foreign_key "reviews", "therapists"
#   add_foreign_key "reviews", "users"
#   add_foreign_key "therapist_specialties", "therapists"
# end
