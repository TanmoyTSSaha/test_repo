import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:internship_task_food_app/cart.dart';
import 'package:internship_task_food_app/product_details.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double screenHeight = 0;
  double screenWidth = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: screenHeight / 24.375, // = 32
            left: screenHeight / 45.88, // = 17
            right: screenHeight / 45.88, // = 17
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: screenHeight / 32.5, // = 24
                        child: ClipRRect(
                          child: Image.asset("assets/images/Ellipse.png"),
                          borderRadius: BorderRadius.circular(
                              screenHeight / 15.6), // = 50
                        ),
                      ),
                      SizedBox(width: screenHeight / 156),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          fieldText(
                            "Hi Marina",
                            screenHeight / 44.57,
                            Colors.black,
                            FontWeight.normal,
                          ),
                          SizedBox(height: screenHeight / 390),
                          Row(
                            children: [
                              SizedBox(width: screenHeight / 62.4),
                              fieldText(
                                "8-2-596/169,Hyderabad",
                                screenHeight / 78,
                                Colors.black,
                                FontWeight.normal,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("assets/icons/notification.png"),
                ],
              ),
              SizedBox(height: screenHeight / 41.05),
              fieldText(
                "What would you like \nto eat today?",
                screenHeight / 31.2,
                Colors.black,
                FontWeight.normal,
              ),
              SizedBox(height: screenHeight / 40.727),
              fieldText(
                "Categories",
                screenHeight / 34.66,
                const Color(0xFF4E424C),
                FontWeight.w500,
              ),
              SizedBox(height: screenHeight / 70.90),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: foodItem(
                      "assets/icons/Chicken.png",
                      "Chicken",
                      screenHeight / 7.75,
                      screenWidth / 2.29,
                      screenHeight / 780,
                      screenHeight / 156,
                      screenHeight / 48.75,
                      const Color(0xFF4E424C),
                      FontWeight.normal,
                    ),
                  ),
                  SizedBox(width: screenHeight / 78),
                  GestureDetector(
                    onTap: () {},
                    child: foodItem(
                      "assets/icons/Meat.png",
                      "Meat",
                      screenHeight / 7.75,
                      screenWidth / 2.29,
                      screenHeight / 780,
                      screenHeight / 156,
                      screenHeight / 48.75,
                      const Color(0xFF4E424C),
                      FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 28.888),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: foodItem(
                      "assets/icons/fish.png",
                      "Fish",
                      screenHeight / 7.75,
                      screenWidth / 2.29,
                      screenHeight / 780,
                      screenHeight / 156,
                      screenHeight / 48.75,
                      const Color(0xFF4E424C),
                      FontWeight.normal,
                    ),
                  ),
                  SizedBox(width: screenHeight / 78),
                  GestureDetector(
                    onTap: () {},
                    child: foodItem(
                      "assets/icons/prawns.png",
                      "Prawns",
                      screenHeight / 7.75,
                      screenWidth / 2.29,
                      screenHeight / 780,
                      screenHeight / 156,
                      screenHeight / 48.75,
                      const Color(0xFF4E424C),
                      FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 40.727),
              fieldText(
                "Popular items",
                screenHeight / 34.66,
                const Color(0xFF4E424C),
                FontWeight.w500,
              ),
              SizedBox(height: screenHeight / 70.90),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetails()));
                    },
                    child: foodCard(
                      screenWidth / 2.29,
                      screenWidth / 2.29,
                      "assets/images/Boneless_Chicken.png",
                      screenWidth / 24,
                      screenWidth / 24,
                      screenWidth / 20,
                      screenWidth / 7.5,
                      screenWidth / 7.2,
                      "15 mins",
                      screenHeight / 78,
                      screenWidth / 24,
                      screenWidth / 24,
                      "Boneless Chicken",
                      screenHeight / 48.75,
                      "₹ 25.00",
                      screenHeight / 34.66,
                      "500 gms",
                      screenHeight / 78,
                    ),
                  ),
                  SizedBox(width: screenHeight / 78),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetails()));
                    },
                    child: foodCard(
                      screenWidth / 2.29,
                      screenWidth / 2.29,
                      "assets/images/Whole_bird_with_screen.png",
                      screenWidth / 24,
                      screenWidth / 24,
                      screenWidth / 20,
                      screenWidth / 7.5,
                      screenWidth / 7.2,
                      "15 mins",
                      screenHeight / 78,
                      screenWidth / 24,
                      screenWidth / 24,
                      "Boneless Chicken",
                      screenHeight / 48.75,
                      "₹ 125.00",
                      screenHeight / 34.66,
                      "500 gms",
                      screenHeight / 78,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 70.90),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetails()));
                    },
                    child: foodCard(
                      screenWidth / 2.29,
                      screenWidth / 2.29,
                      "assets/images/3th_food.png",
                      screenWidth / 24,
                      screenWidth / 24,
                      screenWidth / 20,
                      screenWidth / 7.5,
                      screenWidth / 7.2,
                      "15 mins",
                      screenHeight / 78,
                      screenWidth / 24,
                      screenWidth / 24,
                      "Boneless Chicken",
                      screenHeight / 48.75,
                      "₹ 25.00",
                      screenHeight / 34.66,
                      "500 gms",
                      screenHeight / 78,
                    ),
                  ),
                  SizedBox(width: screenHeight / 78),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetails()));
                    },
                    child: foodCard(
                      screenWidth / 2.29,
                      screenWidth / 2.29,
                      "assets/images/4th_food.png",
                      screenWidth / 24,
                      screenWidth / 24,
                      screenWidth / 20,
                      screenWidth / 7.5,
                      screenWidth / 7.2,
                      "15 mins",
                      screenHeight / 78,
                      screenWidth / 24,
                      screenWidth / 24,
                      "Boneless Chicken",
                      screenHeight / 48.75,
                      "₹ 25.00",
                      screenHeight / 34.66,
                      "500 gms",
                      screenHeight / 78,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFF4E424C),
        child: Padding(
          padding: EdgeInsets.all(screenWidth / 24),
          child: GNav(
            backgroundColor: Color(0xFF4E424C),
            tabBorderRadius: screenHeight / 15.6,
            tabBackgroundColor: Color(0xFF74B04C),
            activeColor: Colors.white,
            color: Colors.white,
            gap: screenHeight / 78,
            iconSize: screenWidth / 14.4,
            padding: EdgeInsets.all(screenHeight / 78),
            onTabChange: (index) {
              print(index);
            },
            tabs: [
              GButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  });
                },
                icon: Icons.home_outlined,
                text: "Home",
              ),
              GButton(
                icon: CupertinoIcons.search,
                text: "Search",
              ),
              GButton(
                onPressed: () {
                  setState(
                    () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartPage(),
                        ),
                      );
                    },
                  );
                },
                icon: CupertinoIcons.cart,
                text: "Cart",
              ),
              GButton(
                icon: CupertinoIcons.bag,
                text: "Bag",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget fieldText(String title, double fontsize, Color colour, FontWeight type) {
  return Text(
    title,
    style: TextStyle(
      fontSize: fontsize,
      color: colour,
      fontWeight: type,
    ),
  );
}

Widget foodCard(
    double imageContainerHeight,
    double imageContainerWidth1,
    String imageLoc,
    double topDistance1,
    double rightDistance1,
    double timeContainerHeight,
    double timeContainerWidth,
    double borderRadius1,
    String timeText,
    double timeFontSize,
    double bottomDistance1,
    double leftDistance1,
    String titleText,
    double titleSize,
    String price,
    double priceSize,
    String weigthText,
    double weightSize) {
  return Stack(
    children: [
      Container(
        height: imageContainerHeight,
        width: imageContainerWidth1,
        child: Image.asset(
          imageLoc,
          fit: BoxFit.cover,
        ),
      ),
      Positioned(
        top: topDistance1, //,
        right: rightDistance1, //,
        child: Container(
          alignment: Alignment.center,
          height: timeContainerHeight, //,
          width: timeContainerWidth, //,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius1), //),
            color: const Color(0xBF74B04C),
          ),
          child: fieldText(
            timeText,
            timeFontSize, //,
            Colors.white,
            FontWeight.normal,
          ),
        ),
      ),
      Positioned(
        bottom: bottomDistance1, //,
        left: leftDistance1, //,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            fieldText(
              titleText,
              titleSize, //,
              Colors.white,
              FontWeight.normal,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                fieldText(
                  price,
                  priceSize, //,
                  Colors.white,
                  FontWeight.normal,
                ),
                fieldText(
                  weigthText,
                  weightSize, //,
                  Colors.white,
                  FontWeight.normal,
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

Widget foodItem(
    String iconloc,
    String titleText,
    double containerHeight,
    double containerWidth,
    double borderWidth,
    double sizedboxHeight,
    double fontsize,
    Color colour,
    FontWeight fontweight) {
  return Container(
    height: containerHeight, //,
    width: containerWidth, //,
    decoration: BoxDecoration(
      color: const Color(0xFFF7F7F7),
      border: Border.all(
        color: const Color(0xFF74B04C),
        width: borderWidth, //,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(iconloc),
        SizedBox(height: sizedboxHeight),
        fieldText(
          titleText,
          fontsize,
          colour,
          fontweight,
        ),
      ],
    ),
  );
}
