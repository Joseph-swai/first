import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/homeinterface/admin_page.dart';
import 'package:project1/homeinterface/setting.dart';
import 'package:project1/tuitionpage.dart';
class MyDrawer
 extends StatelessWidget {
  const MyDrawer  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
    //  backgroundColor: Theme.of(context).colorScheme.secondary,
    child: Column(
      children: [
//app log
        
            Padding(
              padding: EdgeInsets.symmetric( vertical: 40.0),
                child: Icon(Icons.school, size: 72,),
            ),
              Divider(
                indent: 25,
                  endIndent: 25,
                    color: Theme.of(context).colorScheme.primary
                ),
            const SizedBox(height: 5,),

        ListTile(
         title: Text('H O M E'),
          leading: Icon(Icons.home, color: Color.fromARGB(255, 160, 157, 157),),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        const SizedBox(height:5),

        const ListTile(
         // title: Text('R E S U L T '),
          leading: Icon(Icons.school),
          // onTap:(){
          //   Navigator.push(context,
          //   MaterialPageRoute(builder: (context)=> ResultSeraching()),
          //   )

          // }
        ),
        const SizedBox(height: 5,),

          ListTile(
           title:const Text('HOLLYDAY PACKAGES'),
            leading: Icon(Icons.holiday_village_rounded),
            onTap:(){}
          ),
           const SizedBox(height: 5),

           ListTile(
            title:Text('T U I T I O N'),
            leading:Icon(Icons.chrome_reader_mode_outlined),
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> TuitionPage())
              );
            }
           ),

           ListTile(
           title: Text('A D M I N'),
            leading: Icon(Icons.admin_panel_settings),
            onTap:(){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=> AdminPage())
              );
            }
           ),
        const SizedBox(height: 5),

        ListTile(
          title: const Text('S E T T I N G'),
          leading: Icon(Icons.settings_accessibility),
         onTap: (){
          Navigator.push(context, 
          MaterialPageRoute(builder:(context)=> SettingPage()),
          );

         },

        ),

      ],
    ),

    );
  
    
  }
}
    