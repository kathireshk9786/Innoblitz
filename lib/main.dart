import 'package:flutter/material.dart';
import 'gridview_screen.dart';
import 'instagram_clone_screen.dart';
import 'listview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Multi-Feature App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/listview': (context) => const ListViewScreen(),
        '/gridview': (context) => const GridViewScreen(),
        '/instagram': (context) => InstagramCloneScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feature Screens')),
      body: ListView(
        children: [
          ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: () => Navigator.pushNamed(context, '/listview'),
            title: const Text(
              'ListView Screen',
              style: TextStyle(
                fontSize: 18, // Text size
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: const Icon(
              Icons.list,
              color: Colors.blueAccent,
              size: 30,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ),
          ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: () => Navigator.pushNamed(context, '/gridview'),
            title: const Text(
              'GridView Screen',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: const Icon(
              Icons.list,
              color: Colors.blueAccent,
              size: 30,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ),
          ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: () => Navigator.pushNamed(context, '/instagram'),
            title: const Text(
              'Instagram Clone',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            leading: const Icon(
              Icons.list,
              color: Colors.blueAccent,
              size: 30,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
