import 'package:flutter/material.dart';
import 'package:my_project/deals.dart';
import 'package:my_project/itemCaard.dart';
import 'package:my_project/place.dart';
import 'package:my_project/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  IconData _getIconByIndex(int index) {
    switch (index) {
      case 0:
        return Icons.maps_home_work_outlined;
      case 1:
        return Icons.flight;
      case 2:
        return Icons.place;
      case 3:
        return Icons.fastfood;
      case 4:
        return Icons.train;
      default:
        return Icons.error; // Placeholder icon in case of an invalid index
    }
  }

  String _getNameByIndex(int index) {
    switch (index) {
      case 0:
        return "Hotel";
      case 1:
        return "Flight";
      case 2:
        return "Place";
      case 3:
        return "Food";
      case 4:
        return "Train";
      default:
        return "Unknown"; // Placeholder name in case of an invalid index
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 0, left: 16, right: 16, top: 10),
                        child: Text(
                          "Where you",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 32.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 16, left: 18, right: 16, top: 0),
                        child: Text(
                          "Wanna go?",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 32.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SearchButton(),
                  ),
                ],
              ),
              SizedBox(
                height: 150.0, // Adjust the height according to your needs
                width:
                    double.infinity, // Adjust the width according to your needs
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                          width: 10.0), // Add initial spacing if needed
                      for (int index = 0;
                          index < 5;
                          index++) // Replace 5 with the actual number of cards
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: DynamicCard(
                            icon: _getIconByIndex(index),
                            name: _getNameByIndex(index),
                          ),
                        ),
                      const SizedBox(
                          width: 10.0), // Add final spacing if needed
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Hotel",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(fontSize: 16, color: Colors.amber),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 360.0, // Adjust the height as per your needs
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.all(16.0),
                        children: const [
                          CustomCard(
                            image:
                                'https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/08/07/14/oia-santorini.jpg',
                            imageName: 'Santorini',
                            locationIcon: Icons.location_on,
                            locationName: 'Greece',
                            price: '\$488/night',
                            rating: '4.9',
                          ),
                          SizedBox(width: 15),
                          CustomCard(
                            image:
                                'https://media.cntraveler.com/photos/58111e905f434abf665e05e5/16:9/w_2560,c_limit/RoyalPalace-Madrid-Spain-GettyImages-116363030.jpg',
                            imageName: 'Hotel Royal',
                            locationIcon: Icons.location_on,
                            locationName: 'Spain',
                            price: '\$280/night',
                            rating: '4.8',
                          ),
                          SizedBox(width: 15),
                          CustomCard(
                            image:
                                'https://content.jdmagicbox.com/comp/mumbai/23/022p2000023/catalogue/taj-mahal-hotel-apollo-bunder-mumbai-5-star-hotels-0fouvgunb9.jpg',
                            imageName: 'Taj Hotel',
                            locationIcon: Icons.location_on,
                            locationName: 'Mumbai',
                            price: '\$480/night',
                            rating: '4.9',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                child: Text(
                  "Hot Deals",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 250,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CustomCarddeal(
                    image:
                        'https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/08/07/14/oia-santorini.jpg',
                    imageName: 'BaLi Motel Vung Tau',
                    locationIcon: Icons.location_on,
                    locationName: 'Indonesia',
                    price: '\$580/night',
                    rating: '4.9',
                  ),
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
