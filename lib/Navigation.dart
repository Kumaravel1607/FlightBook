import 'package:flutter/material.dart';
import 'package:mytrip/Constant/color.dart';
//import 'package:mytrip/Home.dart';
import 'package:mytrip/Home/Home_page.dart';
import 'package:mytrip/Mytrip.dart';
import 'package:mytrip/Offer.dart';
import 'package:mytrip/Myaccount.dart';
//import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Navigation extends StatefulWidget {
  Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
//   PersistentTabController _controller =
//       PersistentTabController(initialIndex: 0);

//   @override
//   Widget build(BuildContext context) {
//     return PersistentTabView(
//       context,
//       controller: _controller,
//       screens: _buildScreens(),
//       items: _navBarItems(),
//       confineInSafeArea: true,
//       backgroundColor: yellow,
//       // backgroundColor: Color.fromARGB(255, 14, 13, 13),
//       itemAnimationProperties: const ItemAnimationProperties(
//         duration: Duration(milliseconds: 200),
//         curve: Curves.ease,
//       ),
//       screenTransitionAnimation: const ScreenTransitionAnimation(
//           duration: Duration(milliseconds: 200),
//           curve: Curves.ease,
//           animateTabTransition: true),
//       navBarStyle: NavBarStyle.style6,
//     );
//   }
// }

// List<PersistentBottomNavBarItem> _navBarItems() {
//   return [
//     PersistentBottomNavBarItem(
//       //icon: Image.asset('assets/images/home.png'),
//       icon: const Icon(
//         Icons.home,
//         color: black,
//       ),
//       title: ('Home'),
//       activeColorPrimary: black,
//       inactiveColorPrimary: black,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(
//         Icons.card_travel_outlined,
//         color: black,
//       ),
//       title: ('My Trips'),
//       activeColorPrimary: black,
//       inactiveColorPrimary: black,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(
//         Icons.brightness_5_outlined,
//         color: black,
//       ),
//       title: ('Offer'),
//       activeColorPrimary: black,
//       inactiveColorPrimary: black,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(
//         Icons.person,
//         color: black,
//       ),
//       title: ('My Account'),
//       activeColorPrimary: black,
//       inactiveColorPrimary: black,
//     ),
//   ];
// }

// List<Widget> _buildScreens() {
//   return [Home(), Mytrip(), Offer(), Myaccount()];
// }

  var tabIndex = 0;
  void changeTab(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      body: IndexedStack(
        index: tabIndex,
        children: [Home(), Mytrip(), Offer(), Myaccount()],
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          // borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            unselectedLabelStyle: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w500, color: black),
            selectedLabelStyle: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: black),
            backgroundColor: yellow,
            elevation: 1,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12,
            currentIndex: tabIndex,
            onTap: changeTab,
            selectedItemColor: black,
            unselectedItemColor: black,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/home.png',
                    width: 25,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/baggage.png',
                  color: black,
                  width: 25,
                ),
                label: "My Trip",
              ),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/discount.png',
                    width: 25,
                  ),
                  label: "Offer"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/user.png',
                    width: 25,
                  ),
                  label: "Account")
            ],
          ),
        ),
      ),
    );
  }
}

itemBar(Image image, String label) {
  return BottomNavigationBarItem(
      icon: Image.asset('assets/images/$image.png'), label: label);
}
