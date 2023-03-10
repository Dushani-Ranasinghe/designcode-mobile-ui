// ignore_for_file: prefer_const_constructors

import 'package:designcode/constants.dart';
import 'package:designcode/model/sidebar.dart';
import 'package:flutter/material.dart';

class SidebarRow extends StatelessWidget {
  // const SidebarRow({
  //   Key? key,
  // }) : super(key: key);
  
  const SidebarRow({ required this.item, super.key});
final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 42.0,
            height: 42.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                gradient: item.background, ),
            child: item.icon,),
        SizedBox(
          width: 12,
        ),
        Container(
          color: Colors.white,
          child: Text(
            item.title,
            style: kCalloutLabelStyle,
          ),
        ),
      ],
    );
  }
}
