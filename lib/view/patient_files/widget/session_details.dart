import 'package:al3yadah_app/widgets/app/app_data_show_card.dart';
import 'package:flutter/material.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:intl/intl.dart';

class SessionDetails extends StatelessWidget {
  final Patient patient;

  const SessionDetails({
    Key? key,
    required this.patient,
  });

  List<Widget> _buildSessionDetails(Map<String, dynamic> sessionJson) {
    List<Widget> detailWidgets = [];
    sessionJson.forEach((key, value) {
      if (value is Map) {
        // If value is a Map, iterate over its entries for nested details
        value.forEach((nestedKey, nestedValue) {
          String formattedKey = _formatKey(nestedKey);
          detailWidgets.add(AppDataShowCard(
              title: formattedKey, value: _formatValue(nestedValue)));
        });
      } else {
        // For direct, non-Map values
        String formattedKey = _formatKey(key);
        detailWidgets.add(
            AppDataShowCard(title: formattedKey, value: _formatValue(value)));
      }
    });
    return detailWidgets;
  }

  String _formatKey(String key) {
    // Split the key into separate words based on capitalization
    List<String> words = [];
    String currentWord = '';
    for (int i = 0; i < key.length; i++) {
      if (i > 0 && key[i].toUpperCase() == key[i]) {
        words.add(currentWord);
        currentWord = '';
      }
      currentWord += key[i];
    }
    words.add(currentWord);

    // Remove "note" or "number" and capitalize the first letter of each remaining word
    String formattedKey = '';
    for (String word in words) {
      if (word.toLowerCase() != 'note' && word.toLowerCase() != 'number') {
        formattedKey +=
            '${word.substring(0, 1).toUpperCase()}${word.substring(1)} ';
      }
    }
    return formattedKey.trim(); // Remove trailing space
  }

  String _formatValue(dynamic value) {
    if (value is String && _isDate(value)) {
      // If it's a date, parse and format it
      return _formatDate(value);
    }
    // Return the value as is for other types
    return value.toString();
  }

  bool _isDate(String value) {
    // Check if the value matches the date format from Firebase
    return RegExp(
            r'^[A-Za-z]+ \d{1,2}, \d{4} at \d{1,2}:\d{1,2}:\d{1,2} [A-Za-z]+$')
        .hasMatch(value);
  }

  String _formatDate(String value) {
    // Extract the date part from the string
    String dateString = value.split(' at ')[0];
    // Try parsing the date using DateFormat
    try {
      return DateFormat("MMMM d, yyyy")
          .format(DateFormat("MMMM d, yyyy").parse(dateString));
    } catch (e) {
      // Return the original value if parsing failed
      return value;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Convert the specific session's details into JSON for dynamic display
    Map<String, dynamic> sessionJson = patient.session.toJson();

    return Scaffold(
      appBar: AppAppBar(title: patient.name),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ..._buildSessionDetails(sessionJson),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
