import 'package:flutter/material.dart';
import 'package:shop_app/widgets/home_item.dart';
import 'package:shop_app/widgets/home_item2.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/provider_state.dart';
import '../data/app_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController scrollController = ScrollController();
  final ScrollController scrollController2 = ScrollController();
  
  

  @override
  Widget build(BuildContext context) {
    var provState = Provider.of<ProvState>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/background.jpg'), fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2),
            ])),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "  رونق ! حيث الجمال ..",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    margin: EdgeInsets.symmetric(horizontal: 40),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                          hintTextDirection: TextDirection.rtl,
                          hintText: "   ابحثي عن كل ماتحتاجينه . . . "),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ]),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(children: [
            Text(
              " الصالونات النسائية",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 25),
            ),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 120,
          // width: 250,
          child: Scrollbar(
            controller: 
            scrollController,
            child: ListView.builder(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: homesalun_data.length,
                itemBuilder: (context, index) {
                  var categorydata = homesalun_data[index];
                  return GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) =>
                        //           SalunsDetails(title: categorydata.title)),
                        // );
                        provState.setTitle(categorydata.title);
                      },
                      child: HomeItem(
                          title: categorydata.title,
                          imageUrl: categorydata.imageurl));
                }),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          " عيادات التجميل ",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
              fontSize: 25),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 120,
          child: Scrollbar(
            controller: scrollController2,
            child: ListView.builder(
                controller: scrollController2,
                scrollDirection: Axis.horizontal,
                itemCount: homebuty_data.length,
                itemBuilder: (context, index) {
                  var categorydata = homebuty_data[index];
                  return GestureDetector(
                    onTap: () {
                      provState.changeIndex(4);
                      provState.changeIsOutToFlase();
                    },
                    child: HomeItem2(
                        title: categorydata.title,
                        imageUrl: categorydata.imageurl),
                  );
                }),
          ),
        ),
        SizedBox(
          height: 70,
        )
      ]),
    );
  }
}