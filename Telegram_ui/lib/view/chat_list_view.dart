import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_getx/model/chatlist.dart';
import 'package:flutter_application_getx/view/chat_page_view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ChatListView extends StatelessWidget {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.builder(
        controller: _controller,
        itemCount: ChatList.itemCount,
        itemBuilder: (context, index) {
          ChatListModel chatmodel = ChatList.getChatItem(index);
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => ChatPageView(chatmodel));
                },
                child: ListTile(
                  leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(chatmodel.image)),
                  title: Row(children: [
                    Text(
                      chatmodel.name,
                      style: TextStyle(
                        color: Color.fromARGB(255, 214, 207, 207),
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    /* SizedBox(
                      width: 120,
                    ),*/
                  ]),
                  subtitle: Row(children: [
                    Flexible(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        strutStyle: StrutStyle(fontSize: 12.0),
                        text: TextSpan(
                          text: chatmodel.lastMessage,
                          style: TextStyle(
                            color: Color.fromARGB(255, 199, 197, 197),
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ]),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    Icon(
                      index % 2 == 0 ? Icons.done : Icons.done_all_outlined,
                      color: index % 2 == 0 ? Colors.grey : Colors.blue,
                      size: 15,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      chatmodel.time,
                      style: TextStyle(
                        color: Color.fromARGB(
                          255,
                          82,
                          80,
                          80,
                        ),
                        fontSize: 12,
                      ),
                    ),
                  ]),
                ),
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
