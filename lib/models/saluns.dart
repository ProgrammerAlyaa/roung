import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class saluns {
  final String id;
  final String imageurl;
  final List<String> categories;
  final List<String> itemlist;
  const saluns(
      {required this.itemlist,
      required this.id,
      required this.categories,
      required this.imageurl});
}