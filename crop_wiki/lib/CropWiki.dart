import 'package:flutter/material.dart';
import 'package:dartpedia/dartpedia.dart' as wiki;

class CropWiki extends StatefulWidget {
  CropWiki({Key key}) : super(key: key);

  @override
  _CropWikiState createState() => _CropWikiState();
}

class _CropWikiState extends State<CropWiki> {
  var wikipediaPage;
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }
  void getWiki () async{
    wikipediaPage = await wiki.page(myController.text);
    print(wikipediaPage.content);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop Wiki'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: myController,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(Icons.spa),
                  hintText: 'Enter crop name',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide.none,
                  )),
            ),
          ),
          FlatButton(
            onPressed: () async {
              print(myController.text);
              getWiki();

            },
            child: Text(
              'Get wiki',
              style: TextStyle(color: Colors.grey, fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}