import 'package:flutter/material.dart';
import 'package:chat_app/data/data_list.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:chat_app/pages/message.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key, title, message, name, image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, int index) {
              return ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) =>  const ChatDetail(
                    ),
                  ));
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(chats[index].avatarUrl),
                ),
                title: Text(chats[index].name),
                subtitle: Text(
                  chats[index].message,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: Text(chats[index].time),
              );
            }),
        floatingActionButton: SpeedDial(
          icon: Icons.add,
          children: [
            SpeedDialChild(label: "One", child: const Icon(Icons.person)),
            SpeedDialChild(label: "One", child: const Icon(Icons.message)),
          ],
        ));
  }
}
