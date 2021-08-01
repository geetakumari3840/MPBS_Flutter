import 'package:flutter/material.dart';
import 'package:mpbsindia/mainpages/list_view_item.dart';

class DrawerMpbs extends StatelessWidget {
  // const DrawerMpbs({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 2);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListViewItems(),
      ),
    );
  }
}
