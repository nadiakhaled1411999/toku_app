import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/model_item.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.data, required this.color});
  final ItemModel data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              
              color: const Color(0xffFFF6DC),
              child: Image.asset(data.image!)),
          Expanded(child: ItemInfo(data: data))
        ],
      ),
    );
  }
}


