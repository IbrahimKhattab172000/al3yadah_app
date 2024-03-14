// ignore_for_file: library_private_types_in_public_api

import 'package:al3yadah_app/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:al3yadah_app/core/helpers/app_colors.dart';
import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/repository/patient_main.dart';
import 'package:al3yadah_app/view/home/widgets/patient_card.dart';
import 'package:al3yadah_app/widgets/app_app_bar.dart';
import 'package:al3yadah_app/widgets/app_text_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final PatientMainRepository _repository = PatientMainRepository();
  late Future<List<Patient>> _searchResultsFuture = Future.value([]);
  List<Patient> searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        elevation: 0,
        title: 'Search by patient name',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            AppTextField(
              fillColor: AppColors.txtFieldlableBg,
              hint: "search",
              hintColor: AppColors.txtFieldlable2,
              leading: const Icon(
                Icons.search,
                color: AppColors.txtFieldlable2,
              ),
              onChanged: (value) {
                setState(() {
                  _searchResultsFuture = _repository.searchPatientByName(value);
                });
              },
            ),
            SizedBox(height: 24.height),
            Expanded(
              child: FutureBuilder<List<Patient>>(
                future: _searchResultsFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: LinearProgressIndicator(
                        color: AppColors.primary,
                        backgroundColor: AppColors.lightGray,
                        minHeight: 10,
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  } else if (snapshot.data!.isEmpty) {
                    return Center(
                      child: AppText(title: "No user found"),
                    );
                  } else {
                    searchResults = snapshot.data ?? [];
                    return ListView.builder(
                      itemCount: searchResults.length,
                      itemBuilder: (context, index) {
                        return PatientCard(patient: searchResults[index]);
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
