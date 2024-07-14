import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: Colors.teal,
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Calls'),
            ),
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 1),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    const [
                      PopupMenuItem(value: 1, child: Text('New Group')),
                      PopupMenuItem(value: 2, child: Text('New broadcast')),
                      PopupMenuItem(value: 3, child: Text('Linked devices')),
                      PopupMenuItem(value: 4, child: Text('Starred messages')),
                      PopupMenuItem(value: 5, child: Text('Settings')),
                    ])
          ],
        ),
        body: TabBarView(children: [
          const Text('Camera'),

          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          // color: Colors.green,
                          width: 4,
                        )),
                    child: const CircleAvatar(
                      child: Image(
                          image: AssetImage('assets/images/haseeb.jpg.jpeg')),
                    ),
                  ),
                  title: const Text('Haseeb'),
                  subtitle: const Text('How was your day today?'),
                  trailing: const Text('5:00 AM'),
                );
              }),

          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 4,
                        )),
                    child: const CircleAvatar(
                      child: Image(
                          image: AssetImage('assets/images/umer.jpg.jpeg')),
                    ),
                  ),
                  title: const Text('Umer'),
                  subtitle: const Text('30m ago'),
                );
              }),

          ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 4,
                        )),
                    child: const CircleAvatar(
                      child:
                          Image(image: AssetImage('assets/images/hasan.jpeg')),
                    ),
                  ),
                  title: const Text('Hasan'),
                  subtitle: const Text('You missed call'),
                  trailing: const Icon(Icons.phone),
                );
              }),

          // const Text('Status'),
          const Text('Calls'),
        ]),
      ),
    );
  }
}
