import 'package:flutter/material.dart';
import 'package:notesprovider/models/notes_operation.dart';
import 'package:provider/provider.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String titleText;
    String descriptionText;

    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text('ノートアプリ'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'タイトル',
                hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)
              ),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              onChanged: (val) {
                titleText = val;
              },
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '内容',
                  hintStyle: TextStyle(fontSize: 16, color: Colors.white)
                ),
                style: TextStyle(fontSize: 16, color: Colors.white),
                onChanged: (val) {
                  descriptionText = val;
                },
              ),
            ),
            FlatButton(
              onPressed: () {
                Provider.of<NotesOperation>(context, listen: false).addNewNote(titleText, descriptionText);
                Navigator.pop(context);
              },
              color: Colors.white,
              child: Text('追加', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.lightBlue),),
            ),
          ],
        ),
      ),
    );
  }
}