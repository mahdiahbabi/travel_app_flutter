class travelData {
  String name;
  String location;
  String distance;
  String temp;
  String rate;
  String imagePath;
  String decription;
  String price;

  travelData(
      {required this.name,
      required this.location,
      required this.distance,
      required this.temp,
      required this.rate,
      required this.imagePath,
      required this.decription,
      required this.price,
      });
}

List<travelData> travelList = [
  travelData(
      name: 'Tehran',
      location: 'Iran-tehran',
      distance: '72',
      temp: '27',
      rate: '5',
      imagePath: 'assets/images/3.jpg',
      decription:
          ''' pollution in the atmosphere, resulting in respiratory problems for the Tehran 
  Tehran is the capital of Iran and one of the largest and most populous cities in the world Tehran is the capital of Iran and one of the largest and most populous cities in the world
  Tehran is the capital of Iran and one of the largest and most populous cities in the world Tehran is the capital of Iran and one of the largest and most populous cities in the world
  ''',
price: '\$2000',
),
  travelData(
      name: 'Paris',
      location: 'French-Paris',
      distance: '26',
      temp: '12',
      rate: '3',
      imagePath: 'assets/images/1.jpg',
      decription:
          '''Paris, city and capital of France, situated in the north-central part of the country. People were living on the site of the present-day city, located along the Seine River some 233 miles (375 km) upstream from the river’s mouth on the English Channel (La Manche), by about 7600 BCE. The modern city has spread from the island (the Île de la Cité) and far beyond both banks of the Seine  Paris, city and capital of France, situated in the north-central part of the country. People were living on the site of the present-day city, located along the Seine River some 233 miles (375 km) upstream from the river’s mouth on the English Channel (La Manche), by about 7600 BCE. The modern city has spread from the island (the Île de la Cité) and far beyond both banks of the Seine
Paris, city and capital of France, situated in the north-central part of the country. People were living on the site of the present-day city, located along the Seine River some 233 miles (375 km) upstream from the river’s mouth on the English Channel (La Manche), by about 7600 BCE. The modern city has spread from the island (the Île de la Cité) and far beyond both banks of the Seine.''',
price: '\$3200',
),

  travelData(
      name: 'London',
      location: 'England-London',
      distance: '42',
      temp: '5',
      rate: '5',
      imagePath: 'assets/images/4.jpg',
      decription:
          'London is a famous and historic city. It is the capital of England in the United Kingdom. The city is quite popular for international tourism because London is home to one of the oldest-standing monarchies in the western hemisphere. Rita and Joanne recently traveled to London. They were very excited for their trip because this was their first journey overseas from the United States. London is a famous and historic city. It is the capital of England in the United Kingdom. The city is quite popular for international tourism because London is home to one of the oldest-standing monarchies in the western hemisphere. Rita and Joanne recently traveled to London. They were very excited for their trip because this was their first journey overseas from the United States.London is a famous and historic city. It is the capital of England in the United Kingdom. The city is quite popular for international tourism because London is home to one of the oldest-standing monarchies in the western hemisphere. Rita and Joanne recently traveled to London. They were very excited for their trip because this was their first journey overseas from the United States.',
          price: '\$1900',
          ),
  travelData(
      name: 'Berlin',
      location: 'Germani-Berlin',
      distance: '52',
      temp: '17',
      rate: '3.1',
      imagePath: 'assets/images/2.jpg',
      decription:
          '''Berlin remained a small settlement for many centuries until it merged with the city of Colln, located on the other side of the Spree RiverIn the late 17th century, Berlin became famous as a haven for religious and economic refugees, which helped it develop further.
In 1701, the city became the capital of Prussia. Until the beginning of the 20th century, its economy kept growing immensely.
Having been defeated in World War I, Germany was forced to pay reparations, and this led the living standard to deteriorate.
During World War II, Berlin was nearly burnt to the ground due to numerous bombings which resulted in Germany's defeat.
After several decades of being a divided city, Berlin united and grew into one of the most prosperous places in the world''',
price: '\$3700',
),

];

class Imageadress{
  String image;
  Imageadress({required this.image});
}

List<Imageadress> adressimage=[
  Imageadress(image: 'assets/images/cards/card1'),
  Imageadress(image: 'assets/images/card2'),
  Imageadress(image: 'assets/images/card3'),
  Imageadress(image: 'assets/images/card4'),
];