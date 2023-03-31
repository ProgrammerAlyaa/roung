import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/category.dart';
import '../models/home.dart';
import '../models/saluns.dart';

final TextStyle font = GoogleFonts.amiri();

const category_data = const [
  category(
    id: 'n1',
    title: ' الشعر',
    imageurl: 'images/sh.jpg',
  ),
  category(id: 'n2', title: ' العناية بالوجه', imageurl: 'images/w.jpg'),
  category(id: 'n3', title: ' العناية بالجسم', imageurl: 'images/g.jpg'),
  category(id: 'n4', title: ' المساج', imageurl: 'images/m.jpg'),
  category(id: 'n5', title: ' المكياج', imageurl: 'images/mk.jpg'),
  category(id: 'n6', title: ' الأظافر', imageurl: 'images/a.jpg')
];

const saluns_data = const [
  saluns(
    imageurl: 'images/الشعر.jpg',
    id: 's1',
    categories: ['n1'],
    itemlist: [
      'قص شعر طويل ١٠٠',
      'قص شعر قصير ٥٠',
      'قص شعر متوسط ٧٠',
      'قص اطراف ٢٥',
      'استشوار شعر طويل  ١٠٠ ',
      'قص غرة ٣٠',
      'استشوار شعر قصير ٥٠',
      'استشوار شعر متوسط ٧٠',
      'تسريحة ناعمة ٢٥٠',
      'تسريحة فخمة ٣٠٠',
      'تسريحة عروس ٦٠٠',
      'صبغة شعر ٣٠٠',
      'تنظيف الفروة ٥٠',
      'حمام زيت ٧٠',
      'سحب لون ٨٠',
    ],
  ),
  saluns(
    imageurl: 'images/الوجه.jpg',
    id: 's2',
    categories: ['n2'],
    itemlist: [
      'حف حواجب ٣٠',
      'تشقير حواجب ٢٥',
      'واكس وجه ٤٠',
      'تنظيف بشرة ١٥٠',
      'حف شنب ٢٥',
      'صبغة حواجب ٢٥',
    ],
  ),
  saluns(
    imageurl: 'images/الجسم.jpg',
    id: 's3',
    categories: ['n3'],
    itemlist: [
      'واكس يد ٤٠',
      'واكس رجل٤٠',
      'حف يد ٥٠',
      'حف رجل ١٠٠',
      'حف جسم كامل ١٨٠',
      ' حمام مغربي ٢٥٠',
      ' حمام مغربي ملكي ٣٠٠',
    ],
  ),
  saluns(
    imageurl: 'images/المساج.jpg',
    id: 's4',
    categories: ['n4'],
    itemlist: ['مساج ساعة 200', 'مساج نصف ساعة 130', 'مساج اربعين دقيقة 150'],
  ),
  saluns(
    imageurl: 'images/المكياج.jpg',
    id: 's5',
    categories: ['n5'],
    itemlist: [
      'مكياج اطفال  ١٠٠',
      'تركيب رموش ٢٠',
      'مكياج فخم  ٣٠٠  ',
      'مكياج ناعم ٢٠٠',
      'مكياج عروس ٥٠٠'
    ],
  ),
  saluns(
    imageurl: 'images/الاظافر.jpg',
    id: 's6',
    categories: ['n6'],
    itemlist: [
      'بدكير يد ٥٠',
      'بدكير رجل ١٠٠',
      'بدكير يد ورجل ١٢٥',
      'لون اظافر ١٠',
      'تركيب اظافر جل ٣٥٠',
      'كريليك ٢٥٠'
    ],
  ),
];

const homesalun_data = const [
  home(imageurl: 'images/salon1.png', title: ' صالون خديجة العلي '),
  home(imageurl: 'images/salon2.jpeg', title: ' صالون منى اليامي '),
  home(imageurl: 'images/salon3.png', title: ' صالون مريم آرت '),
  home(imageurl: 'images/salon4.jpeg', title: '  صالون سيسترز '),
];

const homebuty_data = const [
  home(imageurl: 'images/beauty.jpg', title: ' عيادة أسرار الجمال '),
  home(imageurl: 'images/beauty2.jpg', title: ' عيادة عنايتي '),
  home(imageurl: 'images/beauty3.jpg', title: ' عيادة النخبة '),
  home(imageurl: 'images/beauty4.jpg', title: '  عيادة النوفي '),
];