import 'package:flutter/cupertino.dart';

class ChatList {
  static var Chat = [
    ChatListModel("Joseph", "Good", "10:28 ",
        "https://cdn.pixabay.com/photo/2022/04/24/16/52/animal-7154059_960_720.jpg"),
    ChatListModel("John", "How are you?", " 10:28 ",
        "https://cdn.pixabay.com/photo/2022/07/16/07/20/sunset-7324598_960_720.jpg"),
    ChatListModel("Emily", "Learning flutter", "Yesterday",
        "https://cdn.pixabay.com/photo/2022/06/27/02/22/woman-7286576_960_720.jpg"),
    ChatListModel("Tom", "Call me", "Wednesday",
        "https://cdn.pixabay.com/photo/2022/07/18/19/23/hand-7330658_960_720.jpg"),
    ChatListModel("Ruby", "Be happy", "16/01/2022",
        "https://cdn.pixabay.com/photo/2022/07/22/19/42/marmot-7338831_960_720.jpg")
  ];

  static ChatListModel getChatItem(int position) {
    return Chat[position];
  }

  static var itemCount = Chat.length;
}

class ChatListModel {
  String name;
  String lastMessage;
  String time;
  String image;

  ChatListModel(
    this.name,
    this.lastMessage,
    this.time,
    this.image,
  );
}
