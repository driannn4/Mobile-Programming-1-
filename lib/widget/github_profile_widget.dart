import 'package:flutter/material.dart';

class GitHubProfileWidget extends StatelessWidget {
  final String username;
  final String profileUrl;

  const GitHubProfileWidget({
    super.key,
    required this.username,
    required this.profileUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://avatars.githubusercontent.com/u/109932312?v=4',
            ),
            radius: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'GitHub: $username',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.blue,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
