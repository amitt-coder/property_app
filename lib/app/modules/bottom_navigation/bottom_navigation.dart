import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property/app/utilis/app_color.dart';
import '../../utilis/images.dart';
import '../Dashboard/dashboard_screen.dart';
import '../home/home_screen.dart';
import '../my_listing/my_listing_screen.dart';
import '../profile/profile_screen.dart';
import '../tenants/tenants_screen.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MyListingScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_selectedIndex != 0) {
          setState(() {
            _selectedIndex = 0;
          });
          return false; // Returning false will prevent the app from being closed
        }
        return true; // Let the app handle the back button press normally
      },
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 17,
            unselectedFontSize: 15,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            backgroundColor: AppColor.primaryColor,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: AppColor.primaryColor,
                activeIcon: Image.asset(
                  ProjectImages.Dashboard, color: Colors.white, height: 20, width: 20, ),
                icon: Image.asset(
                  ProjectImages.Dashboard,color:Colors.black, height: 20, width: 20,),
                label: 'Dashboard',
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColor.primaryColor,
                activeIcon: Image.asset(
                  ProjectImages.property, color: Colors.white, height: 20, width: 20,),
                icon: Image.asset(
                  ProjectImages.property,color:Colors.black, height: 20, width: 20,),
                label: 'My Listing',
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColor.primaryColor,
                activeIcon: Image.asset(
                  ProjectImages.userDark, color: Colors.white, height: 20, width: 20, ),
                icon: Image.asset(
                  ProjectImages.user,color: Colors.black,height: 20, width: 20,),
                label: 'Profile',
              ),
            ],

          ),
        ),
      ),
    );
  }
}
