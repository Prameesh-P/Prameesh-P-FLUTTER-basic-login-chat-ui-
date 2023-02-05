import 'package:flutter/material.dart';
import 'package:hyyy/screen_two.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("WE CHAT"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.call),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.camera_alt),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.blue[300],
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
                leading: const CircleAvatar(
                  radius: 27,
                  backgroundImage: NetworkImage(
                      "https://pixabay.com/get/gf1fe7ac4d0ea3d1973f3b0fac8373894bef2d4ed9c1dd06303205de38bd8742493f1513d47fc1a8fe78cb38a4b26451d_1280.jpg"),
                ),
                title: Text("Person $index"),
                subtitle: Text("Messsge $index"),
                trailing: const Text("12: 00"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                    return ScreenTwo(name:'Person $index');
                  }));
                });
          },
          separatorBuilder: (context, index) => const Divider(thickness: .6,),
          itemCount: 47,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[500],
        child: const Icon(Icons.add),
      ),
    );
  }
}
