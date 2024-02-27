part of '../view.dart';

class _ShoulderTestPage2 extends StatelessWidget {
  const _ShoulderTestPage2({super.key});

  @override
  Widget build(BuildContext context) {
    final handler = context.read<NewPatientAltHandler>();

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
            handler.updateShoulderValues(flexionNote: value);
          },
          onNumberChanged: (value) {
            handler.updateShoulderValues(flexionNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Extension",
          onNoteChanged: (value) {
            handler.updateShoulderValues(extensionNote: value);
          },
          onNumberChanged: (value) {
            handler.updateShoulderValues(extensionNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- ABD",
          onNoteChanged: (value) {
            handler.updateShoulderValues(abdNote: value);
          },
          onNumberChanged: (value) {
            handler.updateShoulderValues(abdNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- Add",
          onNoteChanged: (value) {
            handler.updateShoulderValues(addNote: value);
          },
          onNumberChanged: (value) {
            handler.updateShoulderValues(addNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- ER",
          onNoteChanged: (value) {
            handler.updateShoulderValues(erNote: value);
          },
          onNumberChanged: (value) {
            handler.updateShoulderValues(erNum: value);
          },
        ),
        _spacer(),
        AppDoubleFormField(
          label: "- IR",
          onNoteChanged: (value) {
            handler.updateShoulderValues(irNote: value);
          },
          onNumberChanged: (value) {
            handler.updateShoulderValues(irNum: value);
          },
        ),
      ],
    );
  }

  Widget _spacer() => SizedBox(height: 20.height);
}
