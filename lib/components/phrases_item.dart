
import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/model_item.dart';

class  PhrasesItem extends StatelessWidget {
  const  PhrasesItem({super.key, required this.color, required this.data});
  final Color color;
   final ItemModel data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(data: data),

    );
  }
}