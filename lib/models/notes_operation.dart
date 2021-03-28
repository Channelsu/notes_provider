import 'package:flutter/material.dart';
import 'package:notesprovider/models/note.dart';

// プロバイダーにあたるファイル
class NotesOperation extends ChangeNotifier {
  List<Note> _notes = new List<Note>();
  
  // ゲッター
  List<Note> get getNotes {
    return _notes;
  }

  // コンストラクタ
  NotesOperation() {
    addNewNote('タイトル', '内容');
    addNewNote('タイトル2', '内容2');
    addNewNote('タイトル3', '内容3');
  }


  // ノート追加メソッド
  void addNewNote(String title, String description){
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }

}