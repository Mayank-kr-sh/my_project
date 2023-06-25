import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String image;
  final String imageName;
  final IconData locationIcon;
  final String locationName;
  final String price;
  final String rating;

  const CustomCard({
    Key? key,
    required this.image,
    required this.imageName,
    required this.locationIcon,
    required this.locationName,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 180.0,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            right: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  imageName,
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: [
                    Icon(locationIcon, size: 12.0, color: Colors.white),
                    const SizedBox(width: 4.0),
                    Text(
                      locationName,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10.0,
            right: 10.0,
            child: Row(
              children: [
                const Icon(Icons.star,
                    size: 16.0, color: Color.fromARGB(255, 255, 208, 0)),
                const SizedBox(width: 4.0),
                Text(
                  rating,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
