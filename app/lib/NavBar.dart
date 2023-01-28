import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // ignore: todo
    // TODO: implement build
    return Drawer(

      // Add a ListView to the drawer. This ensures the user can scroll and also a background colour to fit the theme
        backgroundColor: Colors.black,
        child: ListView(padding: EdgeInsets.zero, children: [
          
          // add the list tile widget to the list the contents of the menu
          ListTile(

            // add the content padding to the list tile
            contentPadding: EdgeInsets.all(30),

            // add the leading icon to the list tile, this makes the icon appear on the left side of the list tile before the text
            leading: Icon(Icons.home, color: Colors.white, size: 50),

            // add the title to the list tile, this makes the text appear on the right side of the list tile after the icon
            title: Text('Home',
                style: TextStyle(color: Colors.white), textScaleFactor: 1),

            // add the onTap function to the list tile, this makes the list tile clickable
            onTap: () {

              // close the drawer
              Navigator.pop(context);
            },

            // add the hover color to the list tile, this makes the list tile change color when hovered over
            hoverColor: Color.fromARGB(82, 13, 72, 161),
          ),

          // Make multiple list tiles to add more items on the menu
          ListTile(
            contentPadding: EdgeInsets.all(30),
            leading: Icon(Icons.person, color: Colors.white, size: 50),
            title: Text('Profile',
                style: TextStyle(color: Colors.white), textScaleFactor: 1),
            onTap: () {
              Navigator.pop(context);
            },
            hoverColor: Color.fromARGB(82, 13, 72, 161),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(30),
            leading: Icon(Icons.fitness_center, color: Colors.white, size: 50),
            title: Text('Workout',
                style: TextStyle(color: Colors.white), textScaleFactor: 1),
            onTap: () {
              Navigator.pop(context);
            },
            hoverColor: Color.fromARGB(82, 13, 72, 161),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(30),
            leading: Icon(Icons.food_bank, color: Colors.white, size: 50),
            title: Text('Food',
                style: TextStyle(color: Colors.white), textScaleFactor: 1),
            onTap: () {
              Navigator.pop(context);
            },
            hoverColor: Color.fromARGB(82, 13, 72, 161),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(30),
            leading: Icon(Icons.settings, color: Colors.white, size: 50),
            title: Text('Settings',
                style: TextStyle(color: Colors.white), textScaleFactor: 1),
            onTap: () {
              Navigator.pop(context);
            },
            hoverColor: Color.fromARGB(82, 13, 72, 161),
          ),

          // add a divider to the list view to separate the list tiles
          Divider(
            color: Colors.white,
            thickness: 1,
          ),

          // add a list tile to the list view to add a support center
          ListTile(
            contentPadding: EdgeInsets.only(top: 8, left: 20),
            leading: Icon(Icons.help, color: Colors.white, size: 20),

            // add an action to the list tile to open a dialog box when clicked
            onTap: () {

              // add the dialog box to the context
              showDialog(context: context, builder: (context) => AlertDialog(
                title: Text('Support Center'),
                content: Text('For any support, please contact us at: b.ikudehinb@alustudent.com'),

                // add an action to the dialog box to close the dialog box when clicked
                actions: [
                  TextButton(onPressed: () => Navigator.pop(context), child: Text('Close', style: TextStyle(color: Colors.black),))
                ],
              ));
            },
          ),
        ]));
  }
}
