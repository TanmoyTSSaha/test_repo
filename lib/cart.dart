import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_task_food_app/home.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var counter1 = 0;
  var counter2 = 0;
  var counter3 = 0;
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      SizedBox(width: screenHeight / 78),
                      fieldText(
                        "Cart",
                        screenWidth / 15,
                        Colors.black,
                        FontWeight.w500,
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Icon(CupertinoIcons.cart),
                      Positioned(
                        height: 12,
                        width: 12,
                        top: 0,
                        right: 0,
                        child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Color(0xFF74B04C),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: fieldText(
                                "3", 10, Colors.white, FontWeight.normal),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 40.727),
              fieldText(
                "Items",
                screenHeight / 34.66,
                const Color(0x80000000),
                FontWeight.w500,
              ),
              SizedBox(height: screenHeight / 70.90),
              Container(
                height: screenHeight / 9.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: screenHeight / 9.75,
                          width: screenHeight / 9.75,
                          child: Image.asset(
                            "assets/images/Rectangle 9.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: screenWidth / 24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            fieldText(
                              "Chicken",
                              screenWidth / 18,
                              Color(0xFF74B04C),
                              FontWeight.normal,
                            ),
                            fieldText(
                              "₹ 25.00",
                              screenWidth / 18,
                              Colors.black,
                              FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: screenHeight / 22.29,
                          width: screenHeight / 22.29,
                          decoration: BoxDecoration(
                            color: Color(0xFF4E424C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (counter1 <= 0) {
                                  counter1 = 0;
                                } else {
                                  counter1--;
                                }
                              });
                            },
                            icon: Icon(CupertinoIcons.minus),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: screenHeight / 78),
                        fieldText("$counter1", screenHeight / 31.2,
                            Color(0xFF74B04C), FontWeight.normal),
                        SizedBox(width: screenHeight / 78),
                        Container(
                          height: screenHeight / 22.29,
                          width: screenHeight / 22.29,
                          decoration: BoxDecoration(
                            color: Color(0xFF4E424C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                counter1++;
                              });
                            },
                            icon: Icon(CupertinoIcons.add),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight / 26),
              Container(
                height: screenHeight / 9.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: screenHeight / 9.75,
                          width: screenHeight / 9.75,
                          child: Image.asset(
                            "assets/images/Rectangle 9.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: screenWidth / 24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            fieldText(
                              "Mutton",
                              screenWidth / 18,
                              Color(0xFF74B04C),
                              FontWeight.normal,
                            ),
                            fieldText(
                              "₹ 25.00",
                              screenWidth / 18,
                              Colors.black,
                              FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: screenHeight / 22.29,
                          width: screenHeight / 22.29,
                          decoration: BoxDecoration(
                            color: Color(0xFF4E424C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (counter2 <= 0) {
                                  counter2 = 0;
                                } else {
                                  counter2--;
                                }
                              });
                            },
                            icon: Icon(CupertinoIcons.minus),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: screenHeight / 78),
                        fieldText("$counter2", screenHeight / 31.2,
                            Color(0xFF74B04C), FontWeight.normal),
                        SizedBox(width: screenHeight / 78),
                        Container(
                          height: screenHeight / 22.29,
                          width: screenHeight / 22.29,
                          decoration: BoxDecoration(
                            color: Color(0xFF4E424C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                counter2++;
                              });
                            },
                            icon: Icon(CupertinoIcons.add),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight / 26),
              Container(
                height: screenHeight / 9.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: screenHeight / 9.75,
                          width: screenHeight / 9.75,
                          child: Image.asset(
                            "assets/images/Rectangle 11.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: screenWidth / 24),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            fieldText(
                              "Fish",
                              screenWidth / 18,
                              Color(0xFF74B04C),
                              FontWeight.normal,
                            ),
                            fieldText(
                              "₹ 25.00",
                              screenWidth / 18,
                              Colors.black,
                              FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: screenHeight / 22.29,
                          width: screenHeight / 22.29,
                          decoration: BoxDecoration(
                            color: Color(0xFF4E424C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (counter3 <= 0) {
                                  counter3 = 0;
                                } else {
                                  counter3--;
                                }
                              });
                            },
                            icon: Icon(CupertinoIcons.minus),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: screenHeight / 78),
                        fieldText("$counter3", screenHeight / 31.2,
                            Color(0xFF74B04C), FontWeight.normal),
                        SizedBox(width: screenHeight / 78),
                        Container(
                          height: screenHeight / 22.29,
                          width: screenHeight / 22.29,
                          decoration: BoxDecoration(
                            color: Color(0xFF4E424C),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                counter3++;
                              });
                            },
                            icon: Icon(CupertinoIcons.add),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight / 26),
              Row(
                children: [
                  fieldText(
                    "ADDITIONAL COMMENTS",
                    screenWidth / 24,
                    Color(0x804E424C),
                    FontWeight.w500,
                  ),
                  SizedBox(width: screenHeight / 78),
                  Text(
                    "optional",
                    style: TextStyle(
                      color: Color(0x804E424C),
                      fontStyle: FontStyle.italic,
                      fontSize: screenWidth / 24,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight / 26),
              TextField(
                maxLines: 4,
                style: TextStyle(
                  fontSize: screenWidth / 24,
                  color: Color(0xFF4E424C),
                ),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(screenWidth / 18),
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(bottom: screenWidth / 9),
                      child: Icon(
                        Icons.message_outlined,
                      ),
                    ),
                    alignLabelWithHint: true,
                    filled: true,
                    fillColor: Color(0xFFF4F4F4),
                    border: InputBorder.none,
                    labelText: "e.g.Bring extra sauce"),
              ),
              SizedBox(height: 90),
              SizedBox(
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    fieldText(
                      "Selected items (3)",
                      15,
                      Color(0x804E424c),
                      FontWeight.normal,
                    ),
                    SizedBox(height: screenHeight / 78),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "CHECKOUT",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 3,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF74B04C),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        minimumSize: Size(300, 60),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
