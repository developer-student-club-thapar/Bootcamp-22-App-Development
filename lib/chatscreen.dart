import 'package:flutter/material.dart';

class Message {
  String sender;
  String lastTime;
  String lastMessage;
  Message(
      {required this.lastMessage,
      required this.lastTime,
      required this.sender});
}

List<Message> messages = [
  Message(
      lastMessage: 'Hey there can you please send notes, need them quick',
      lastTime: '18:06',
      sender: 'James'),
  Message(
      lastMessage: 'Hey lets go out tommorrow shall we?',
      lastTime: '17:02',
      sender: 'Charles'),
  Message(
      lastMessage: 'Hey can you return my money please',
      lastTime: '14:32',
      sender: 'William'),
  Message(
      lastMessage: 'Hey there can you please send notes',
      lastTime: '18:06',
      sender: 'James'),
  Message(
      lastMessage: 'Hey lets go out tommorrow shall we?',
      lastTime: '17:02',
      sender: 'Charles'),
  Message(
      lastMessage: 'Hey can you return my money please',
      lastTime: '14:32',
      sender: 'William'),
  Message(
      lastMessage: 'Hey there can you please send notes',
      lastTime: '18:06',
      sender: 'James'),
  Message(
      lastMessage: 'Hey lets go out tommorrow shall we?',
      lastTime: '17:02',
      sender: 'Charles'),
  Message(
      lastMessage: 'Hey can you return my money please',
      lastTime: '14:32',
      sender: 'William'),
  Message(
      lastMessage: 'Hey can you return my money please',
      lastTime: '14:32',
      sender: 'William'),
  Message(
      lastMessage: 'Hey can you return my money please',
      lastTime: '14:32',
      sender: 'William'),
];

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, idx) {
          return ChatTile(message: messages[idx]);
        });
  }
}

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key, required this.message}) : super(key: key);
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 17),
      width: double.infinity,
      height: 85.6,
      // color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/profile_pic.png'),
            radius: 25,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 17, left: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        message.sender,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        message.lastTime,
                        style: TextStyle(
                            color: Color(0xff8097A1),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 6, right: 8),
                    child: Text(
                      message.lastMessage,
                      style: TextStyle(
                          color: Color(0xff8097A1),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
