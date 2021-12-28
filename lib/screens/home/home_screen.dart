import 'package:flutter/material.dart';
import 'package:sushi_app/screens/home/widget/navigation_drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: const NavigationDrawerWidget(),
        // endDrawer: NavigationDrawerWidget(),
        appBar: AppBar(
          backgroundColor: const Color(0xffF6F6F6),
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              icon: const Icon(Icons.restaurant_menu),
              color: const Color(0xff28b8bc),
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              }),
        ),
        body: Column(
          children: const [Text('Hi, name')],
        ));
  }
}
