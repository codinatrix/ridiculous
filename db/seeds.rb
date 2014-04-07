#encoding: utf-8
#   Supplier.new(name: '',
#                   address: '', 
#                   latitude: '',
#                   longitude: '',
#                   phone: '',
#                   website: 'http://')
#   Tag.create(name: '')
#   Tagging.create(supplier_id: Supplier.find_by_name('').id, tag_id: Tag.find_by_name('').id)

Supplier.new(name: 'Moe\'s Milk', 
                address: 'Sandgärdsgatan 6 352 30 Växjö', 
                latitude: '56.87778', 
                longitude: '14.80793',
                phone: '0756189473',
                website: 'http://www.moesmilk.com/').save validate: false
Supplier.new(name: 'Cake Sweet Cake Bakery', 
                address: 'Linnégatan 352 33 Växjö ', 
                latitude: '56.88018', 
                longitude: '14.81183',
                phone: '0765258762',
                website: 'http://www.cakesweetcake.com/').save validate: false
Supplier.new(name: 'Grumpy Ted\'s Red Meat', 
                address: 'Östregårdsgatan 2 352 34 Växjö', 
                latitude: '56.87821', 
                longitude: '14.81303',
                phone: '0789585896',
                website: 'http://www.grumpyted.com/').save validate: false
Supplier.new(name: 'MomCorp',
                address: 'Samuel Ödmans Väg 1 352 39 Växjö ', 
                latitude: '56.88189',
                longitude: '14.82058',
                phone: '0715489635',
                website: 'http://www.momcorp.com/').save validate: false
Supplier.new(name: 'The Breakfast Club',
                address: 'Wieselgrensgatan 19 352 36 Växjö', 
                latitude: '56.88102  ',
                longitude: '14.78739',
                phone: '0781296548',
                website: 'http://www.breakfastclub.com').save validate: false
Supplier.new(name: 'Surprisingly Delicious',
                address: 'Storgatan 48 352 36 Växjö', 
                latitude: '56.87908',
                longitude: '14.79562',
                phone: '0789452658',
                website: 'http://www.surprisinglydelicio.us').save validate: false
Supplier.new(name: 'The Angry Chicken',
                address: 'Honnörsgatan 15 352 36 Växjö', 
                latitude: '56.87781 ',
                longitude: '14.77853',
                phone: '0759845216',
                  website: 'http://www.angrychicken.com').save validate: false
Supplier.new(name: 'Demeter\'s Harvest',
                address: 'Gelbogatan 8, 352 34 Växjö', 
                latitude: '56.87649',
                longitude: '14.81667',
                phone: '0795842365',
                website: 'http://www.demetersharvest.com').save validate: false
Supplier.new(name: 'Sugar Shack',
                address: 'Östrabogatan 4, 352 40 Växjö', 
                latitude: '56.87890',
                longitude: '14.82085',
                phone: '0743135369',
                website: 'http://www.sugarshack.com').save validate: false
Supplier.new(name: 'Scary Fairy Farms',
                address: 'Gamla vägen 23, 352 40 Växjö', 
                latitude: '56.87625',
                longitude: '14.82553',
                phone: '0795348751',
                website: 'http://www.scaryfairy.com').save validate: false
Supplier.new(name: 'The Bacon Fort',
                address: 'Birkagatan 32, 352 40 Växjö', 
                latitude: '56.87822',
                longitude: '14.83309',
                phone: '0795842635',
                website: 'http://www.baconfort.com').save validate: false
Supplier.new(name: 'The Corporation',
                address: 'Hökvägen 1, 352 42 Växjö', 
                latitude: '56.88109 ',
                longitude: '14.83725',
                phone: '0795832158',
                website: 'http://www.corp.com').save validate: false
Supplier.new(name: 'Chowdown',
                address: 'Västergatan 18B, 352 31 Växjö', 
                latitude: '56.88261',
                longitude: '14.80458',
                phone: '0715798632',
                website: 'http://www.chowdown.com').save validate: false
Supplier.new(name: 'Om Nom Nom AB',
                address: 'Storgatan 70C, 352 36 Växjö', 
                latitude: '56.88001',
                longitude: '14.78164',
                phone: '0795643128',
                website: 'http://www.omnom.com').save validate: false
Supplier.new(name: 'The Bleached Peach',
                address: 'Ulriksbergspromenaden 30, 352 46 Växjö', 
                latitude: '56.88001',
                longitude: '14.78164',
                phone: '0795312187',
                website: 'http://www.bleachedpeach.com').save validate: false
Supplier.new(name: 'Bring It Bovine',
                address: 'Hejaregatan 6, 352 46 Växjö', 
                latitude: '56.88307',
                longitude: '14.77659',
                phone: '0784653128',
                website: 'http://www.bringit.com').save validate: false
Supplier.new(name: 'Half Magic Coffee',
                address: 'Östregårdsgatan 46, 352 40 Växjö', 
                latitude: '56.87807 ',
                longitude: '14.82706',
                phone: '0734615896',
                website: 'http://www.halfmagic.com').save validate: false
Supplier.new(name: 'Sting Like a Bee',
                address: 'Norrtullsgatan 2, 352 33 Växjö', 
                latitude: '56.88232',
                longitude: '14.81328',
                phone: '07382164978',
                website: 'http://www.stingbee.com').save validate: false
Supplier.new(name: 'Sweetums',
                address: 'Södra Järnvägsgatan 14, 352 34 Växjö', 
                latitude: '56.87622',
                longitude: '14.79499',
                phone: '0798561578',
                website: 'http://www.sweetums.com').save validate: false
Supplier.new(name: 'Cajun Station',
                address: 'Söderleden 2, 352 36 Växjö', 
                latitude: '56.87854 ',
                longitude: '14.78486',
                phone: '0798212658',
                website: 'http://www.cajunstation.com').save validate: false
Supplier.new(name: 'Paint It Green',
                address: 'Västra Esplanaden 10, 351 12 Växjö', 
                latitude: '56.88017',
                longitude: '14.80207',
                phone: '0743165986',
                website: 'http://www.paintitgreen.com').save validate: false
Supplier.new(name: 'Soylent Chartreuse',
                address: 'Framnäsvägen 12A, 352 39 Växjö', 
                latitude: '56.88359',
                longitude: '14.82397',
                phone: '0753162986',
                website: 'http://www.soylent.com').save validate: false
Supplier.new(name: 'Catch of the Day',
                address: 'Skyttegatan 22, 352 41 Växjö', 
                latitude: '56.87611',
                longitude: '14.83188',
                phone: '0742968392',
                website: 'http://www.catchoftheday.com').save validate: false

Tag.create!(name: 'bakery')
Tag.create!(name: 'cereal')
Tag.create!(name: 'dairy')
Tag.create!(name: 'red meat')
Tag.create!(name: 'poultry')
Tag.create!(name: 'blood pudding')
Tag.create!(name: 'fruit')
Tag.create!(name: 'vegetables')
Tag.create!(name: 'sugar')
Tag.create!(name: 'coffee')

Tagging.create!(supplier_id: Supplier.find_by_name('Cake Sweet Cake Bakery').id, tag_id: Tag.find_by_name('bakery').id)
Tagging.create!(supplier_id: Supplier.find_by_name('Moe\'s Milk').id, tag_id: Tag.find_by_name('dairy').id)
Tagging.create!(supplier_id: Supplier.find_by_name('Grumpy Ted\'s Red Meat').id, tag_id: Tag.find_by_name('red meat').id)
Tagging.create!(supplier_id: Supplier.find_by_name('MomCorp').id, tag_id: Tag.find_by_name('bakery').id)
Tagging.create!(supplier_id: Supplier.find_by_name('MomCorp').id, tag_id: Tag.find_by_name('dairy').id)
Tagging.create!(supplier_id: Supplier.find_by_name('MomCorp').id, tag_id: Tag.find_by_name('sugar').id)
Tagging.create!(supplier_id: Supplier.find_by_name('The Breakfast Club').id, tag_id: Tag.find_by_name('cereal').id)
Tagging.create!(supplier_id: Supplier.find_by_name('Surprisingly Delicious').id, tag_id: Tag.find_by_name('blood pudding').id)
Tagging.create!(supplier_id: Supplier.find_by_name('The Angry Chicken').id, tag_id: Tag.find_by_name('poultry').id)
Tagging.create!(supplier_id: Supplier.find_by_name('Demeter\'s Harvest').id, tag_id: Tag.find_by_name('fruit').id)
Tagging.create!(supplier_id: Supplier.find_by_name('Demeter\'s Harvest').id, tag_id: Tag.find_by_name('vegetables').id)
Tagging.create!(supplier_id: Supplier.find_by_name('Sugar Shack').id, tag_id: Tag.find_by_name('sugar').id)
Tagging.create!(supplier_id: Supplier.find_by_name('Scary Fairy Farms').id, tag_id: Tag.find_by_name('fruit').id)
Tagging.create!(supplier_id: Supplier.find_by_name('The Bacon Fort').id, tag_id: Tag.find_by_name('red meat').id)
Tagging.create!(supplier_id: Supplier.find_by_name('The Corporation').id, tag_id: Tag.find_by_name('cereal').id)
Tagging.create!(supplier_id: Supplier.find_by_name('The Corporation').id, tag_id: Tag.find_by_name('poultry').id)
Tagging.create!(supplier_id: Supplier.find_by_name('Chowdown').id, tag_id: Tag.find_by_name('vegetables').id)
Tagging.create!(supplier_id: Supplier.find_by_name('Om Nom Nom AB').id, tag_id: Tag.find_by_name('coffee').id)
Tagging.create!(supplier_id: Supplier.find_by_name('Om Nom Nom AB').id, tag_id: Tag.find_by_name('bakery').id)
Tagging.create!(supplier_id: Supplier.find_by_name('The Bleached Peach').id, tag_id: Tag.find_by_name('fruit').id)
Tagging.create!(supplier_id: Supplier.find_by_name('Bring It Bovine').id, tag_id: Tag.find_by_name('red meat').id)
Tagging.create!(supplier_id: Supplier.find_by_name('Half Magic Coffee').id, tag_id: Tag.find_by_name('coffee').id)

User.create!(email: 'gus@fring.com', password: 'bluestuff')
User.create!(email: 'gale@boe.com', password: 'vegansmores')