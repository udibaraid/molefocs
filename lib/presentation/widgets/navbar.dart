import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Molefocs'),
            accountEmail: const Text('molefocs@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage('assets/images/home_image1.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('User Guide'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('About us'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text('Reference'),
            onTap: () => null,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Exit'),
            onTap: () {
              SystemNavigator.pop();
            },
          )
        ],
      ),
    );
  }
}
