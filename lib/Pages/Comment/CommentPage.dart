import 'package:flutter/material.dart';
import 'package:museumproject/Pages/Comment/ListTileWidget.dart';
import 'package:museumproject/Pages/Model/Musem/MusemModel.dart';

class CommentPage extends StatefulWidget {
  final Datum data;
  CommentPage({required this.data});

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.data.muzeAd),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTileWidget(
                      comment: "DenemeComment",
                      star: 4.0,
                      uid: "0",
                      muzeAd: widget.data.muzeAd.toLowerCase(),
                      Ruid: "",
                    ),
                    Divider(
                      thickness: 1,
                    )
                  ],
                ),
              );
            }));
  }
}
