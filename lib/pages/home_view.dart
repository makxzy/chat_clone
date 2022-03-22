import 'package:flutter/material.dart';
import 'package:chat_app/pages/calls_view.dart';
import 'package:chat_app/pages/camera_view.dart';
import 'package:chat_app/pages/chats_view.dart';
import 'package:chat_app/pages/status_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('My Personal Journal');
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 61, 31, 233),
          title: const Text('LetsVibe'),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  
                    // Perform set of instructions.
                    if (customIcon.icon == Icons.search) {
                      customIcon = const Icon(Icons.cancel);
                      customSearchBar = const ListTile(
                        leading: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 28,
                        ),
                        title: TextField(
                          decoration: InputDecoration(
                            hintText: 'type in journal name...',
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                            ),
                            //border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
                    
                  } else {
                    customIcon = const Icon(Icons.search);
                    customSearchBar = const Text('My Personal Journal');
                  }
                });
              },
              icon: customIcon,
            ),
            // IconButton(
            //   onPressed: null,
            //   icon: Icon(
            //     Icons.more_vert,
            //     color: Colors.white,
            //   ),
            // ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontWeight: FontWeight.w600),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.camera_alt,
                  color: Colors.grey,
                ),
              ),
              Text('CHATS'),
              Text('STATUS'),
              Text('CALLS'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [CameraPage(), ChatsPage(), StatusPage(), CallsPage()],
        ),
      ),
    );
  }
}
