import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

// class Item {
//   String itemName;
//   String itemDec;
//   double itemPrice;

//   Item({ this.itemName,  this.itemDec,  this.itemPrice});
// }

// static List<Item> getItem() {
//   return <Item>[
//     Item(
//       itemName: 'Wooden Sword',
//       itemDec: 'Easy to make',
//       itemPrice: 3
//     )
//   ];
// }

class _MyWidgetState extends State<MyWidget> {
  // String groupName = "";
  // bool Checked1 = false;
  // bool Checked2 = false;

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    TextEditingController _controller1 = TextEditingController();
    TextEditingController _controller2 = TextEditingController();
    

    return Scaffold(
      appBar: AppBar(
        title: Text('Firstpages'),
      ),
      body: Form(
          key: _formkey,
          child: Column(
            children: [
              // ___________________________________________Text_____________________________________________
              Text('TextFormField 1'),
              TextFormField(
                controller: _controller1,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Text Field is empity";
                  }
                  return null;
                },
              ),
              Text('TextFormField 2'),
              TextFormField(
                controller: _controller2,
                validator: (value1) {
                  if (value1!.isEmpty) {
                    return "Text Field is empity";
                  }
                  return null;
                },
              ),

              // // ___________________________________________Radio___________________________________________
              // Text('RadioListTile'),
              // RadioListTile(
              //   title: Text('Item #1'),
              //   value: 'Item1',
              //   groupValue: groupName,
              //   onChanged: ((value) {
              //     setState(() {
              //       groupName = value!;
              //     });
              //   }),
              // ),

              // // ___________________________________________Checkbox_________________________________________
              // Text('CheckboxListTile #1'),
              // CheckboxListTile(
              //   title: Text('Item 1'),
              //   value: Checked1,
              //   onChanged: ((value) {
              //     setState(() {
              //       Checked1 = value!;
              //       });
              //     }
              //   )
              // ),

              // ___________________________________________Button___________________________________________
              ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      print(_controller1.text);
                      print(_controller2.text);
                    }

                  },
                  child: Text("Submit"))
            ],
          )),
    );
  }
}
