import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the note details page
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => EditNoteView()));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffFFCC80),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text('Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 26)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text('Bulid your career with thareat samy',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.4), fontSize: 18)),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text('May21 ,2022',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
