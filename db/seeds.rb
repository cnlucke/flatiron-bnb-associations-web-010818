katie = User.find_or_create_by(name: "Katie")
logan = User.find_or_create_by(name: "Logan")
amanda = User.find_or_create_by(name: "Amanda")

nyc = City.find_or_create_by(name: 'NYC')

green_point = Neighborhood.find_or_create_by(name: 'Green Point', city: nyc)
financial_district = Neighborhood.find_or_create_by(name: 'Fi Di', city: nyc)
fidi = Neighborhood.find_or_create_by(name: 'Fi Di', city: nyc)
brighton_beach = Neighborhood.find_or_create_by(name: 'Brighton Beach', city: nyc)

listing = Listing.find_or_create_by(
  address: '6 Maple Street',
  listing_type: "shared room",
  title: "Shared room in apartment",
  description: "share a room with me because I'm poor",
  price: 15.00,
  neighborhood: green_point,
  host: katie
)
listing2 = Listing.find_or_create_by(
  address: '123 Main Street',
  listing_type: "private room",
  title: "Beautiful Apartment on Main Street",
  description: "My apartment is great. there's a bedroom. close to subway....blah blah",
  price: 50.00,
  neighborhood: financial_district,
  host: amanda
)
reservation = Reservation.find_or_create_by(
  checkin: '2014-04-25',
  checkout: '2014-04-30',
  listing: listing,
  guest: logan
)
reservation2 = Reservation.find_or_create_by(
    checkin: '2014-04-25',
    checkout: '2014-04-30',
    listing: listing2,
    guest: logan
  )
Review.find_or_create_by(
  description: "Meh, the host I shared a room with snored.",
  rating: 3,
  guest: logan,
  reservation: reservation
)
Review.find_or_create_by(
  description: "This place was great!",
  rating: 5,
  guest: logan,
  reservation: reservation2
)
