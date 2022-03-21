
class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Jeff", messageType: "receiver"),
    ChatMessage(messageContent: "Is the project completed?", messageType: "receiver"),
    ChatMessage(messageContent: "Solomon is doing his part along with Ben", messageType: "sender"),
    ChatMessage(messageContent: "Really? I hope we make it on time", messageType: "receiver"),
    ChatMessage(messageContent: "Lets just hope for the best.", messageType: "sender"),
  ];