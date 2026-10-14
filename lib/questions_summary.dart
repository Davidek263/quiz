import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final data in summaryData)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ((data['question_index'] as int) + 1).toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Tvoja odpoveď: ${data['user_answer']}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Správna odpoveď: ${data['correct_answer']}',
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
      ],
    );
  }
}