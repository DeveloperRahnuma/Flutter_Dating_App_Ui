import 'package:flutter/material.dart';
import '../healper/responsive.dart';
import '../healper/style.dart';
import '../widgets/MobileNavBar.dart';
import '../widgets/drawer.dart';
import 'Widget/Mobile.dart';
import 'Widget/Web.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        key: scaffoldKey,
        // appBar: ResponsiveWidget.isSmallScreen(context) ? mobileTopBar(scaffoldKey) : PreferredSize(preferredSize: Size(screenSize.width, 1000), child: NavBar()),
        drawer: MobileMenu(key: scaffoldKey,),
        backgroundColor: bgColor,
        body: ResponsiveWidget(
          largeScreen: DesktopScreen(),
          smallScreen: MobileScreen(),
          mediumScreen: DesktopScreen(),
        ));
  }
}