import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:task_14/models/news_model.dart';

class NewsDatailsCardContent extends StatelessWidget {
  const NewsDatailsCardContent({super.key, required this.article});
  final Article article;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      transform: Matrix4.translationValues(0, -24, 0),
      padding: const EdgeInsets.fromLTRB(20, 28, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            article.title ?? 'No Title',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 14),

          Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: Colors.grey.shade300,
                child: const Icon(Icons.person, size: 16, color: Colors.white),
              ),
              const SizedBox(width: 8),
              Text(
                article.author ?? 'Unknown Author',
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(width: 6),
              const Text(
                '·',
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              const SizedBox(width: 6),
              Text(
                article.publishedAt.toString(),
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                  overflow: .ellipsis,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),
          const Divider(height: 1, color: Color(0xFFEEEEEE)),
          const SizedBox(height: 20),

          Text(
            article.content ?? article.description ?? 'No content available.',
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xFF444444),
              height: 1.7,
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    ).animate().slideY(
      begin: 1,
      end: 0,
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeOut,
    );
  }
}
