import 'package:calculatorapp/Constants/colors.dart';
import 'package:calculatorapp/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:calculatorapp/Constants/homeScreenConstants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: customAppBar(name: "Home"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(
                  left: 15,
                  top: 20,
                ),
                child: const Text(
                  "News",
                  style: TextStyle(color: lightblue, fontSize: 24),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 1; i <= 3; i++)
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          top: 10,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                              colors: [
                                blue,
                                Color(0xFFF25196B),
                                Color(0xFFF94D9B4)
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            image: const DecorationImage(
                                scale: 0.5,
                                image: AssetImage("assets/images/Mask.png"))),
                        height: 80,
                        width: 200,
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(right: 50),
                          width: 100,
                          child: const Text(
                            "Short news title will be here",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(left: 15, top: 20),
                child: const Text(
                  "Daily Tasks",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < DailyTask.length; i++)
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          top: 10,
                        ),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: white,
                        ),
                        height: 150,
                        padding: const EdgeInsets.all(20),
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              DailyTask[i],
                              style: TextStyle(
                                  color: DailyTaskColor[i], fontSize: 15),
                            ),
                            Text(
                              i.toString(),
                              style: const TextStyle(color: lightDarkBlack),
                            ),
                          ],
                        ),
                      ),
                    const SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      right: 100,
                      top: 15,
                      bottom: 10,
                    ),
                    child: const Text.rich(TextSpan(
                        text: "Your overall progress is ",
                        style: TextStyle(color: lightBlack, fontSize: 18),
                        children: <InlineSpan>[
                          TextSpan(style: TextStyle(color: pink), text: "60%")
                        ])),
                  ),
                  Container(
                    height: 18,
                    width: 200,
                    color: Colors.transparent,
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      height: 20,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: pink,
                      ),
                    ),
                  ),
                ],
              ),
              for (int m = 0; m < newContainerColor.length; m++)
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: newContainerColor[m],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 100,
                    width: 300,
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              imageAssets[m],
                              color: white,
                            ),
                            Text(
                              content[m],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 15),
                            ),
                            Image.asset(
                              "assets/images/arrow.png",
                              color: white,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ));
  }
}
