import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  int count = 0;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _topStack(context),
          Container(
            margin: const EdgeInsets.only(right: 200),
            child: const Text(
              'Eywa Hoodie',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          _priceText(),
          _colorContainer(),
          _sizeText(),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 45,
            width: 250,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  widget.count++;
                });
              },
              child: const Text(
                'Add to cart',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Column _sizeText() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 330, top: 10),
          child: const Text(
            "Size",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 18),
          child: Stack(
            children: [
              Card(
                color: Colors.grey.shade200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      "S",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "M",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      " ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "XL",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "XXL",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 160,
                child: Container(
                  color: Colors.blue,
                  height: 30,
                  width: 30,
                  child: const Text(
                    'L',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _colorContainer() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 310, top: 10),
          child: const Text(
            "Colour",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, left: 20, right: 270),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 12,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 14,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 12,
              ),
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 12,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row _priceText() {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10.0),
          child: const Text(
            "  \$30.99",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 7.0),
          child: const Text(
            "\$44.99",
            style: TextStyle(
                fontSize: 18,
                decoration: TextDecoration.lineThrough,
                color: Colors.black12),
          ),
        ),
      ],
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
              image: AssetImage('assets/images/hoodie.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15, right: 15, top: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.chevron_left_outlined,
                color: Colors.white,
                size: 30,
              ),
              Stack(
                children: [
                  const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text(
                        "${widget.count}",
                        style: TextStyle(color: Colors.white),
                      ),
                      radius: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 180, right: 180, top: 389),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                radius: 3.0,
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 4.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                radius: 3.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
