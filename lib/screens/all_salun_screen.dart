import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';
import '../data/app_data.dart';
import '../models/provider_state.dart';
import '../widgets/my_button.dart';

class AllSalunScreen extends StatefulWidget {
  const AllSalunScreen({super.key, required this.title, required this.id});
  final String title;
  final String id;

  @override
  State<AllSalunScreen> createState() => _AllSalunScreenState();
}

class _AllSalunScreenState extends State<AllSalunScreen> {
  String? selecteditem;
  List<String> listvalue = ['شخص واحد', 'شخصين', '٣ أشخاص'];
  String? selectvalue;
  DateTime dateTime = DateTime.now();
  


  @override
  Widget build(BuildContext context) {
    var provState = Provider.of<ProvState>(context);
    final filtersalounsscreen = saluns_data.where((saluns) {
      return saluns.categories.contains(provState.idReturned());
    }).toList();
    double custom_width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
          SizedBox(
            height: 8,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        provState.changeIndex(1);
                      },
                      icon: Icon(Icons.arrow_back)),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    provState.title2Returned(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filtersalounsscreen.length,
              itemBuilder: (context, index) {
                var dataList = filtersalounsscreen[index].itemlist;
                return Column(
                  children: [
                    Image.asset(
                      filtersalounsscreen[index].imageurl,
                      width: custom_width,
                      height: 250,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            hint: Text(
                              ' اختاري الخدمة',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            value: selecteditem,
                            items: dataList.map((String item) {
                              return DropdownMenuItem(
                                child: Text(item),
                                value: item,
                              );
                            }).toList(),
                            onChanged: (newvalue) {
                              setState(() {
                                selecteditem = newvalue;
                              });
                            }),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        margin: EdgeInsets.only(bottom: 20),
                        // decoration: BoxDecoration(
                        //   border: Border.all(color: Colors.black, width: 2),
                        // ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            icon: Icon(Icons.people),
                            hint: Text(
                              'عدد الأشخاص ',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            value: selectvalue,
                            items: listvalue.map(
                              (item) {
                                return DropdownMenuItem(
                                  value: item,
                                  child: Text(item),
                                );
                              },
                            ).toList(),
                            onChanged: (newvalue) {
                              setState(
                                () {
                                  selectvalue = newvalue.toString();
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${dateTime.day}/${dateTime.month}/${dateTime.year}-${dateTime.hour}:${dateTime.minute}',
                              style: const TextStyle(fontSize: 16),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              child: const Text(' لتحديد وقت الخدمة',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black)),
                              onPressed: () async {
                                DateTime? newDate = await showDatePicker(
                                  context: context,
                                  initialDate: dateTime,
                                  firstDate: DateTime(2023),
                                  lastDate: DateTime(2025),
                                );
                                if (newDate == null) return;

                                TimeOfDay? newTime = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay(
                                      hour: dateTime.hour,
                                      minute: dateTime.minute),
                                );

                                if (newDate == null) return;

                                final newDateTime = DateTime(
                                  newDate.year,
                                  newDate.month,
                                  newDate.day,
                                  newTime!.hour,
                                  newTime.minute,
                                );

                                setState(() {
                                  dateTime = newDateTime;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            hintText: ' الوصف',
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: colorb, width: 2.5))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyButton(
                        color: Colors.brown,
                        title: '  متابعة  ',
                        onpressed: () {
                          provState.changeIndex(6);
                        })
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
        ),
        
    );
  }
}