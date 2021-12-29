import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi_app/screens/home/page/favourites_page.dart';
import 'package:sushi_app/screens/home/page/people_page.dart';
import 'package:sushi_app/screens/home/widget/navigation_drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

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
          leading: Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              IconButton(
                  splashRadius: 26.0,
                  icon: const Icon(Icons.menu),
                  color: const Color(0xff28b8bc),
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  }),
            ],
          ),
        ),
        body: Container(
          padding:
              const EdgeInsets.only(top: 14, right: 24, left: 24, bottom: 12),
          child: Column(
            children: [
              Row(
                children: const [
                  Text('Hi, name'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text(
                    "What is your\nfavorite sushi?",
                    style: TextStyle(fontSize: 40),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              RoundedSearchInput(
                hintText: "Search your sushi",
                textController: _searchController,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const FavouritesPage());
                    },
                    child: const Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xfffb7d4e)),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCardMallika2(
                    selected: false,
                    image: "assets/starter-min.png",
                    title: "Salmon",
                    onTap: () {
                      Get.to(() => const PeoplePage());
                    },
                  ),
                  CategoryCardMallika2(
                    selected: false,
                    image: "assets/starter-min.png",
                    title: "Salmon",
                    onTap: () {
                      Get.to(() => const PeoplePage());
                    },
                  ),
                  CategoryCardMallika2(
                    selected: false,
                    image: "assets/starter-min.png",
                    title: "Salmon",
                    onTap: () {
                      Get.to(() => const PeoplePage());
                    },
                  ),
                  CategoryCardMallika2(
                    selected: false,
                    image: "assets/starter-min.png",
                    title: "Salmon",
                    onTap: () {
                      Get.to(() => const PeoplePage());
                    },
                  ),
                  CategoryCardMallika2(
                    selected: false,
                    image: "assets/starter-min.png",
                    title: "Salmon",
                    onTap: () {
                      Get.to(() => const PeoplePage());
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text(
                    'Top Sushi',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const FavouritesPage());
                    },
                    child: const Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xfffb7d4e)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class RoundedSearchInput extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  const RoundedSearchInput(
      {required this.textController, required this.hintText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 16),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.12)),
      ]),
      child: TextField(
        controller: textController,
        onChanged: (value) {
          //Do something wi
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[500]!,
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(45.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff28b8bc), width: 1.7),
            borderRadius: BorderRadius.all(Radius.circular(45.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff28b8bc), width: 1.7),
            borderRadius: BorderRadius.all(Radius.circular(45.0)),
          ),
        ),
      ),
    );
  }
}

class CategoryCardMallika2 extends StatelessWidget {
  final String title;
  final String image;
  final Function() onTap;
  final bool selected;
  const CategoryCardMallika2(
      {required this.title,
      required this.image,
      required this.onTap,
      this.selected = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                border: Border.all(
                    width: selected ? 2 : 0, color: const Color(0xffFF8527)),
                borderRadius: BorderRadius.circular(60.0)),
            child: ClipRRect(
              child: Image.asset(
                image,
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 12.5,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 16,
                color: selected ? const Color(0xffFF8527) : Colors.black),
          ),
        ],
      ),
    );
  }
}
