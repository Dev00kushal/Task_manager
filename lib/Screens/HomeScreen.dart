import 'package:calculatorapp/constants/colors.dart';
import 'package:calculatorapp/widgets/CustomBottomNavBar .dart';
import 'package:calculatorapp/widgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:calculatorapp/constants/homeScreenConstants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(key: key),
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
                left: 20,
                top: 20,
              ),
              child: const Text(
                "News",
                style: TextStyle(color: lightblue, fontSize: 30),
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
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
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
              margin: const EdgeInsets.only(left: 20, top: 20),
              child: const Text(
                "Daily Tasks :",
                style: TextStyle(
                    color: lightblue,
                    fontSize: 30,
                    fontWeight: FontWeight.w300),
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
                        color: DailyTaskContainerColor[i],
                      ),
                      height: 150,
                      padding: const EdgeInsets.all(20),
                      width: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            DailyTask[i],
                            style: const TextStyle(color: white, fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                number[i].toString(),
                                style: const TextStyle(
                                  color: white,
                                  fontSize: 34,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                color: white,
                                scale: 0.90,
                                "assets/images/Trace.png",
                              )
                            ],
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
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                right: 70,
                top: 10,
                bottom: 10,
              ),
              child: const Text.rich(TextSpan(
                  text: "Your overall progress is ",
                  style: TextStyle(
                    color: lightBlack,
                    fontSize: 28,
                  ),
                  children: <InlineSpan>[
                    TextSpan(style: TextStyle(color: pink), text: "60%")
                  ])),
            ),
            Container(
              height: 19,
              width: 420,
              color: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.only(left: 60),
                margin: const EdgeInsets.only(
                  top: 12,
                  left: 30,
                  right: 160,
                ),
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
                  padding: const EdgeInsets.only(right: 35),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      color: newContainerColor[m],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 150,
                    width: 300,
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    padding: const EdgeInsets.all(20),
                    child: ListView(
                      padding: const EdgeInsets.all(15),
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
                                  color: Colors.white, fontSize: 18),
                            ),
                            Image.asset(
                              "assets/images/arrow.png",
                              color: white,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 900,
                          height: 58,
                          child: Container(
                            alignment: Alignment.bottomRight,
                            width: 1200,
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                              endcontent[m],
                              style: const TextStyle(
                                color: white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
