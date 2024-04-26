import 'package:flutter/material.dart';
import 'chatreply.dart';


class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  final TextEditingController _chatter = TextEditingController();
  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Add Transaction'),
      ),

      body: Stack(
        children: <Widget>[
          ListView.builder(
  itemCount: messages.length,
  shrinkWrap: true,
  padding: const EdgeInsets.only(top: 10,bottom: 10),
  physics: const AlwaysScrollableScrollPhysics(),
  itemBuilder: (context, index){
    return Container(
      padding: const EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
      child: Align(
        alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: (messages[index].messageType  == "receiver"?Colors.blue.shade100:const Color.fromRGBO(85, 81, 255, 1)),
          ),
          padding: const EdgeInsets.all(16),
          child: (messages[index].messageType == "receiver"?
            transbox(messages[index].messageContent)
            :Text(messages[index].messageContent, style: const TextStyle(fontSize: 15, color: Colors.white),)),
        ),
      ),
    );
  },
),
        ],
      ),
      bottomNavigationBar: BottomAppBar(child: Row(
        children: <Widget>[
          Expanded(
                    child: TextField(
                      controller: _chatter,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Write Transaction...",
                        hintStyle: TextStyle(color: Colors.black54),
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
                      ),
                    ),
                  ),
          IconButton(onPressed: (){
            setState(() {
              messages.add(ChatMessage(messageContent: _chatter.text, messageType: 'sender'));
              messages.add(ChatMessage(messageContent: _chatter.text, messageType: 'receiver'));
              _chatter.text='';
            });
          }, icon: const Icon(Icons.send, color: Colors.blue,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt, ))
        ],
      ),
      ),
    );
  }
}