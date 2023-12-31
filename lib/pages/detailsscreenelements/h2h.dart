import 'package:flutter/material.dart';

class H2H extends StatelessWidget {
  final String team1;
  final String team2;
  final logo1;
  final logo2;
  final color1;
  final color2;
  const H2H({
    Key? key,
    required this.team1,
    required this.team2,
    required this.logo2,
    required this.logo1,
    required this.color2,
    required this.color1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Row(
            children: const [
              Text(
                "Head 2 Head",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        logo1,
                        height: 40,
                      ),
                      const Text("Previous Matches(17)",
                          style: TextStyle(color: Colors.grey, fontSize: 18)),
                      Image.asset(
                        logo2,
                        height: 40,
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: .8,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      hth(
                        Color: color1,
                        text: "4",
                        outcome: "Won",
                        percent: "24%",
                      ),
                      hth(
                        Color: Colors.grey.shade300,
                        text: "4",
                        outcome: "Draw",
                        percent: "24%",
                      ),
                      hth(
                        Color: color2,
                        text: "9",
                        outcome: "Won",
                        percent: "53%",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Quarter-Finals",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("Europe Leagues",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "9 APR",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  logo1,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  team1,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Text(
                              "6",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "FT      ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  logo2,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  team2,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Text(
                              "0",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "9 APR",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  logo1,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  team1,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Text(
                              "0",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "FT      ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  logo2,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  team2,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Text(
                              "6",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Premier Leagues",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("England Football",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "9 APR",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  logo1,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  team1,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Text(
                              "8",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "FT      ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  logo2,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  team2,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Text(
                              "9",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "9 APR",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  logo1,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  team1,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Text(
                              "0",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "FT      ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  logo2,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  team2,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Text(
                              "0",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 157,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("FA Cup",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("England Football",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "9 APR",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  logo1,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  team1,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Text(
                              "0",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "FT      ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  logo2,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  team2,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Text(
                              "0",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 157,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Round Of 16",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                    ],
                  ),
                  Row(
                    children: const [
                      Text("Europa League",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "9 APR",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  logo1,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  team1,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Text(
                              "1",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "FT      ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  logo2,
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  team2,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                            const Text(
                              "2",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class hth extends StatelessWidget {
  final Color;
  final String text;
  final String outcome;
  final String percent;
  const hth({
    super.key,
    required this.Color,
    required this.text,
    required this.outcome,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 45,
          decoration: BoxDecoration(
              color: Color, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        SizedBox(
          height: 50,
          width: 45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                outcome,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              Text(
                percent,
                style: const TextStyle(color: Colors.grey, fontSize: 18),
              )
            ],
          ),
        )
      ],
    );
  }
}
