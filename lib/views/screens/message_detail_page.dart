import 'package:flutter/material.dart';
import 'package:flutter_massage_screen/data/message_type.dart';
import 'package:flutter_massage_screen/models/message.dart';
import 'package:flutter_massage_screen/viewmodels/message_viewmodel.dart';
import 'package:flutter_massage_screen/views/compornents/receive_message_view.dart';
import 'package:flutter_massage_screen/views/compornents/send_message_view.dart';
import 'package:provider/provider.dart';

class MessageDetailPage extends StatefulWidget {
  @override
  _MessageDetailPageState createState() => _MessageDetailPageState();
}

class _MessageDetailPageState extends State<MessageDetailPage> {
  @override
  void initState() {
    super.initState();

    var viewModel = Provider.of<MessageViewModel>(context, listen: false);
    Future(() => viewModel.readAll());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("メッセージ詳細"),
        ),
        body: Consumer<MessageViewModel>(
          builder: (context, viewModel, child) {
            return _messageListBuilder(context, viewModel);
          },
        ));
  }

  Widget _messageListBuilder(BuildContext context, MessageViewModel viewModel) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Container(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  itemCount: viewModel.messages.length,
                  itemBuilder: (_, int index) {
                    Message msg = viewModel.messages[index];

                    return msg.messageType == MessageType.send
                        ? SendMessageView(
                            message: msg,
                          )
                        : ReceiveMessageView(
                            message: msg,
                          );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
