import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_task_food_app/home.dart';
import 'package:internship_task_food_app/provider1.dart';
import 'package:provider/provider.dart';

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
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: const Icon(
        //     Icons.arrow_back,
        //     color: Colors.black,
        //   ),
        // ),
        title: fieldText(
          "Cart",
          screenWidth / 15,
          Colors.black,
          FontWeight.w500,
        ),
        actions: [
          Badge(
            position: BadgePosition.topEnd(top: 10, end: 5),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.cart,
                color: Colors.grey,
                // size: 10,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          )
          // Stack(
          //   children: [
          //     const Icon(
          //       CupertinoIcons.cart,
          //       color: Colors.black,
          //     ),
          //     Positioned(
          //       height: 12,
          //       width: 12,
          //       top: 0,
          //       right: 0,
          //       child: Container(
          //         height: 8,
          //         width: 8,
          //         decoration: BoxDecoration(
          //             color: Color(0xFF74B04C),
          //             borderRadius: BorderRadius.circular(10)),
          //         child: Center(
          //           child: fieldText("3", 10, Colors.white, FontWeight.normal),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            // top: screenHeight / 24.375, // = 32
            left: screenHeight / 45.88, // = 17
            right: screenHeight / 45.88, // = 17
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              fieldText(
                "Items",
                screenHeight / 34.66,
                const Color(0x80000000),
                FontWeight.w500,
              ),
              SizedBox(height: screenHeight / 70.90),
              Consumer<Provider1>(
                builder: (context, abc, _) {
                  List<ItemModel> items = abc.Items;
                  return ListView.builder(
                    itemCount: items.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      if (items[index].qty > 0) {
                        return SizedBox(
                          height: screenHeight / 9.75,
                          width: screenWidth,
                          child: Row(
                            children: [
                              SizedBox(
                                height: screenHeight / 9.75,
                                width: screenHeight / 9.75,
                                child: Image.asset(
                                  "${items[index].images}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: fieldText(
                                        "${items[index].itemname}",
                                        screenWidth / 18,
                                        Color(0xFF74B04C),
                                        FontWeight.normal,
                                      ),
                                    ),
                                    fieldText(
                                      "₹ ${items[index].price}",
                                      screenWidth / 18,
                                      Colors.black,
                                      FontWeight.w500,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: screenHeight / 22.29,
                                width: screenHeight / 22.29,
                                decoration: BoxDecoration(
                                  color: Color(0xFF4E424C),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    abc.decreaseqty(index);
                                  },
                                  icon: Icon(CupertinoIcons.minus),
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              fieldText(
                                  "${items[index].qty}",
                                  screenHeight / 31.2,
                                  Color(0xFF74B04C),
                                  FontWeight.normal),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: screenHeight / 22.29,
                                width: screenHeight / 22.29,
                                decoration: BoxDecoration(
                                  color: Color(0xFF4E424C),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    abc.increaseqty(index);
                                  },
                                  icon: Icon(CupertinoIcons.add),
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      return SizedBox();
                    },
                  );
                },
              ),
              SizedBox(height: screenHeight / 26),
              Consumer<Provider1>(builder: (context, abc, _) {
                List<ItemModel> items = abc.Items;

                return fieldText("Total Price ₹ ${abc.totalAmount}", 20,
                    Colors.black, FontWeight.bold);
              }),
              SizedBox(height: screenHeight / 26),
              Row(
                children: [
                  fieldText(
                    "ADDITIONAL COMMENTS",
                    screenWidth / 24,
                    const Color(0x804E424C),
                    FontWeight.w500,
                  ),
                  SizedBox(width: screenHeight / 78),
                  Text(
                    "optional",
                    style: TextStyle(
                      color: const Color(0x804E424C),
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
                  color: const Color(0xFF4E424C),
                ),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(screenWidth / 18),
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(bottom: screenWidth / 9),
                      child: const Icon(
                        Icons.message_outlined,
                      ),
                    ),
                    alignLabelWithHint: true,
                    filled: true,
                    fillColor: const Color(0xFFF4F4F4),
                    border: InputBorder.none,
                    labelText: "e.g.Bring extra sauce"),
              ),
              SizedBox(height: screenHeight / 39),
              SizedBox(
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Consumer<Provider1>(builder: (context, abc, _) {
                      List<ItemModel> items = abc.Items;

                      return fieldText(
                        "Selected items (${abc.selectedItems})",
                        15,
                        const Color(0x804E424c),
                        FontWeight.normal,
                      );
                    }),
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
                        primary: const Color(0xFF74B04C),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        minimumSize: const Size(300, 60),
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
