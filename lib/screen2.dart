import 'package:flutter/material.dart';
import 'package:my_project/ExpandText.dart';
import 'package:my_project/circle.dart';
import 'package:my_project/itemcard2.dart';
import 'package:my_project/person.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});
  IconData _getIconByIndex(int index) {
    switch (index) {
      case 0:
        return Icons.local_hotel_outlined;
      case 1:
        return Icons.dinner_dining_outlined;
      case 2:
        return Icons.hot_tub_outlined;
      case 3:
        return Icons.ac_unit;
      default:
        return Icons.wifi; // Placeholder icon in case of an invalid index
    }
  }

  String _getNameByIndex(int index) {
    switch (index) {
      case 0:
        return "2 Bed";
      case 1:
        return "Dinner";
      case 2:
        return "Hot Tub";
      case 3:
        return "1 AC";
      default:
        return "Wifi"; // Placeholder name in case of an invalid index
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2022/04/b611b-resorts-near-coimbatore.jpg?fit=1000%2C667&ssl=1',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 275,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.network(
                      'https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2022/04/b611b-resorts-near-coimbatore.jpg?fit=1000%2C667&ssl=1',
                      fit: BoxFit.cover,
                    ),
                    const Positioned(
                      top: 40.0,
                      left: 20.0,
                      child: CircleButton(icon: Icons.arrow_back),
                    ),
                    const Positioned(
                      top: 40.0,
                      right: 10.0,
                      child: CircleButton(icon: Icons.share),
                    ),
                    const Positioned(
                      top: 40.0,
                      right: 75.0,
                      child: CircleButton(icon: Icons.favorite),
                    ),
                    // Positioned(
                    //   bottom:
                    //       -20.0, // Adjust this value to move the container up or down
                    //   left: 0,
                    //   right: 0,
                    //   child: Container(
                    //     height: 100,
                    //     decoration: BoxDecoration(
                    //       gradient: LinearGradient(
                    //         begin: Alignment.topCenter,
                    //         end: Alignment.bottomCenter,
                    //         colors: [
                    //           Colors.transparent,
                    //           Colors.white,
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Positioned(
                      bottom: 20.0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(
                              255, 255, 255, 0.7), // Transparent white color
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        child: const Text(
                          '124 photos',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'BaLi Motel Vung Tau',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        const Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 22.0,
                            ),
                            SizedBox(width: 4.0),
                            Text(
                              'Indonesia  ',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                        const Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 20.0,
                            ),
                            Text(
                              '  4.9 (6.8Kreview)',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '\$580/',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'night',
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12.0),
                        const Divider(color: Colors.grey),
                        const SizedBox(height: 13.0),
                        ExpandableText(),
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 2, right: 10, top: 20, bottom: 5),
                          child: Text(
                            "What We Offer",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 120.0,
                          width: double.infinity,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                const SizedBox(width: 10.0),
                                for (int index = 0; index < 5; index++)
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: DynamicCard2(
                                      icon: _getIconByIndex(index),
                                      name: _getNameByIndex(index),
                                    ),
                                  ),
                                const SizedBox(width: 10.0),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 2, right: 10, top: 20, bottom: 5),
                          child: Text(
                            "Hosted by",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const UserCard(
                          imageUrl:
                              'https://png.pngtree.com/png-clipart/20200224/original/pngtree-cartoon-color-simple-male-avatar-png-image_5230557.jpg',
                          name: 'John Doe',
                          rating: 4.9,
                          reviewCount: '1.4K',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue,
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text(
                              'Book Now',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
