
// List<Map> chats = [
//   {
//     "image": "Image.asset('assets/avatar.png')",
//     "name" : "Kamal Deen",
//     "title": "Hello There",
//     "message" : "What can i do for you"

//   },

//   {
//     "image": "AssetImage(assets/avatar.png)",
//     "name" : "Kamal 1",
//     "title": "Hello There",
//     "message" : "What can i do for you"

//   },
// ];



class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({required this.name, required this.message, required this.time, required this.avatarUrl});
}

List<ChatModel> chats = [
  ChatModel(
      name: "Jefferson",
      message: "Am tired of writing countless codes !",
      time: "15:30",
      avatarUrl:
          "assets/images/avatar.png"),
  ChatModel(
      name: "Mohammed",
      message: "I need someone to help me integrate the backend!",
      time: "17:30",
      avatarUrl:
          "assets/images/avatar2.png"),
  ChatModel(
      name: "Solomon",
      message: "Hi, whats up !",
      time: "5:00",
      avatarUrl:
          "assets/images/avatar.png"),
  ChatModel(
      name: "Benjamin",
      message: "I should be done with everything by tomorrow",
      time: "10:30",
      avatarUrl:
          "assets/images/avatar2.png"),
  ChatModel(
      name: "Maxzy",
      message: "Am having issues with compilation",
      time: "12:30",
      avatarUrl:
          "assets/images/avatar.png"),
  ChatModel(
      name: "Supervisor",
      message: "Tomorrow is the deadline !",
      time: "15:30",
      avatarUrl:
          "assets/images/avatar2.png"),
  ChatModel(
      name: "Jefferson",
      message: "Am tired of writing countless codes !",
      time: "15:30",
      avatarUrl:
          "assets/images/avatar.png"),
  ChatModel(
      name: "Mohammed",
      message: "I need someone to help me integrate the backend!",
      time: "17:30",
      avatarUrl:
          "assets/images/avatar2.png"),
  ChatModel(
      name: "Solomon",
      message: "Hi, whats up !",
      time: "5:00",
      avatarUrl:
          "assets/images/avatar.png"),
  ChatModel(
      name: "Benjamin",
      message: "I should be done with everything by tomorrow",
      time: "10:30",
      avatarUrl:
          "assets/images/avatar2.png"),
  ChatModel(
      name: "Maxzy",
      message: "Am having issues with compilation",
      time: "12:30",
      avatarUrl:
          "assets/images/avatar.png"),
  ChatModel(
      name: "Supervisor",
      message: "Tomorrow is the deadline !",
      time: "15:30",
      avatarUrl:
          "assets/images/avatar2.png"),
];
