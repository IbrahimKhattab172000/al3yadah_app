part of '../view.dart';

class _AnkleTestPage1 extends StatelessWidget {
  const _AnkleTestPage1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final handler = context.read<PatientMainHandler>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "History",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        AppTextField(
          hint: "note",
          validator: Validator.empty,
          onChanged: (value) => handler.updateAnkleValues(historyNote: value),
        ),
        SizedBox(height: 24.height),
        AppText(
          title: "Palpation",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        AppTextField(
          hint: "note",
          validator: Validator.empty,
          onChanged: (value) => handler.updateAnkleValues(palpationNote: value),
        ),
        SizedBox(height: 24.height),
        AppText(
          title: "ROM",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Dorsi flexion",
          onNoteChanged: (value) {
            handler.updateAnkleValues(dorsiFlexionNote: value);
          },
          onNumberChanged: (value) {
            handler.updateAnkleValues(dorsiFlexionNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Planter flexion",
          onNoteChanged: (value) {
            handler.updateAnkleValues(planterFlexionNote: value);
          },
          onNumberChanged: (value) {
            handler.updateAnkleValues(planterFlexionNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Inversion",
          onNoteChanged: (value) {
            handler.updateAnkleValues(inversionFlexionNote: value);
          },
          onNumberChanged: (value) {
            handler.updateAnkleValues(inversionFlexionNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Eversion",
          onNoteChanged: (value) {
            handler.updateAnkleValues(eversionFlexionNote: value);
          },
          onNumberChanged: (value) {
            handler.updateAnkleValues(eversionFlexionNum: value);
          },
        ),
        _spacer(),
        AppText(
          title: "Muscle Test",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 12.height),
        AppTextField(
          hint: "note",
          onChanged: (value) =>
              handler.updateAnkleValues(muscleTestNote: value),
          validator: Validator.empty,
        ),
      ],
    );
  }
}

Widget _spacer() => SizedBox(height: 20.height);
