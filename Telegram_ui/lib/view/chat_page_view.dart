// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_getx/model/chatlist.dart';
import 'package:flutter_application_getx/model/message.dart';
import 'package:flutter_application_getx/model/person.dart';
import 'package:flutter_application_getx/view/chat_list_view.dart';
import 'package:flutter_application_getx/view/home.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ChatPageView extends StatefulWidget {
  ChatListModel model;
  ChatPageView(this.model);

  @override
  State<StatefulWidget> createState() => _ChatPageView(model);
}

class _ChatPageView extends State<ChatPageView> {
  @override
  ChatListModel model;
  Person_Data person = Person_data_list.getPerson();
  _ChatPageView(this.model);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(76, 111, 110, 110),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Get.to(() => Home());
              },
            ),
            Expanded(
              child: Row(
                children: [
                  Flexible(
                    child: GestureDetector(
                      onTap: () {},
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 18,
                          backgroundImage: NetworkImage(model.image),
                        ),
                        title: Text(
                          model.name,
                          style: TextStyle(
                            color: Color.fromARGB(255, 228, 225, 225),
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          'last seen recently',
                          style: TextStyle(
                            color: Color.fromARGB(
                              255,
                              82,
                              80,
                              80,
                            ),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.call,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: Column(children: [
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: MessageList.itemCount,
                  itemBuilder: ((context, index) {
                    MessageListModel message = MessageList.getCHatList(index);
                    return Column(
                      crossAxisAlignment: model.name == message.name &&
                              person.name != message.name
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        MessageField(
                          message,
                          index,
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade100),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Icon(Icons.gif_box_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextFormField(
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xff9C9EB9)),
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 0.0),
                                    hintText: 'Message...',
                                    hintStyle: TextStyle(
                                      color: Color(0xff8E8E93),
                                    ),
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                  ),
                                ),
                              ),
                              Icon(Icons.attach_file),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.mic),
                              SizedBox(
                                width: 5,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class MessageField extends StatelessWidget {
  MessageListModel model;
  int index;

  MessageField(this.model, this.index);

  @override
  Widget build(BuildContext context) {
    model = MessageList.getCHatList(index);
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(children: [
        InkWell(
          child: Material(
            color: Color.fromARGB(255, 234, 237, 239),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: model.type == 'txt'
                  ? Text(
                      model.messageText,
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    )
                  : Image(
                      height: MediaQuery.of(context).size.height * .2,
                      width: MediaQuery.of(context).size.width * .4,
                      fit: BoxFit.cover,
                      image: NetworkImage(model.messageText)),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ]),
    );
  }
}
