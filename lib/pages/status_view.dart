import 'package:flutter/material.dart';
import 'package:chat_app/data/status_data.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: status.length,
            itemBuilder: (context, int index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(status[index].avatarUrl),
                ),

                title: Text(status[index].name),

                subtitle: Text(status[index].time),

                // trailing: Icon(Icons.call_sharp)
              );
            },
            ),
            );
  }
}
