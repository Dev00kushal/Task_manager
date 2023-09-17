import 'package:calculatorapp/Constants/colors.dart';
import 'package:calculatorapp/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    const List colorofContainer = [lightDarkBlack, darkBlue, lightGreen];
    const List content = ["How was your day?", "Current Transist: 3rd House"];
    const List DailyTask = [
      "Daily astromeditation",
      "Daily sleep astromeditation",
      "Daily mantra",
    ];
    const List newContainerColor = [lightGreen, pink];
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
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
                                scale: 2,
                                image: AssetImage("assets/image/mask.png"))),
                        height: 100,
                        width: 200,
                        child: const Text(
                          "Short news title will be here",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
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
                            image: const DecorationImage(
                                scale: 2,
                                image: AssetImage("assets/image/mask.png"))),
                        height: 150,
                        padding: const EdgeInsets.all(20),
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              DailyTask[i],
                              style: TextStyle(
                                  color: colorofContainer[i], fontSize: 15),
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
              Container(
                margin: const EdgeInsets.only(
                  right: 20,
                ),
                alignment: Alignment.bottomCenter,
                child: const Text.rich(TextSpan(
                    text: "Your overall progress is ",
                    style: TextStyle(color: lightBlack, fontSize: 18),
                    children: <InlineSpan>[
                      TextSpan(style: TextStyle(color: pink), text: "60%")
                    ])),
              ),
              Container(
                height: 20,
                width: 300,
                alignment: Alignment.centerLeft,
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
                              "assets/images/Calendar.png",
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
