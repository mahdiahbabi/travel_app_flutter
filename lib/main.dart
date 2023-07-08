import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytravell/credit.dart';
import 'package:mytravell/models/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}

var selecteditem = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var sizeScrenn = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: sizeScrenn.height / 1.7,
                // color: Colors.red,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: sizeScrenn.height / 1.9,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(45),
                            ),
                            color: Colors.amber,
                            image: DecorationImage(
                              image: AssetImage(
                                  travelList[selecteditem].imagePath),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),

                    //app bar icon

                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                color: Colors.white30),
                            child: Center(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      CupertinoIcons.back,
                                      color: Colors.white,
                                    ))),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(1000),
                                color: Colors.white30),
                            child: Center(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      CupertinoIcons.search,
                                      color: Colors.white,
                                    ))),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 90,
                      bottom: 0,
                      right: 5,
                      child: Container(
                        width: 90,
                        height: 350,
                        child: ListView.builder(
                            controller: PageController(),
                            itemCount: travelList.length,
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      selecteditem = index;
                                    });
                                  },
                                  child: listItems(index: index),
                                ),
                              );
                            }),
                      ),
                    ),
                    Positioned(
                      bottom: 55,
                      left: 25,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            travelList[selecteditem].name,
                            style: const TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const Icon(
                                CupertinoIcons.location_solid,
                                color: Colors.white,
                              ),
                              Text(
                                travelList[selecteditem].location,
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                              side: BorderSide(color: Colors.black45)),
                          child: SizedBox(
                            height: 90,
                            width: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Distance',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  travelList[selecteditem].distance + 'Km',
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                              side: const BorderSide(color: Colors.black45)),
                          child: SizedBox(
                            height: 90,
                            width: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Temp',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  travelList[selecteditem].temp + '\u2109',
                                  style: const TextStyle(fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                              side: const BorderSide(color: Colors.black45)),
                          child: Container(
                            height: 90,
                            width: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'Rate',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  travelList[selecteditem].rate,
                                  style: const TextStyle(fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text('Description'),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: ExpandableText(
                        travelList[selecteditem].decription,
                        expandText: 'Read More',
                        animationCurve: Curves.decelerate,
                        animationDuration: Duration(milliseconds: 500),
                        collapseText: 'Collapse',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: sizeScrenn.height / 4,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          child: Column(
                            children: [
                              Text('Total Price'),
                              Text(
                                travelList[selecteditem].price,
                                style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Container(
                              height: 95,
                              width: 95,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1000),
                                  color: const Color.fromARGB(132, 0, 0, 0)),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).push(CupertinoPageRoute(builder: (context) => creditCard(),));
                                  },
                                  icon: const Icon(CupertinoIcons.forward))),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class listItems extends StatelessWidget {
  final int index;

  const listItems({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      height: selecteditem == index ? 70 : 55,
      width: selecteditem == index ? 70 : 55,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: selecteditem == index
            ? BorderRadius.circular(75)
            : const BorderRadius.all(Radius.circular(12)),
        border: Border.all(width: 3, color: Colors.white),
      ),
      child: ClipRRect(
        borderRadius: selecteditem == index
            ? BorderRadius.circular(75)
            : BorderRadius.circular(12),
        child: Image.asset(
          travelList[index].imagePath,
          fit: BoxFit.fill,
          height: selecteditem == index ? 70 : 55,
          width: selecteditem == index ? 70 : 55,
        ),
      ),
    );
  }
}
