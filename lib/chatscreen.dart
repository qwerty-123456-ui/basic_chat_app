import 'package:flutter/material.dart';
import 'chat_message.dart';

class ChatScreen extends StatefulWidget{
  @override
  State createState() {
    // TODO: implement createState
    return ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen>{

  final List<ChatMessage> _messages = <ChatMessage>[];

  final TextEditingController _textController = TextEditingController();

  void _handleSubmitted(String text){
    _textController.clear();
    ChatMessage message = new ChatMessage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposerWidget(){
      return IconTheme(
          data: IconThemeData(
            color: Colors.blue,
          ),
          child:Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Flexible(child: TextField(
                  decoration: InputDecoration.collapsed(hintText: "Send a message"),
                  controller: _textController,
                  onSubmitted: _handleSubmitted,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 4.0),
                child: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text),
                ),
              ),
            ],
          )
         ),
      );
  }

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Flexible(child: ListView.builder(
          padding: EdgeInsets.all(10.0),
          reverse: true,
          itemBuilder: (_, int index) => _messages[index],
          itemCount: _messages.length,
        ),
        ),
        Divider(
          height: 10.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}

