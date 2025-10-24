import 'package:flutter/material.dart';


class DateRangeApp extends StatefulWidget {
  const DateRangeApp({super.key});

  @override
  State<DateRangeApp> createState() => _DateRangeAppState();
}

class _DateRangeAppState extends State<DateRangeApp> {
  DateTime fromDate = DateTime(2025, 9, 30);
  DateTime toDate = DateTime(2025, 9, 30);

  Future<void> selectFromDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: fromDate,
      firstDate: DateTime(2025, 1, 1),
      lastDate: DateTime(2025, 12, 31),
    );

    if (picked != null) {
      setState(() {
        fromDate = picked;
        // If start > end, update end
        if (toDate.isBefore(fromDate)) {
          toDate = fromDate;
        }
      });
    }
  }

  Future<void> selectToDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: toDate,
      firstDate: fromDate, // restrict older than start
      lastDate: DateTime(2025, 12, 31),
    );

    if (picked != null) {
      setState(() {
        toDate = picked;
      });
    }
  }

  String formatDate(DateTime date) =>
      "${date.day}/${date.month}/${date.year}";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: const Text("DatePicker Demo"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: selectFromDate,
                  icon: const Icon(Icons.calendar_today),
                  label: const Text("From"),
                ),
                const SizedBox(width: 15),
                Text(
                  formatDate(fromDate),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: selectToDate,
                  icon: const Icon(Icons.calendar_today),
                  label: const Text("To"),
                ),
                const SizedBox(width: 15),
                Text(
                  formatDate(toDate),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
