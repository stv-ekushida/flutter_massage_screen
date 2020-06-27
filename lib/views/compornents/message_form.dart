import 'package:flutter/material.dart';

class MessageForm extends StatelessWidget {
  final VoidCallback onPressed;

  const MessageForm({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Theme.of(context).cardColor),
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).accentColor),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 2.0),
            child: new Row(
              children: <Widget>[
                SizedBox(
                  width: 16,
                ),

                //入力フォーム
                Flexible(
                  child: TextField(
                    decoration: InputDecoration.collapsed(hintText: "メッセージを入力"),
                  ),
                ),

                //送信ボタン
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 2.0),
                    width: 48.0,
                    height: 48.0,
                    child: IconButton(
                      icon: Icon(Icons.send),
                      onPressed: onPressed,
                    ))
              ],
            ),
          ),
        ));
  }
}
