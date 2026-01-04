import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatMessage {
  final String text;
  final bool isMe;

  ChatMessage({required this.text, required this.isMe});
}

class ChatDetailsScreen extends StatefulWidget {
  final int index;
  final String name;

  const ChatDetailsScreen(this.index, this.name, {super.key});

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  final TextEditingController _controller = TextEditingController();

  String message = '';

  List<ChatMessage> messages = [
    ChatMessage(
      text:
          "Você pode me ajudar com algo na minha landing page?\n\nObrigado 🙏🏻",
      isMe: false,
    ),
    ChatMessage(text: "Espera, já vou te enviar o link do vídeo!", isMe: true),
    ChatMessage(text: "Muito obrigado!! ♥️", isMe: false),
    ChatMessage(text: "O prazer é meu 👌", isMe: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          Expanded(child: _buildMessages()),
          _buildInput(),
        ],
      ),
    );
  }

  // ================= APP BAR =================

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(CupertinoIcons.chevron_back, color: Colors.black),
      ),
      title: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade200,
            child: Image.asset("assets/${widget.index}.png"),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Online",
                style: TextStyle(color: Colors.green, fontSize: 14),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Icon(
          CupertinoIcons.video_camera,
          color: Colors.grey.shade600,
          size: 40,
        ),
        const SizedBox(width: 10),
        Icon(CupertinoIcons.phone, color: Colors.grey.shade600, size: 30),
        const SizedBox(width: 20),
      ],
    );
  }

  // ================= MESSAGES =================

  Widget _buildMessages() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10),
      itemCount: messages.length,
      itemBuilder: (context, i) {
        final msg = messages[i];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
          child: msg.isMe ? _myMessage(msg.text) : _otherMessage(msg.text),
        );
      },
    );
  }

  Widget _myMessage(String text) {
    return Align(
      alignment: Alignment.topRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              text,
              textAlign: TextAlign.end,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            "08:23",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _otherMessage(String text) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.7,
            ),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(text),
          ),
          const SizedBox(height: 4),
          const Text(
            "08:21",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }

  // ================= INPUT =================

  Widget _buildInput() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, kToolbarHeight),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            const Icon(CupertinoIcons.paperclip),
            const SizedBox(width: 20),
            Expanded(
              child: TextField(
                controller: _controller,
                onChanged: (value) => setState(() => message = value),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Escreva algo...',
                ),
              ),
            ),
            const SizedBox(width: 20),
            message.isEmpty ? _micButton() : _sendButton(),
          ],
        ),
      ),
    );
  }

  Widget _micButton() {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
      child: const Icon(CupertinoIcons.mic, color: Colors.white),
    );
  }

  Widget _sendButton() {
    return GestureDetector(
      onTap: _sendMessage,
      child: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: const Icon(CupertinoIcons.paperplane, color: Colors.white),
      ),
    );
  }

  void _sendMessage() {
    if (message.trim().isEmpty) return;

    setState(() {
      messages.add(ChatMessage(text: message, isMe: true));
      message = '';
      _controller.clear();
    });
  }
}
