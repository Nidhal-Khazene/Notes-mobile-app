import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter tips",
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                "Build your career with Nidhal Khazene",
                style: TextStyle(
                  color: Colors.black.withValues(alpha: 0.5),
                  fontSize: 20,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash, color: Colors.black, size: 24),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Text(
              "July 04,2025",
              style: TextStyle(
                color: Colors.black.withValues(alpha: 0.5),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
