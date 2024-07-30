import 'package:flutter/material.dart';
import 'package:get/get.dart';
//This class includes some of the getx utilities such as bottom bar and how
// we can easily change the theme with getx, and also Snack Bar with getx
class GetxUtilities extends StatefulWidget {
  const GetxUtilities({super.key});

  @override
  State<GetxUtilities> createState() => _GetxUtilitiesState();
}

class _GetxUtilitiesState extends State<GetxUtilities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Getx Tutorials')),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                elevation: 8,
                color: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: ListTile(
                  title: const Text('Getx Default Dialog'),
                  subtitle: const Text(
                    'Learning Gex Utility Default Dialog',
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Get.defaultDialog(
                        title: 'Muhammad Ali Bukhari',
                        backgroundColor: Colors.deepPurpleAccent,
                        middleText:
                            'I am Muhammad Ali Bukhari.I  want to learn flutter and web development and want to become a full stack developer',
                        confirm: TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text(
                              'OK',
                              style: TextStyle(color: Colors.black),
                            )),
                        cancel: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Cancel',
                              style: TextStyle(color: Colors.black),
                            )));
                  },
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                elevation: 8,
                color: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: ListTile(
                  title: const Text('Getx Bottom Bar Sheet'),
                  subtitle: const Text(
                    'Learning Gex Utility Bottom Bar Sheet ',
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: const Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  onTap: () {
                    Get.bottomSheet(
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        child: Column(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.light_mode),
                              title: const Text('Light Mode'),
                              onTap: () {
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            ListTile(
                              leading: const Icon(Icons.dark_mode),
                              title: const Text('Dark Mode'),
                              onTap: () {
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                          ],
                        ),
                      ),
                      backgroundColor: Colors.redAccent,
                    );
                  },
                )),
          ),
          ElevatedButton(
              onPressed: () {
                Get.toNamed('/getx_navigation', arguments: ['Ali', 'Bukhari']);
                // Get.to(const GetxNavigation());
                //Navigator.push(context,MaterialPageRoute(builder: (context) => const GetxNavigation()));
              },
              child: const Text('New Screen'))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('Muhammad Ali Bukhari',
              'Learning Flutter with passion and dedication',
              backgroundColor: Colors.redAccent,
              snackPosition: SnackPosition.TOP);
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
