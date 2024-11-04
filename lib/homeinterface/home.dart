import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project1/componets/drawer.dart';
import 'package:project1/pages/pageone.dart';
import 'package:project1/pages/pagethree.dart';
import 'package:project1/pages/pagetwo.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int activeIndex = 0;
  final List<String> imageUrls = [
    'assets/image/image1.PNG',
    'assets/image/imageone.png',
    'assets/image/imagetwo.png',
  ];

  final PageController _pageController = PageController();

  // Track the visibility state of each section
  final Map<String, bool> _isVisible = {
    'School Programs and Classes': false,
    'Importance of Tuition': false,
    'Holiday Home Packages': false,
  };

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 29,
          backgroundColor: Color.fromARGB(255, 197, 194, 194),
          title: const Text(
            'Initial',
            style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(11)),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search_off),
              onPressed: () {},
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 222, 206, 224),
                  Colors.lightBlueAccent
                ],
                begin: Alignment.bottomRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.precision_manufacturing_outlined), text: 'Tuition'),
              Tab(icon: Icon(Icons.read_more_rounded), text: 'Schools Adver'),
              Tab(icon: Icon(Icons.holiday_village_outlined), text: 'Hd.Pck'),
            ],
          ),
        ),
        drawer: MyDrawer(),
        body: TabBarView(
          children: [
            // Home Tab Content
            Column(
              children: [
                // Carousel Slider Section
                Column(
                  children: [
                    CarouselSlider.builder(
                      itemCount: imageUrls.length,
                      options: CarouselOptions(
                        initialPage: 0,
                        height: 220,
                        pageSnapping: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        onPageChanged: (index, reasons) =>
                            setState(() => activeIndex = index),
                      ),
                      itemBuilder: (context, index, realIndex) {
                        final urlImage = imageUrls[index];
                        return buildImage(urlImage, index);
                      },
                    ),
                    const SizedBox(height: 10),
                    buildIndicator(),
                  ],
                ),
                // Detailed Information Sections with Images
                
                Expanded(
                  child: ListView(
                    children: [
                      buildInfoSection(
                        title: 'School Programs and Classes',
                        imagePath: 'assets/image/schoolprg.png',
                        description:
                            'Our school offers a variety of programs ranging from basic education to advanced levels. Students can choose from multiple streams that suit their interests and career goals.',
                      ),
                      buildInfoSection(
                        title: 'Importance of Tuition',
                        imagePath: 'assets/image/tuitionpic.png',
                        description:
                            'Tuition classes are essential for reinforcing the students\' understanding of difficult subjects. They provide an environment for focused learning and personalized attention.',
                      ),
                      buildInfoSection(
                        title: 'Holiday Home Packages',
                        imagePath: 'assets/image/homepackages.png',
                        description:
                            'During holidays, we provide home packages including study materials, online tutoring, and more .  These packages help students stay ahead and keep learning, even when they are not in school.',
                      ),
                    ],
                  ),
                  
                ),
              ],
            ),
            // Other Tab Contents
            Pageone(), // Tuition Tab
            PageTwo(), // Schools Adver Tab
            PageThree(), // Holiday Packages Tab
          ],
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        color: Colors.grey,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: imageUrls.length,
        effect: SlideEffect(
          dotHeight: 11,
          dotWidth: 11,
          activeDotColor: Color.fromARGB(255, 243, 176, 171),
          dotColor: Colors.grey,
        ),
      );

  Widget buildInfoSection({
    required String title,
    required String imagePath,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Display image always visible
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            imagePath,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        // Title for tapping to view/hide content
        ListTile(
          title: Text(title),
          onTap: () {
            setState(() {
              _isVisible[title] = !_isVisible[title]!;
            });
          },
        ),
        // Content that is shown/hidden on tap
        Visibility(
          visible: _isVisible[title]!,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              description,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Divider(), // Divider for visual separation
      ],
    );
  }
}
