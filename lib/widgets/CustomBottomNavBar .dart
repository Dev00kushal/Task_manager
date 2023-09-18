import 'package:calculatorapp/Screens/Profile.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int latestIndex = 0;
    return BottomNavigationBar(
      currentIndex: latestIndex,
      onTap: (index) {
        setState(() {
          latestIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/home.png",
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
            icon: Image.asset(
              "assets/images/User.png",
            ),
          ),
          backgroundColor: Colors.black,
        ),
      ],
    );
  }
}
