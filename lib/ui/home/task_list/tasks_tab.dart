
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_application/ui/home/my_theme.dart';
import 'package:todo_application/ui/home/task_list/task_item.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          /* child: Column(
          children: [
            CalendarTimeline(
              initialDate: DateTime.now(),
              firstDate: DateTime.now().subtract(Duration(days:365)) ,
              lastDate: DateTime.now().add(Duration(days:365)) ,
              onDateSelected:(date)=> print(date) ,
              leftMargin: 20 ,
              monthColor: Colors.black,
              dayColor: Colors.black,
              activeDayColor:Theme.of(context).primaryColor ,
              activeBackgroundDayColor: Colors.white,
              dotsColor: Theme.of(context).primaryColor  ,
              selectableDayPredicate: (date)=> true ,
                locale:'en_ISO',
            ),
            Expanded(
              child: ListView.builder(itemBuilder: (_,index){
                return TaskItem();
              },itemCount: 10,),
            )
          ],
        ),*/
          Expanded(
            child: ListView.builder(itemBuilder:(_,index){
              return TaskItem();
            },itemCount: 10,),
          )
        ],
      )

    );


  }
}
