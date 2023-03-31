import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/widgets/category_item.dart';
import '../data/app_data.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/provider_state.dart';

class SalunsDetails extends StatefulWidget {
  const SalunsDetails({super.key, required this.title});
  final String title;

  @override
  State<SalunsDetails> createState() => _SalunsDetailsState();
}

class _SalunsDetailsState extends State<SalunsDetails> {
  final List<String> imgList = [
    'images/add.jpg',
    'images/عروض2.jpg',
  ];
  


  @override
  Widget build(BuildContext context) {
    double custom_width = MediaQuery.of(context).size.width;
    var provState = Provider.of<ProvState>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      provState.changeIndex(0);
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: 20,
                ),
                Text(
                  provState.title1Returned(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )
              ],
            ),
          ),
         
           CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              autoPlay: true,
            ),
            items: imgList
                .map((item) => Container(
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        child: ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            child: Stack(
                              children: <Widget>[
                                Image.asset(
                                  item,
                                  fit: BoxFit.cover,
                                  width: custom_width,
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  left: 0.0,
                                  right: 0.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(199, 251, 234, 234),
                                          Color.fromARGB(0, 0, 0, 0)
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                      ),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 1.0, horizontal: 1.0),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ))
                .toList(),
          ),
          Center(
            child: Text(
              ' تدللي ياجميلة أمامك الخدمات..',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 3, // عدد الأعمدة
        childAspectRatio: 3 / 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: category_data
      .map(
        (categorydata) => GestureDetector(
          onTap: () {
            provState.setTitle2(
                categorydata.title, categorydata.id);
          },
          child: CategoryItem(
              title: categorydata.title,
              imageUrl: categorydata.imageurl),
        ),
      )
        .toList(),
)
              ),
            
          SizedBox(
            height: 50,
          )
        ],
        )
      ),
    );
  }
}