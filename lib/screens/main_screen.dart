import 'package:flutter/material.dart';
import 'package:mixchat_app/widgets/category_selector.dart';
import 'package:mixchat_app/widgets/favorite_contacts.dart';
import 'package:mixchat_app/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: new AppBar(
        elevation: 0.0,
        leading: iconBtn(Icon(Icons.menu), 30.0, (){}),
        title: Center(
          child: new Text("Chats",
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          ),
        ),
        actions: <Widget>[
          iconBtn(Icon(Icons.search),30.0,(){}),

        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelecter(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)
                ),
              ),
              child: Column(
                children: <Widget>[
                 FavoriteContacts(),
                 RecentChats(),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
class iconBtn extends StatelessWidget{
  @override
  final Icon icon;
  final double size;
  final Function onPressed;
  iconBtn(this.icon,this.size, this.onPressed);
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: size,
      onPressed: onPressed,
    );
  }
}
