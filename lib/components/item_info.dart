import 'package:flutter/material.dart';
import 'package:toku_app/models/model_item.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
    required this.data,
  });
  final ItemModel data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                data.enName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      
    
    
    const Spacer(
      flex: 1,
    ),
    IconButton(
      onPressed: () {
        data.playSound();
      },
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
        color: Colors.white,
      ),
    )
      ]);
  }

}
