import '../models/status_tag.dart';
import '../models/travel_place.dart';
import '../models/travel_user.dart';

final List<TravelPlace> places = [
  TravelPlace(
    id: '3',
    name: 'Riveria Maya',
    likes: 500,
    shared: 240,
    description:
        "La Riviera Maya est une zone touristique située le long de la mer des Caraïbes dans l’État du Quintana Roo au Mexique. Géographiquement elle s’étend le long du littoral sur une distance de 130 km allant de la localité de Puerto Morelos au Nord jusqu’à la localité de Punta Allen au Sud.",
    imagesUrl: [
      'https://images.unsplash.com/photo-1587454594634-1248ae354450?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cml2ZXJpYSUyMG1heWF8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1607646623049-3a6d359c61d1?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fHJpdmVyaWElMjBtYXlhfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1575515575931-eefdddf96ead?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cml2ZXJpYSUyMG1heWF8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1562428309-f97fc8e256e7?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fHJpdmVyaWElMjBtYXlhfGVufDB8fDB8fHww',
    ],
    statusTag: StatusTag.popular,
    user: TravelUser.antoine,
    locationDesc: "Mer des Caraïbes sur la Riviera Maya, à Tulum",
  ),
  TravelPlace(
    id: '1',
    name: 'Tulum',
    likes: 140,
    shared: 49,
    description:
        "Tulum est une ville côtière pittoresque située sur la Riviera Maya, au Mexique. Elle est connue pour ses ruines mayas perchées sur une falaise surplombant la mer des Caraïbes, ses plages de sable blanc, ses eaux turquoise et son atmosphère bohème.",
    imagesUrl: [
      'https://images.unsplash.com/photo-1603279560898-9eb1a6516d60?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8dHVsdW18ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1605216663980-b7ca6e9f2451?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dHVsdW18ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1520483601560-389dff434fdf?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8dHVsdW18ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1585614733378-4c58f92de4a1?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHR1bHVtfGVufDB8fDB8fHww',
    ],
    statusTag: StatusTag.event,
    user: TravelUser.edwige,
    locationDesc:
        "Tulum, une ville côtière du Mexique, est connue pour ses ruines mayas, ses plages de sable blanc et ses eaux turquoise.",
  ),
  TravelPlace(
    id: '2',
    name: 'Ometepe',
    likes: 29,
    shared: 40,
    description:
        "Tulum est une ville côtière pittoresque située sur la Riviera Maya, au Mexique. Elle est connue pour ses ruines mayas perchées sur une falaise surplombant la mer des Caraïbes, ses plages de sable blanc, ses eaux turquoise et son atmosphère bohème.",
    imagesUrl: [
      'https://images.unsplash.com/photo-1675701142610-5d40c754a3b6?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8T21ldGVwZXxlbnwwfHwwfHx8MA%3D%3D'
          'https://images.unsplash.com/photo-1625386669925-99736e2f97d4?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8T21ldGVwZXxlbnwwfHwwfHx8MA%3D%3D',
    ],
    statusTag: StatusTag.event,
    user: TravelUser.dav,
    locationDesc:
        "Tulum, une ville côtière du Mexique, est connue pour ses ruines mayas, ses plages de sable blanc et ses eaux turquoise.",
  ),
  TravelPlace(
    id: '4',
    name: 'Maldives',
    likes: 29,
    shared: 40,
    description:
        "Les Maldives, archipel de 26 atolls coralliens dans l'océan Indien, est une destination de rêve pour les amoureux de la plage, du soleil et de la plongée sous-marine.",
    imagesUrl: [
      'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bWFsZGl2ZXN8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1512100356356-de1b84283e18?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZGl2ZXN8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1578922746465-3a80a228f223?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFsZGl2ZXN8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1543731068-7e0f5beff43a?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bWFsZGl2ZXN8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bWFsZGl2ZXN8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1540280369237-dea08361593a?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bWFsZGl2ZXN8ZW58MHx8MHx8fDA%3D',
    ],
    statusTag: StatusTag.popular,
    user: TravelUser.brice,
    locationDesc: "Archipel de l'océan Indien, au sud-ouest de l'Inde.",
  ),
];
