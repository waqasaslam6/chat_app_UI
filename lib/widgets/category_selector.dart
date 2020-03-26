import 'package:flutter/material.dart';


class CategorySelecter extends StatefulWidget {
  @override
  _CategorySelecterState createState() => _CategorySelecterState();
}

class _CategorySelecterState extends State<CategorySelecter> {

  int selectedIndex = 0;
  final List categories = ["Messages", "Online", "Groups", "Requests"];

  @override

  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
       child: ListView.builder(
         scrollDirection: Axis.horizontal,
         itemCount: categories.length,
           itemBuilder: (context, int index)
       {
         return GestureDetector(
           onTap: (){
             setState(() {
               selectedIndex = index;
             });
           },
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
             child: Text(categories[index],
             style: TextStyle(
               color: index == selectedIndex ? Colors.white : Colors.white60,
               fontSize: 24.0,
               fontWeight: FontWeight.bold,
               letterSpacing: 1.0,
             ),),
           ),
         );
       }),

    );
  }
}
