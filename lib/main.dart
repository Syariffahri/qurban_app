import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:speed_code01/screens/history.dart';
import 'package:speed_code01/screens/home.dart';
import 'package:speed_code01/screens/notification.dart';
import 'package:speed_code01/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /* 
  Instagram: @fahri.code
  Youtube: @codingwithfahrii
  Github: @syariffahri
  */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff229AD3),
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyText2: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: const Color(0xff2D2D2D),
          ),
          headline1: GoogleFonts.montserrat(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: const Color(0xff2D2D2D),
          ),
          subtitle1: GoogleFonts.montserrat(
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: const Color(0xff2D2D2D).withOpacity(0.6),
          ),
          subtitle2: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static const List<dynamic> _pages = [
    Home(),
    History(),
    NotificationPage(),
    Profile(),
  ];

  void _tapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: BottomNavigationBar(
          onTap: _tapped,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff229AD3),
          unselectedItemColor: const Color(0xff2D2D2D).withOpacity(0.6),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex == 0 ? IconlyBold.home : IconlyBroken.home,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex == 1
                    ? IconlyBold.document
                    : IconlyBroken.document,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex == 2
                    ? IconlyBold.notification
                    : IconlyBroken.notification,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex == 3 ? IconlyBold.profile : IconlyBroken.profile,
              ),
              label: '',
            ),
          ]),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _pages.elementAt(_selectedIndex),
        ],
      ),
    );
  }
}
