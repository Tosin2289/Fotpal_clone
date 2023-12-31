import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../detailsscreenelements/comment.dart';
import '../detailsscreenelements/h2h.dart';
import '../detailsscreenelements/line-up.dart';
import '../detailsscreenelements/predict.dart';
import '../detailsscreenelements/preview.dart';

class DetailsScreen extends StatefulWidget {
  final String team1;
  final String team2;
  final logo1;
  final logo2;
  final String time;
  final color1;
  final color2;
  const DetailsScreen(
      {Key? key,
      required this.team1,
      required this.team2,
      required this.logo1,
      required this.logo2,
      required this.time,
      required this.color1,
      required this.color2})
      : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final List items = [
    "Predict",
    "Comment",
    "Preview",
    "Line-up",
    "H2H",
  ];

  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    final List item = [
      Predict(
        team1: widget.team1,
        team2: widget.team2,
      ),
      const Comment(),
      Preview(
          logo1: widget.logo1,
          logo2: widget.logo2,
          team1: widget.team1,
          team2: widget.team2,
          color2: widget.color2,
          color1: widget.color1),
      LineUp(
        team1: widget.team1,
        team2: widget.team2,
      ),
      H2H(
          logo1: widget.logo1,
          logo2: widget.logo2,
          team1: widget.team1,
          team2: widget.team2,
          color2: widget.color2,
          color1: widget.color1),
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "FOTPAL",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.notifications_outlined,
            color: Colors.black,
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.share_outlined,
            color: Colors.black,
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 28,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: const BoxDecoration(color: Colors.white),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 90,
                          width: 40,
                          child: Icon(Icons.star_border),
                        ),
                        SizedBox(
                          height: 80,
                          width: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                widget.logo1,
                                height: 40,
                              ),
                              Text(
                                widget.team1.toString(),
                                style: const TextStyle(),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "15.04.2020",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const Icon(Icons.minimize_outlined),
                              Text(
                                widget.time,
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 80,
                          width: 75,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                widget.logo2,
                                height: 40,
                              ),
                              Text(
                                widget.team2.toString(),
                                style: const TextStyle(),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                          width: 40,
                          child: Icon(Icons.star_border),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                        child: SizedBox(
                      height: 80,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: items.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                currentindex = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                height: 80,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: currentindex == index
                                        ? Colors.green.shade800
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                    child: Text(
                                  items[index].toString(),
                                  style: TextStyle(
                                      color: currentindex == index
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Center(child: item[currentindex])
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green.shade800,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.sports_soccer,
                ),
                label: 'Matches'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                ),
                label: 'Favourites'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.batch_prediction,
                ),
                label: 'Prediction'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.newspaper,
                ),
                label: 'News'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.trophy), label: 'League'),
          ]),
    );
  }
}
