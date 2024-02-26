part of '../view.dart';

class _ShoulderTestPage2 extends StatelessWidget {
  const _ShoulderTestPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: "ROM",
          color: AppColors.primary,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Flexion",
          onNoteChanged: (value) {
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(flexionNote: value);
          },
          onNumberChanged: (value) {
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(flexionNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Extension",
          onNoteChanged: (value) {
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(extensionNote: value);
          },
          onNumberChanged: (value) {
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(extensionNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- ABD",
          onNoteChanged: (value) {
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(abdNote: value);
          },
          onNumberChanged: (value) {
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(abdNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Add",
          onNoteChanged: (value) {
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(addNote: value);
          },
          onNumberChanged: (value) {
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(addNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- ER",
          onNoteChanged: (value) {
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(erNote: value);
          },
          onNumberChanged: (value) {
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(erNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- IR",
          onNoteChanged: (value) {
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(irNote: value);
          },
          onNumberChanged: (value) {
            context
                .read<NewPatientAltHandler>()
                .updateShoulderValues(irNum: value);
          },
        ),
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 20.height);
}
