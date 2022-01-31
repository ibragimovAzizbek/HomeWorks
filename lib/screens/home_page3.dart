import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  int count = 0;
  int count2 = 0;
  int count3 = 0;
  double total = 0;
  double price = 20.90, price2 = 32.90, price3 = 22.90;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, left: 15),
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/page3_2.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      child: const Text(
                        'Peace Skull Shirt',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 75, top: 10.0),
                      child: const Text(
                        'Black • L',
                        style: TextStyle(color: Colors.black54, fontSize: 14),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 70, top: 30),
                      child: Text(
                        '\$${widget.price}',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            widget.count--;
                            widget.total += widget.count * widget.price;
                          });
                        },
                        icon: const Icon(Icons.minimize),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 28,
                      color: Colors.grey.shade200,
                      child: Text(
                        "${widget.count}",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.count++;
                          widget.total += widget.count * widget.price;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, left: 15),
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/page3_3.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20.0, right: 28),
                      child: const Text(
                        'Myrtle Beach ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 75, top: 10.0),
                      child: const Text(
                        'Blue • L',
                        style: TextStyle(color: Colors.black54, fontSize: 14),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 70, top: 30),
                      child: Text(
                        '\$${widget.price2}',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            widget.count2--;
                            widget.total += widget.count2 * widget.price2;
                          });
                        },
                        icon: const Icon(Icons.minimize),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 28,
                      color: Colors.grey.shade200,
                      child: Text(
                        "${widget.count2}",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.count2++;
                          widget.total += widget.count2 * widget.price2;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, left: 15),
                height: 120,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/page3_2.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20.0, right: 60),
                      child: const Text(
                        'Kings Shirt',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 75, top: 10.0),
                      child: const Text(
                        'Black • M',
                        style: TextStyle(color: Colors.black54, fontSize: 14),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 70, top: 30),
                      child: Text(
                        '\$${widget.price3}',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            widget.count3--;
                            widget.total += widget.count3 * widget.price3;
                          });
                        },
                        icon: const Icon(Icons.minimize),
                      ),
                    ),
                    Container(
                      height: 20,
                      width: 28,
                      color: Colors.grey.shade200,
                      child: Text(
                        "${widget.count3}",
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.count3++;
                          widget.total += widget.count3 * widget.price3;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 35,
            ),
            child: Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total",
                        style: TextStyle(color: Colors.black45, fontSize: 20),
                      ),
                      Text(
                        "\$${widget.total}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Check out",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: const Icon(
        Icons.chevron_left_sharp,
        color: Colors.black,
        size: 40,
      ),
      title: const Text(
        "My cart",
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    );
  }
}
