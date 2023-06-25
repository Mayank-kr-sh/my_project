import 'package:flutter/material.dart';

class CustomCarddeal extends StatelessWidget {
  final String image;
  final String imageName;
  final IconData locationIcon;
  final String locationName;
  final String price;
  final String rating;

  const CustomCarddeal({
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
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.25),
              borderRadius: BorderRadius.circular(18),
            ),
          ),
          Positioned(
            top: 15.0,
            left: 15.0,
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 4.0,
              ),
              child: const Center(
                child: Text(
                  '25% OFF',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  imageName,
                  style: const TextStyle(
                    fontSize: 18.0,
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
              ],
            ),
          ),
          Positioned(
            bottom: 10.0,
            right: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star, size: 16.0, color: Colors.amber),
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
                const SizedBox(height: 4.0),
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
        ],
      ),
    );
  }
}
