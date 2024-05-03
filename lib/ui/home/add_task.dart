import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

   class AddTask extends StatefulWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Add New Task',
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,),

          TextFormField(
            decoration: InputDecoration(
              labelText: 'Title',
            ),
          ),
      TextFormField(
        minLines: 4,
        maxLines: 4,
    decoration: InputDecoration(
    labelText: 'description',
    ),
      ),
          SizedBox(height: 12,),
          Text(
              'Select Data',
              style:Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height:8,),
          InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('12/2/22023',
                style:Theme.of(context).textTheme.headline6?.copyWith(
                  color: Theme.of(context).primaryColor,
                )
              ),
            ),
            onTap: (){ShowTaskDatePicker(context);},
          ),
          ElevatedButton(onPressed:(){}, child: Text('Submit')),
      ],
      ),
    );
  }

  void ShowTaskDatePicker(context){
  showDatePicker(context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days:365)));
  }
}
