import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/theme/themeprovider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SETTINGS',
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
       // color:Colors.white,
          borderRadius: BorderRadius.circular(12.0),
       
        ),
        margin: const EdgeInsets.only(left: 25, right: 25, top: 10),
        padding: const EdgeInsets.symmetric(vertical: 10), // Add padding as needed
        child: Column(
          mainAxisSize: MainAxisSize.min, // This line makes the container size to its content
          children: [
            ListTile(
              title: const Text('Dark Mode', style: TextStyle(fontWeight: FontWeight.bold),),
              trailing: Consumer<ThemeProvider>(
                builder: (context, themeProvider, child) {
                  return CupertinoSwitch(
                    value: themeProvider.isDarkMode,
                    onChanged: (value) {
                      themeProvider.toggle();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
