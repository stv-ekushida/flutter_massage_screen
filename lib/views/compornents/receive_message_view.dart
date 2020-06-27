import 'package:flutter/material.dart';
import 'package:flutter_massage_screen/models/message.dart';
import 'package:flutter_massage_screen/views/compornents/avatar_from_url.dart';

class ReceiveMessageView extends StatelessWidget {
  final Message message;

  ReceiveMessageView({this.message});

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = Color(0xffd6d6d6);

    return Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //サムネイル画像
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                child: AvatarFromUrl(
                  imageUrl:
                      "https://j-town.net/images/2019/town/town20191010173054.jpg",
                ),
                width: 56,
                height: 56,
              ),
            ),
            SizedBox(
              width: 16,
            ),

            //受信メッセージ
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Image.asset(
                        'images/receive_message.png',
                        fit: BoxFit.scaleDown,
                        width: 40.0,
                        height: 40.0,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 6.0),
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(5.0),
                              topLeft: Radius.circular(5.0)),
                        ),
                        alignment: Alignment.bottomLeft,
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          message.message,
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ),
                    ],
                  ),

                  //受信日時
                  Container(
                    margin: const EdgeInsets.only(left: 6.0),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5.0),
                        bottomLeft: Radius.circular(5.0),
                      ),
                    ),
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      message.date,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
