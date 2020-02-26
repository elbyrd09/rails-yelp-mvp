puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Jubilee',
    address:      '948 1st Avenue New York, NY',
    phone_number:  '212-888-3569',
    category:      'french'
  },
  {
    name:         'Billy Ho',
    address:      'Pantai Batu Bolong St, Canggu, North Kuta, Badung Regency, Bali',
    phone_number:  '0813-5387-3272',
    category:      'japanese'
  },
  {
    name:         'Hop Kee',
    address:      '21 Mott Street New York, NY',
    phone_number:  '212-964-8365',
    category:      'chinese'
  },
  {
    name:         'I Sodi',
    address:      '105 Christopher Street New York, NY',
    phone_number:  '212-414-5774',
    category:      'italian'
  },
  {
    name:         'T walpoortje',
    address:      'Walplein 10, 8000 Brugge, Belgium',
    phone_number:  '32-478-21-24-65',
    category:      'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
