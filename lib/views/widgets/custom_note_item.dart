import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        ListTile(
          title: const Text(
            'Hello',
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontFamily: 'Poppins'),
          ),
          subtitle: Text(
            'This is your notes',
            style: TextStyle(
                color: Colors.black.withOpacity(.6), fontSize: 18, fontFamily: 'Poppins'),
          ),
          trailing: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.delete,
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text(
            'August 30',
            style: TextStyle(
              color: Colors.black.withOpacity(.6),
            ),
          ),
        ),
      ]),
    );
  }
}


