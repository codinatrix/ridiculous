#encoding: utf-8
#   Supplier.create(name: '', address: '', latitude: '', longitude: '')
#   Tag.create(name: '')
#   Tagging.create(supplier_id: Supplier.find_by_name('').id, tag_id: Tag.find_by_name('').id)

Supplier.create(name: 'Moe\'s Milk', address: 'Sandgärdsgatan 6 352 30 Växjö', latitude: '56.87778', longitude: '14.80793')
Supplier.create(name: 'Cake Sweet Cake Bakery', address: 'Linnégatan 352 33 Växjö ', latitude: '56.88018', longitude: '14.81183')
Supplier.create(name: 'Grumpy Ted\'s Red Meat', address: 'Östregårdsgatan 2 352 34 Växjö', latitude: '56.87821', longitude: '14.81303')


Tag.create(name: 'bakery')
Tag.create(name: 'cereal')


Tagging.create(supplier_id: Supplier.find_by_name('Cake Sweet Cake Bakery').id, tag_id: Tag.find_by_name('bakery').id)
