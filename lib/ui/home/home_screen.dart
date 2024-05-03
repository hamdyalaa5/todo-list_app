import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_application/ui/home/add_task.dart';
import 'package:todo_application/ui/home/settings/settings_tab.dart';
import 'package:todo_application/ui/home/task_list/tasks_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static  const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do list')
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape:StadiumBorder(
          side: BorderSide(
            color: Colors.white,
              width: 4,
          )
        ),
        onPressed: (){
          showAddBottomSheet();
        },
        child: Icon(Icons.add)
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          currentIndex:selectedIndexTab,
          onTap:(index){
            selectedIndexTab=index;
            setState(() {
              selectedIndexTab=index;
            });
          },

          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/icon_list.png')),
              label:'',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/icon_settings.png')),
              label:'',
            ),
          ],
        ),
      ),
      body: tabs[selectedIndexTab],

    );
  }
  var tabs = [
    TasksTab(),SettingsTab()
  ];
  void showAddBottomSheet(){
    showModalBottomSheet(context: context, builder: (buildContext){
     return AddTask();
    });
  }
}
