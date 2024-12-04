import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class InstagramCloneScreen extends StatelessWidget {
  InstagramCloneScreen({super.key});

  List<String> names = [
    "John",
    "Doe",
    "Michael",
    "Emily",
    "William",
    "Olivia",
    "James",
    "Sophia",
    "Thomas",
    "Taylor",
  ];

  final List<String> locations = [
    'New York',
    'Los Angeles',
    'San Francisco',
    'Chicago',
    'Miami',
    'Austin',
    'Seattle',
    'Boston',
    'Denver',
    'Dallas',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Instagram',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.message, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(width: 10)
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            child: CarouselSlider(
              items: List.generate(10, (index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      width: 80,
                      height: 65,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.pinkAccent,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Image.asset(
                            "assets/img.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        names[index],
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                );
              }).toList(),
              options: CarouselOptions(
                height: 100,
                viewportFraction: 0.2,
                enableInfiniteScroll: false,
                enlargeCenterPage: false,
                scrollPhysics: const BouncingScrollPhysics(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.black,
                  margin:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadowColor: Colors.white,
                  elevation: 8,
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/img_${index + 1}.png'),
                        ),
                        title: Text(
                          names[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        subtitle: Text(locations[index],
                            style: const TextStyle(color: Colors.white)),
                        trailing:
                            const Icon(Icons.more_vert, color: Colors.white),
                      ),
                      Container(
                        color: Colors.grey[300],
                        height: 250,
                        child: Center(
                          child: Image.asset(
                            "assets/img_${index + 1}.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.favorite,
                                  color: Colors.pinkAccent),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.comment_outlined,
                                  color: Colors.white),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.share_outlined,
                                  color: Colors.white),
                              onPressed: () {},
                            ),
                            const Spacer(),
                            IconButton(
                              icon: const Icon(Icons.bookmark_border,
                                  color: Colors.white),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
