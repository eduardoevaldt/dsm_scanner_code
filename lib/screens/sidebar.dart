import 'package:dsmscannercode/constants.dart';
import 'package:dsmscannercode/screens/home.dart';
import 'package:dsmscannercode/screens/scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: bgColor,
      child: ListView(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: bgColor,
            ),
            child: Image.asset("assets/logo.png"),
          ),
          Divider(
            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: darkTextColor,
          ),
          ListTile(
            leading: Icon(
              Icons.home_outlined,
              color: darkTextColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: darkTextColor,
                fontSize: 18,
              ),
            ),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(
              Icons.search,
              color: darkTextColor,
            ),
            title: Text(
              'Scanear',
              style: TextStyle(
                color: darkTextColor,
                fontSize: 18,
              ),
            ),
            onTap: () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScanScreen(),
                ),
              ),
            },
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: darkTextColor,
            ),
            title: Text(
              'Sair',
              style: TextStyle(
                color: darkTextColor,
                fontSize: 18,
              ),
            ),
            onTap: () => {
              SystemNavigator.pop(),
            },
          ),
          Divider(
            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: darkTextColor,
          ),
        ],
      ),
    );
  }
}
