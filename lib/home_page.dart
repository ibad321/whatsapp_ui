import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text(
                  "CHATS",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Tab(
                child: Text(
                  "STATUS",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Tab(
                child: Text(
                  "CALLS",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 5),
            PopupMenuButton(
              icon: const Icon(Icons.more_horiz_outlined),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text("New group"),
                ),
                const PopupMenuItem(
                  child: Text("Linked devices"),
                ),
                const PopupMenuItem(
                  child: Text("Settings"),
                ),
              ],
            )
          ],
        ),
        body: TabBarView(
          children: [
            const Center(
              child: Icon(
                Icons.camera_alt,
                size: 100,
              ),
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text("Humdam"),
                  subtitle: Text("Good Morning"),
                  trailing: Text("9.45Am"),
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1BwYl1Svb2h_YRhj9tcnZk0yAuIHh3oBM03dzDa8f&s"),
                  ),
                );
              },
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "My Status",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Tap to add status update"),
                    leading: CircleAvatar(
                      backgroundColor: Color.fromRGBO(7, 94, 84, 2),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1BwYl1Svb2h_YRhj9tcnZk0yAuIHh3oBM03dzDa8f&s"),
                      ),
                    ),
                  ),
                  Container(
                    height: 25,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Recent Updates",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Color.fromRGBO(7, 94, 84, 2),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.green, blurRadius: 15),
                                  ],
                                  border:
                                      Border.all(width: 3, color: Colors.green),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1BwYl1Svb2h_YRhj9tcnZk0yAuIHh3oBM03dzDa8f&s"),
                                ),
                              ),
                            ),
                            contentPadding: const EdgeInsets.all(7.0),
                            title: const Text(
                              "Humdam",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("Today ${DateTime.now().hour}"
                                    ":"
                                    "${DateTime.now().minute}" +
                                "pm"),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: const Text("Humdam"),
                  subtitle: Text(
                      index == 2 ? "you Missed Call" : "Call time is 4:00Pm"),
                  trailing: Icon(index == 2 ? Icons.call : Icons.video_call),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1BwYl1Svb2h_YRhj9tcnZk0yAuIHh3oBM03dzDa8f&s"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
