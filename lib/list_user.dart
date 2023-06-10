import 'package:exercise/user.dart';
import 'package:flutter/material.dart';
import 'build_item.dart';

class ListUser extends StatefulWidget {
  const ListUser({super.key});

  @override
  State<ListUser> createState() => _ListUserState();
}

class _ListUserState extends State<ListUser> {
  @override
  Widget build(BuildContext context) {
    return buildListview();
  }

  Widget buildListview() {
    return ListView.builder(
      itemBuilder: (context, index) {
        final user = users[index];
        return buildItem(user);
      },
      itemCount: users.length,
    );
  }
}
