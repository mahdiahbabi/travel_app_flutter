import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytravell/models/model.dart';

class creditCard extends StatefulWidget {
  const creditCard({super.key});

  @override
  State<creditCard> createState() => _creditCardState();
}

class _creditCardState extends State<creditCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpandableNotifier(
                child: Expandable(
                  collapsed: Column(
                    children: [
                      Stack(
                        children: [
                          Positioned(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 1.1,
                              child: Image.asset(
                                'assets/images/cards/card1.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 25,
                            left: 3,
                            bottom: 5,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 1.1,
                              child: Image.asset(
                                'assets/images/cards/card2.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 35,
                            left: 10,
                            bottom: 21,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 1.3,
                              child: Image.asset(
                                'assets/images/cards/card3.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 50,
                            left: 2,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 1.1,
                              child: Image.asset(
                                'assets/images/cards/card4.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ExpandableButton(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: const Center(
                            child: Text('Show more'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Image.asset(
                          'assets/images/cards/card1.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Image.asset(
                          'assets/images/cards/card2.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Image.asset(
                          'assets/images/cards/card3.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.1,
                        child: Image.asset(
                          'assets/images/cards/card4.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      ExpandableButton(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue,
                          ),
                          height: 50,
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: const Center(
                            child: Text('Show Less'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
