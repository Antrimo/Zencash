import 'package:flutter/material.dart';
List<ChatMessage> messages = [];
List<String> expes = [
    'Coffee', 'Food', 'Lunch', 'payback','coffee', 'food', 'lunch',
  ];

  List<String> inco = [
    'Stipend', 'Salary', 'return', 'stipend', 'salary',
  ];

  Widget transbox(String thing)
  {
    List tran = thing.split(' ');
    String moni=tran.length>1?tran[1]:'Nil';
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(thing),
        const SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('27th April 2024'),
            Text('Rs. $moni'),
          ],
        ),
        const SizedBox(height: 10,),
        Container(
          color: Colors.blue.shade200,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Type '),
                    Text('Category'),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(expes.contains(tran[0])?inco.contains(tran[0])?'Income':'Expense':'Unknown'),
                    Text(tran[0]),
                  ],
                )
              ],
            ),
          ),
        ),
    
        const SizedBox(height: 10,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 32,
              child: TextButton.icon(onPressed: (){}, 
                style: ButtonStyle(
                  alignment: Alignment.topCenter,
                  iconSize: const MaterialStatePropertyAll(16),
                  backgroundColor: MaterialStateColor.resolveWith(getColor),
                ),
                icon: const Icon(Icons.close), label: Text(tran[0],
                  style: const TextStyle(
                    fontSize: 12
                  ),
                )),
            ),
    
            const Icon(Icons.edit_square, 
              size: 16,
            ),
          ],
        )
      ],
    );
  }

  Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.white;
    }




class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});


}