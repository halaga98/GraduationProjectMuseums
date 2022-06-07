import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  final String comment;
  final double star;
  final String uid;
  final String muzeAd;
  final String Ruid;
  ListTileWidget(
      {required this.comment,
      required this.star,
      required this.uid,
      required this.muzeAd,
      required this.Ruid});

  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("images/person.png"),
      ),
      title: Text("Comment"),
      subtitle: Text(widget.comment),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.star.toString()),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ],
          ),
        ],
      ),
      onTap: () {},
    );
  }
}
/*
*/
