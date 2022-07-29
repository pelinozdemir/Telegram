class MessageList {
  static var messageList = [
    MessageListModel("Joseph", "We had meeting tomorrow.", "10:10 ", "txt"),
    MessageListModel("Tom", "Where have you been ?", "10:20 ", "txt"),
    MessageListModel("Tom", "Where have you been ?", "10:30 ", "txt"),
    MessageListModel("Tom", "Where have you been ?", "08:40 ", "txt"),
    MessageListModel(
        "John",
        "https://cdn.pixabay.com/photo/2022/07/07/09/08/lighthouse-7306839_960_720.jpg",
        " 10:58 ",
        "image"),
    MessageListModel(
        "Emily",
        "https://cdn.pixabay.com/photo/2022/07/07/09/08/lighthouse-7306839_960_720.jpg",
        "11:00 ",
        "image"),
    MessageListModel("Tom", "Are you OK?", "11:20 ", "txt"),
    MessageListModel("Ruby", "Where have you been ?", "10:10 ", "txt"),
    MessageListModel(
        "Tom ",
        "https://cdn.pixabay.com/photo/2022/07/07/09/08/lighthouse-7306839_960_720.jpg",
        "11:30 ",
        "image"),
    MessageListModel("Tom", "Are you OK?", "11:40 ", "txt"),
    MessageListModel("Tom", "Are you OK?", "11:50 ", "txt"),
    MessageListModel("Tom", "Are you OK?", "12:00 ", "txt"),
    MessageListModel("Tom", "Do this", "12:10 ", "txt"),
    MessageListModel("Scarlett", "Are you OK?", "11:40 ", "txt"),
    MessageListModel("Scarlett", "Are you OK?", "11:50 ", "txt"),
    MessageListModel("Scarlett", "Are you OK?", "12:00 ", "txt"),
    MessageListModel("Scarlett", "Do this", "12:10 ", "txt"),
  ];

  static MessageListModel getCHatList(int position) {
    return messageList[position];
  }

  static var itemCount = messageList.length;
}

class MessageListModel {
  String name;
  String messageText;
  String messageDate;
  String type;

  MessageListModel(this.name, this.messageText, this.messageDate, this.type);
}
