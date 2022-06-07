import 'package:flutter/material.dart';
import 'package:museumproject/Pages/AllMuseum/MuseumCard.dart';
import 'package:museumproject/Pages/Model/Musem/MusemModel.dart';

class CityMusems extends StatefulWidget {
  final MuseumModel model;

  const CityMusems({required this.model});

  @override
  _CityMusemsState createState() => _CityMusemsState();
}

class _CityMusemsState extends State<CityMusems> {
  @override
  int indexs = 0;
  List<int> a = [];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.model.data[0].sehir),
      ),
      body: GestureDetector(
        onPanCancel: () {
          WidgetsBinding.instance!.focusManager.primaryFocus?.unfocus();
        },
        onTap: () {
          WidgetsBinding.instance!.focusManager.primaryFocus?.unfocus();
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 27, bottom: 9),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search), labelText: "Müze Ad veya İlçe"),
                onChanged: (yaz) {
                  setState(() {
                    a.clear();
                    indexs = 0;
                    if (yaz == "") {
                      indexs = 0;
                    } else {
                      for (int i = 0; i < widget.model.data.length; i++) {
                        if (widget.model.data[i].ilce
                                .toLowerCase()
                                .contains(yaz.toLowerCase()) ||
                            widget.model.data[i].muzeAd
                                .toLowerCase()
                                .contains(yaz.toLowerCase())) {
                          indexs++;
                          a.add(i);
                        }
                      }
                    }
                  });
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemCount: (indexs == 0) ? widget.model.data.length : indexs,
                  itemBuilder: (context, index) {
                    if (indexs == 0) {
                      if (true) {
                        return MuseumCard(
                          data: widget.model.data[index],
                        );
                      } else
                        return Container();
                    } else {
                      if (true) {
                        return MuseumCard(
                            data: widget.model.data[a.elementAt(index)]);
                      } else
                        return Container();
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
