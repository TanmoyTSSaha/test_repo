import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_task_food_app/provider1.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  double screenHeight = 0;
  double screenWidth = 0;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: fieldText(
          "Product Details",
          screenWidth / 15,
          Colors.black,
          FontWeight.w500,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            // top: screenHeight / 24.375, // = 32
            left: screenHeight / 45.88, // = 17
            // right: screenHeight / 45.88, // = 17
          ),
          child: Consumer<Provider1>(
            builder: (context, abc, _) {
              List<ItemModel> items = abc.Items;
              List<String> images = abc.Images;
              List<double> price = abc.Price;
              int foodCount = abc.FoodCount!;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight / 1.642,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          child: fieldText(
                            "${items[widget.index].itemname}",
                            screenWidth / 12,
                            Color(0xFF74B04C),
                            FontWeight.normal,
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 0,
                          child: Row(
                            children: [
                              fieldText(
                                "15 Mins Delivery",
                                screenWidth / 20,
                                Color(0x80000000),
                                FontWeight.normal,
                              ),
                              SizedBox(width: screenWidth / 72),
                              Image.asset("assets/icons/Scooter.png")
                            ],
                          ),
                        ),
                        Positioned(
                          top: screenWidth / 3.6,
                          height: screenWidth / 1.8,
                          width: screenWidth / 4.5,
                          child: Container(
                            height: screenWidth / 1.8,
                            width: screenWidth / 4.5,
                            decoration: const BoxDecoration(
                              color: Color(0xFF4D434C),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: screenWidth / 7.2),
                                fieldText("Weight", screenWidth / 24,
                                    Color(0x80FFFFFF), FontWeight.normal),
                                SizedBox(height: screenHeight / 78),
                                fieldText("+", screenWidth / 24,
                                    Color(0xFFFFFFFF), FontWeight.normal),
                                SizedBox(height: screenHeight / 78),
                                fieldText("500 gr.", screenWidth / 18,
                                    Color(0xFFFFFFFF), FontWeight.normal),
                                SizedBox(height: screenHeight / 78),
                                fieldText("_", 15, Color(0xFFFFFFFF),
                                    FontWeight.normal),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: screenHeight / 39,
                          left: screenHeight / 7.8,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: screenHeight / 1.733,
                            width: screenHeight / 1.733,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(screenHeight / 1.56)),
                            child: Image.asset("assets/images/Ellipse 15.png"),
                          ),
                        ),
                        Positioned(
                          bottom: screenWidth / 6,
                          child: Container(
                            height: screenWidth / 10.285,
                            width: screenWidth / 2.88,
                            decoration: const BoxDecoration(
                              color: Color(0xFF74B04C),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: screenWidth / 10.285),
                                fieldText("Kcal", screenWidth / 28.8,
                                    Color(0x80FFFFFF), FontWeight.normal),
                                SizedBox(width: screenWidth / 36),
                                fieldText("400", screenWidth / 24,
                                    Color(0xFFFFFFFF), FontWeight.normal),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: fieldText("Details", screenWidth / 15,
                              Colors.black, FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight / 78),
                  Padding(
                    padding: EdgeInsets.only(right: screenHeight / 45.88),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "A mix of dark and white meat, our large Chicken Curry Cut pieces include one leg, one wing without tip, and one breast quarter with backbone. Obtained from pasture-raised healthy chickens, the meat has a rich, juicy flavour with a tender, smooth and moderate-firm texture. Best suited for curries.",
                          style: TextStyle(
                            height: screenWidth / 240,
                            fontSize: screenWidth / 30,
                            color: Color(0x804E424C),
                          ),
                        ),
                        SizedBox(height: screenWidth / 36),
                        fieldText("Total Price", 20, Color(0xFF4E424C),
                            FontWeight.normal),
                        SizedBox(height: screenWidth / 36),
                        fieldText(
                          "₹ ${items[widget.index].price}",
                          screenWidth / 16,
                          Color(0xFF4E424C),
                          FontWeight.normal,
                        ),
                        SizedBox(height: screenWidth / 36),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/icons/Heart.png"),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF74B04C),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        screenHeight / 15.6)),
                                minimumSize: Size(
                                    screenHeight / 6.24, screenHeight / 15.6),
                              ),
                              onPressed: () {
                                setState(() {
                                  items[widget.index].qty++;

                                  print(
                                      "Product : ${items[widget.index].itemname} index : ${items[widget.index]} Quantity : ${items[widget.index].qty}");
                                });
                              },
                              child: Center(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth / 14.4,
                                    ),
                                    fieldText(
                                      "Add to Cart",
                                      screenWidth / 24,
                                      Colors.white,
                                      FontWeight.normal,
                                    ),
                                    SizedBox(width: screenWidth / 36),
                                    Icon(
                                      CupertinoIcons.cart,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // GestureDetector(
                            //   onTap: () {},
                            //   child: Container(
                            //     height: screenWidth / 7.5,
                            //     width: screenWidth / 2.29,
                            //     decoration: BoxDecoration(
                            //         color: Color(0xFF74B04C),
                            //         borderRadius:
                            //             BorderRadius.circular(screenWidth / 7.2)),
                            //     child: Row(
                            //       children: [
                            //         SizedBox(
                            //           width: screenWidth / 14.4,
                            //         ),
                            //         fieldText("Add to Cart", screenWidth / 24,
                            //             Colors.white, FontWeight.normal),
                            //         SizedBox(width: screenWidth / 36),
                            //         Icon(
                            //           CupertinoIcons.cart,
                            //           color: Colors.white,
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
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
