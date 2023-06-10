import 'package:exercise/user.dart';
import 'package:flutter/material.dart';

Widget buildItem(User user) {
  return Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey[200]!,
      ),
    ),
    child: Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: user.avatar != null
                ? Image.network(
                    user.avatar!,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Text(
                          'User ${user.id}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      );
                    },
                  )
                : Center(
                    child: Text(
                      'User ${user.id}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          user.name ?? 'User ${user.id}',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}
