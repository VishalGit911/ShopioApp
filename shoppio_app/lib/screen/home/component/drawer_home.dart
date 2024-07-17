import 'package:flutter/material.dart';
import 'package:shoppio_app/route/project_route.dart';

class DrawerHome extends StatefulWidget {
  DrawerHome({
    super.key,
  });

  @override
  State<DrawerHome> createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.blue.shade800,
                  borderRadius: BorderRadius.circular(15)),
              accountName: Text("Vishal"),
              accountEmail: Text("vishalgovindiya123@gmail.com")),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: Text("Home"),
            trailing: Icon(
              Icons.home,
              color: Colors.blue.shade800,
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, AppRoute.listproduct);
            },
            title: Text("Product"),
            trailing: Icon(
              Icons.shopping_cart,
              color: Colors.blue.shade800,
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, AppRoute.listcatagory);
            },
            title: Text("Category"),
            trailing: Icon(
              Icons.category,
              color: Colors.blue.shade800,
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoute.signin,
                (route) => false,
              );
            },
            title: Text("Log Out"),
            trailing: Icon(
              Icons.logout,
              color: Colors.blue.shade800,
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
