import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Color> _colors = [
    Colors.lightBlueAccent,
    Colors.black,
    Colors.white,
    Colors.blue,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              _topStack(context),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 180),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey.shade100,
                      radius: 3.0,
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 4.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey.shade100,
                      radius: 3.0,
                    ),
                  ],
                ),
              ),
              _topBarText(text1: 'Trening', text2: 'Show all'),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 15.0),
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.25,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _horizantalContainer(
                    clothingName: 'Russ Shirt',
                    nowPrice: 19.0,
                    oldPrice: 26.0,
                    url: 'assets/images/picture1.jpg'),
                _horizantalContainer(
                    clothingName: 'Comfort jackt',
                    nowPrice: 50.0,
                    oldPrice: 60.0,
                    url: 'assets/images/jact.jpg'),
                _horizantalContainer(
                    clothingName: 'Russ Shirt',
                    nowPrice: 19.0,
                    oldPrice: 26.0,
                    url: 'assets/images/picture1.jpg'),
                _horizantalContainer(
                    clothingName: 'Russ Shirt',
                    nowPrice: 19.0,
                    oldPrice: 26.0,
                    url: 'assets/images/picture1.jpg'),
                _horizantalContainer(
                    clothingName: 'Russ Shirt',
                    nowPrice: 19.0,
                    oldPrice: 26.0,
                    url: 'assets/images/picture1.jpg'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: _topBarText(text1: 'Catigories', text2: 'Show all'),
          ),
          _catigories(
            url: 'assets/images/woman.png',
            catigorie: 'Woman',
            item: '(728 items)',
          ),
           _catigories(
            url: 'assets/images/man.png',
            catigorie: 'Man',
            item: '(536 items)',
          ),
           _catigories(
            url: 'assets/images/child.jpeg',
            catigorie: 'Child',
            item: '(226 items)',
          ),
           _catigories(
            url: 'assets/images/woman.png',
            catigorie: 'Woman ',
            item: '(728 items)',
          ),
        ],
      ),
    );
  }

  SizedBox _catigories(
          {required String url,
          required String catigorie,
          required String item}) =>
      SizedBox(
        child: Card(
          margin: const EdgeInsets.only(top: 10.0, left: 15, right: 15.0),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(url),
                  radius: 18,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 12.0),
                child: Text(
                  catigorie,
                  style: TextStyle(color: _colors[1], fontSize: 17),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5.0),
                child: Text(
                  item,
                  style: const TextStyle(color: Colors.black45, fontSize: 12),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 150.0),
                child: const Icon(
                  Icons.chevron_right_sharp,
                  color: Colors.black,
                  size: 28,
                ),
              ),
            ],
          ),
        ),
      );

  Container _horizantalContainer(
          {required String clothingName,
          String url = 'assets/images/picture2.jpg',
          required double nowPrice,
          required double oldPrice}) =>
      Container(
        margin: const EdgeInsets.only(top: 10.0, left: 10.0),
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                      image: AssetImage(url), fit: BoxFit.cover),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Text(
                      clothingName,
                      style: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  _priceText(
                      nowPrice: nowPrice,
                      oldPrice: oldPrice,
                      sizeMax: 16,
                      colorMax: _colors[1],
                      colorMin: _colors[3]),
                ],
              ),
            )
          ],
        ),
      );

  Container _topBarText({required String text1, required String text2}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 27),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text2,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Stack _topStack(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/jact2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0, right: 15.0, left: 15.0),
          child: Positioned(
            child: Card(
              color: Colors.lightBlue.withOpacity(0.1),
              child: ListTile(
                textColor: Colors.white,
                leading: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 28,
                ),
                title: const Text(
                  "What are you looking for?",
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {},
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          left: 25,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 100),
                child: const Text(
                  "Recommendations",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
              const Text(
                "Women Blue Denim",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 30,
            left: 25,
            child: Row(
              children: [
                _priceText(
                    nowPrice: 30.00,
                    oldPrice: 36.00,
                    sizeMax: 26,
                    colorMax: _colors[0],
                    colorMin: _colors[2]),
              ],
            ))
      ],
    );
  }

  Row _priceText({
    required double nowPrice,
    required double oldPrice,
    required double sizeMax,
    required Color colorMax,
    required Color colorMin,
  }) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10.0),
          child: Text(
            "\$$nowPrice",
            style: TextStyle(
                color: colorMax,
                fontWeight: FontWeight.bold,
                fontSize: sizeMax),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 7.0),
          child: Text(
            "\$$oldPrice",
            style: TextStyle(
                decoration: TextDecoration.lineThrough, color: colorMin),
          ),
        ),
      ],
    );
  }


   





}
