import 'package:flutter/material.dart';

class MessageListItem extends StatelessWidget {
  const MessageListItem();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  child: const CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                  width: 66,
                  height: 66,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child:
                            Text("2020/07/01", style: TextStyle(fontSize: 16)),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "TITLE",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                          maxLines: 3,
                          style: TextStyle(fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
