import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/widgets/my_button.dart';
import '../models/provider_state.dart';

class basketscreen extends StatefulWidget {
  const basketscreen({super.key});

  @override
  State<basketscreen> createState() => _basketscreenState();
}

class _basketscreenState extends State<basketscreen> {
  @override
  Widget build(BuildContext context) {
    var provState = Provider.of<ProvState>(context);

    return Scaffold(
     
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
          
            Row(children: [
              IconButton(
                  onPressed: () {
                    provState.changeIndex(2);
                  },
                  icon: Icon(Icons.arrow_back)),
              SizedBox(
                width: 20,
              ),
              Text(
                "سلة التسوق ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21.0,
                ),
              ),
            ]),
            SizedBox(height: 18.0),

            CartItem(),
            CartItem(),
            SizedBox(height: 21.0),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "المجموع :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "١٥٠ ريال ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "رسوم خدمة : ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
                Text(
                  " ٢ ريال",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "المجموع الكلي : ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "١٥٢ ريال ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            Spacer(),
            Center(
              child: MyButton(
                  color: Colors.brown,
                  title: " تأكيد الطلب ",
                  onpressed: () {
                    provState.changeIndex(7);
                  }),
            ),
            SizedBox(height: 18.0),
          ],
        ),
        //    ),
        // ),

        // ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(children: <Widget>[
        Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            image: DecorationImage(
              fit: BoxFit.scaleDown,
              image: AssetImage("images/ha.png"),
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
              child: Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/ha.png"),
                fit: BoxFit.scaleDown,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
          )),
        ),
        SizedBox(width: 12.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 100.0,
                child: Text(
                  "قص الشعر متوسط ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                children: <Widget>[
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "١",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: colorb,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "٧٥ ريال ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}