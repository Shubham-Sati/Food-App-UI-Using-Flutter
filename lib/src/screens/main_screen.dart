import 'package:flutter/material.dart';
import 'package:food_app/src/page/order_page.dart';
import 'package:food_app/src/scoped-model/food_model.dart';
import '../page/home_page.dart';
import '../page/favorite_page.dart';
import '../page/profile_page.dart';

class MainScreen extends StatefulWidget {

  final FoodModel foodModel;
MainScreen({this.foodModel});

@override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
 int currentTabIndex = 0;
 HomePage homePage;

 List<Widget> pages;
 Widget currentPage;
 OrderPage orderPage;
 FavoritePage favoritePage;
 ProfilePage profilePage;

 @override
  void initState() {
   //call fetch method on food
    widget.foodModel.fetchFoods();

    homePage = HomePage();
    orderPage= OrderPage();
    favoritePage = FavoritePage();
    profilePage = ProfilePage();
    pages = [homePage, orderPage,favoritePage,profilePage];
    currentPage = homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index){
            setState(() {
              currentTabIndex=index;
              currentPage=pages[index];
            });
          },
          currentIndex: currentTabIndex,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Home")
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text("Orders")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  title: Text("Favorite")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Profile")
              ),
            ],
        ),
         body: currentPage,
      );
    }
  }

