import 'package:flutter/material.dart';

class MysliverAppBar extends StatelessWidget {

  final Widget child;
  final Widget title;




  const MysliverAppBar({
  super.key,
  required this.child,
  required this.title,}
  );

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        //cart button
        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text('Sunset Diner'),centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        background: child,
         title: title,centerTitle: true,
      ),
    );
  }
}

