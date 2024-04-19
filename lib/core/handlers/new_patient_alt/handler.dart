import 'package:al3yadah_app/core/models/ankle.dart';
import 'package:al3yadah_app/core/models/cervical.dart';
import 'package:al3yadah_app/core/models/elbow.dart';
import 'package:al3yadah_app/core/models/knee.dart';
import 'package:al3yadah_app/core/models/lumbar.dart';
import 'package:al3yadah_app/core/models/patient.dart';
import 'package:al3yadah_app/core/models/patient_general.dart';
import 'package:al3yadah_app/core/models/sessions.dart';
import 'package:al3yadah_app/core/models/shoulder.dart';
import 'package:al3yadah_app/core/repository/patient_main.dart';
import 'package:al3yadah_app/core/route_utils/route_utils.dart';
import 'package:al3yadah_app/view/success/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class PatientMainHandler extends Cubit<PatientMainState> {
  final PatientMainRepository patientMainRepository;

  PatientMainHandler({
    required this.patientMainRepository,
  }) : super(PatientMainStateInitial());

//Initial-----------------------------------------------------------
  initial({
    required bool addingSession,
    PatientGeneral? patientGeneral,
    String? presentedArea,
  }) {
    // if (!addingSession) {
    emit(
      PatientMainStateGeneralInfo(
        patientGeneral: PatientGeneral(
          name: "name",
          age: 1,
          occupation: "occupation",
          medicalRef: "medicalRef",
          weight: 1,
          chiefComplaint: "chiefComplaint",
          course: "course",
          presentedArea: "presentedArea",
        ),
      ),
    );
    // } else {
    //   generateStateAccordingToTheSelectedPresentedAreaForAddingSessions(
    //     currentStep: 1,
    //     patientGeneral: patientGeneral!,
    //     presentedArea: presentedArea!,
    //   );
    // }
  }

// TextEditingController nameController = TextEditingController();
//   TextEditingController ageController = TextEditingController();
//   TextEditingController occupationController = TextEditingController();
//   TextEditingController medicalRefController = TextEditingController();
//   TextEditingController weightController = TextEditingController();
//   TextEditingController chiefComplaintController = TextEditingController();
//   TextEditingController courseController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

// List of areas
  List<String> areas = [
    'Shoulder',
    'Knee',
    'Ankle',
    'Cervical',
    'Lumbar',
    'Elbow'
  ];
  // String? presentedArea;

//Shoulder --------------------------------------------------
  void nextStepShoulder() {
    if ((state as PatientMainStateShoulder).currentStep < 5) {
      emit((state as PatientMainStateShoulder).copyWith(
          currentStep: (state as PatientMainStateShoulder).currentStep + 1));
      print((state as PatientMainStateShoulder).currentStep);
    } else {
      // (state as PatientMainStateShoulder).addingSession
      //     ? addSessionToPatient(state: state)
      //     :
      submitNewPatient(state: state);
      RouteUtils.navigateTo(SuccessView());
    }
  }

  void previousStepShoulder() {
    if (!(state as PatientMainStateShoulder).isFirst) {
      emit((state as PatientMainStateShoulder).copyWith(
          currentStep: (state as PatientMainStateShoulder).currentStep - 1));
      print((state as PatientMainStateShoulder).currentStep);
    } else {
      print((state as PatientMainStateShoulder).currentStep);

      emit(PatientMainStateGeneralInfo(
          patientGeneral: (state as PatientMainStateShoulder).patientGeneral));
    }
  }

  updateShoulderValues({
    bool? cervicalFree,
    String? history,
    String? suspectDiagnose,
    String? place,
    String? vas,
    String? palpation,
    String? flexionNote,
    int? flexionNum,
    String? extensionNote,
    int? extensionNum,
    String? abdNote,
    int? abdNum,
    String? addNote,
    int? addNum,
    String? erNote,
    int? erNum,
    String? irNote,
    int? irNum,
    String? hawkinsTest,
    String? neerTest,
    String? posterior,
    String? impingementNote,
    String? apprehension,
    String? relocation,
    String? instabilityNote,
    String? bellyOff,
    String? irls,
    String? erls,
    String? rcTearNote,
    String? scapularAssistanceTest,
    String? scapularRetractionTest,
    String? scapularStabilityNote,
    String? acromioTest,
    String? obrienTest,
    String? passiveTest,
    String? modifiedTest,
    String? obrienTestNote,
    String? treatmentNote,
  }) {
    final currentShoulder =
        (state as PatientMainStateShoulder).shoulder ?? Shoulder();

    emit(
      (state as PatientMainStateShoulder).copyWith(
        shoulder: Shoulder(
          cervicalFree: cervicalFree ?? currentShoulder.cervicalFree,
          history: history ?? currentShoulder.history,
          suspectDiagnose: suspectDiagnose ?? currentShoulder.suspectDiagnose,
          place: place ?? currentShoulder.place,
          vas: vas ?? currentShoulder.vas,
          palpation: palpation ?? currentShoulder.palpation,
          flexionNote: flexionNote ?? currentShoulder.flexionNote,
          flexionNum: flexionNum ?? currentShoulder.flexionNum,
          extensionNote: extensionNote ?? currentShoulder.extensionNote,
          extensionNum: extensionNum ?? currentShoulder.extensionNum,
          abdNote: abdNote ?? currentShoulder.abdNote,
          abdNum: abdNum ?? currentShoulder.abdNum,
          addNote: addNote ?? currentShoulder.addNote,
          addNum: addNum ?? currentShoulder.addNum,
          erNote: erNote ?? currentShoulder.erNote,
          erNum: erNum ?? currentShoulder.erNum,
          irNote: irNote ?? currentShoulder.irNote,
          irNum: irNum ?? currentShoulder.irNum,
          hawkinsTest: hawkinsTest ?? currentShoulder.hawkinsTest,
          neerTest: neerTest ?? currentShoulder.neerTest,
          posterior: posterior ?? currentShoulder.posterior,
          impingementNote: impingementNote ?? currentShoulder.impingementNote,
          apprehension: apprehension ?? currentShoulder.apprehension,
          relocation: relocation ?? currentShoulder.relocation,
          instabilityNote: instabilityNote ?? currentShoulder.instabilityNote,
          bellyOff: bellyOff ?? currentShoulder.bellyOff,
          irls: irls ?? currentShoulder.irls,
          erls: erls ?? currentShoulder.erls,
          rcTearNote: rcTearNote ?? currentShoulder.rcTearNote,
          scapularAssistanceTest:
              scapularAssistanceTest ?? currentShoulder.scapularAssistanceTest,
          scapularRetractionTest:
              scapularRetractionTest ?? currentShoulder.scapularRetractionTest,
          acromioTest: acromioTest ?? currentShoulder.acromioTest,
          obrienTest: obrienTest ?? currentShoulder.obrienTest,
          passiveTest: passiveTest ?? currentShoulder.passiveTest,
          modifiedTest: modifiedTest ?? currentShoulder.modifiedTest,
          obrienTestNote: obrienTestNote ?? currentShoulder.obrienTestNote,
          scapularStabilityNote:
              scapularStabilityNote ?? currentShoulder.scapularStabilityNote,
          treatmentNote: treatmentNote ?? currentShoulder.treatmentNote,
        ),
      ),
    );
  }

//Knee -------------------------------------------------------
  void nextStepKnee() {
    if ((state as PatientMainStateKnee).currentStep < 3) {
      emit((state as PatientMainStateKnee).copyWith(
          currentStep: (state as PatientMainStateKnee).currentStep + 1));
      print((state as PatientMainStateKnee).currentStep);
    } else {
      // (state as PatientMainStateKnee).addingSession
      //     ? addSessionToPatient(state: state)
      //     :
      submitNewPatient(state: state);
      RouteUtils.navigateTo(SuccessView());
    }
  }

  void previousStepKnee() {
    if (!(state as PatientMainStateKnee).isFirst) {
      emit((state as PatientMainStateKnee).copyWith(
          currentStep: (state as PatientMainStateKnee).currentStep - 1));
      print((state as PatientMainStateKnee).currentStep);
    } else {
      print((state as PatientMainStateKnee).currentStep);

      emit(PatientMainStateGeneralInfo(
          patientGeneral: (state as PatientMainStateKnee).patientGeneral));
    }
  }

  updateKneeValues({
    bool? freeHip,
    bool? freeLumber,
    String? historyNote,
    String? painPlace,
    String? painVas,
    String? painPalpation,
    int? roomFlextionNum,
    String? roomFlextionNote,
    int? roomExtensionNum,
    String? roonExtensionNote,
    String? muscleTestNote,
    String? anteriorDrawer,
    String? lachman,
    String? aclNote,
    String? mclStressTest,
    String? lclStressTest,
    String? posteriorDrawer,
    String? mcmuray,
    String? apley,
    String? thessaly,
    String? thessalyNote,
    String? apprehension,
    String? noble,
    String? pattelarEffussion,
    String? meniscesNote,
    String? treatments,
  }) {
    final currentKnee = (state as PatientMainStateKnee).knee ?? Knee();

    emit(
      (state as PatientMainStateKnee).copyWith(
        knee: Knee(
          freeHip: freeHip ?? currentKnee.freeHip,
          freeLumber: freeLumber ?? currentKnee.freeLumber,
          historyNote: historyNote ?? currentKnee.historyNote,
          painPlace: painPlace ?? currentKnee.painPlace,
          painVas: painVas ?? currentKnee.painVas,
          painPalpation: painPalpation ?? currentKnee.painPalpation,
          roomFlextionNum: roomFlextionNum ?? currentKnee.roomFlextionNum,
          roomFlextionNote: roomFlextionNote ?? currentKnee.roomFlextionNote,
          roomExtensionNum: roomExtensionNum ?? currentKnee.roomExtensionNum,
          roonExtensionNote: roonExtensionNote ?? currentKnee.roonExtensionNote,
          muscleTestNote: muscleTestNote ?? currentKnee.muscleTestNote,
          anteriorDrawer: anteriorDrawer ?? currentKnee.anteriorDrawer,
          lachman: lachman ?? currentKnee.lachman,
          aclNote: aclNote ?? currentKnee.aclNote,
          mclStressTest: mclStressTest ?? currentKnee.mclStressTest,
          lclStressTest: lclStressTest ?? currentKnee.lclStressTest,
          posteriorDrawer: posteriorDrawer ?? currentKnee.posteriorDrawer,
          mcmuray: mcmuray ?? currentKnee.mcmuray,
          apley: apley ?? currentKnee.apley,
          thessaly: thessaly ?? currentKnee.thessaly,
          thessalyNote: thessalyNote ?? currentKnee.thessalyNote,
          apprehension: apprehension ?? currentKnee.apprehension,
          noble: noble ?? currentKnee.noble,
          pattelarEffussion: pattelarEffussion ?? currentKnee.pattelarEffussion,
          meniscesNote: meniscesNote ?? currentKnee.meniscesNote,
          treatments: treatments ?? currentKnee.treatments,
        ),
      ),
    );
  }

//Ankle------------------------------------------------------
  void nextStepAnkle() {
    if ((state as PatientMainStateAnkle).currentStep < 2) {
      emit((state as PatientMainStateAnkle).copyWith(
          currentStep: (state as PatientMainStateAnkle).currentStep + 1));
      print((state as PatientMainStateAnkle).currentStep);
    } else {
      // (state as PatientMainStateAnkle).addingSession
      //     ? addSessionToPatient(state: state)
      //     :
      submitNewPatient(state: state);
      RouteUtils.navigateTo(SuccessView());
    }
  }

  void previousStepAnkle() {
    if (!(state as PatientMainStateAnkle).isFirst) {
      emit((state as PatientMainStateAnkle).copyWith(
          currentStep: (state as PatientMainStateAnkle).currentStep - 1));
      print((state as PatientMainStateAnkle).currentStep);
    } else {
      print((state as PatientMainStateAnkle).currentStep);

      emit(PatientMainStateGeneralInfo(
          patientGeneral: (state as PatientMainStateAnkle).patientGeneral));
    }
  }

  updateAnkleValues({
    String? historyNote,
    String? palpationNote,
    int? dorsiFlexionNum,
    String? dorsiFlexionNote,
    int? planterFlexionNum,
    String? planterFlexionNote,
    int? inversionFlexionNum,
    String? inversionFlexionNote,
    int? eversionFlexionNum,
    String? eversionFlexionNote,
    String? muscleTestNote,
    String? anteriorDrawer,
    String? reverseAnterolateralDrawer,
    String? anteroLateralTalarPalpation,
    String? talarTilt,
    String? performanceTest,
    String? performanceTestNote,
    String? treatmentNote,
  }) {
    final currentAnkle = (state as PatientMainStateAnkle).ankle ?? Ankle();

    emit(
      (state as PatientMainStateAnkle).copyWith(
        ankle: Ankle(
          historyNote: historyNote ?? currentAnkle.historyNote,
          palpationNote: palpationNote ?? currentAnkle.palpationNote,
          dorsiFlexionNum: dorsiFlexionNum ?? currentAnkle.dorsiFlexionNum,
          dorsiFlexionNote: dorsiFlexionNote ?? currentAnkle.dorsiFlexionNote,
          planterFlexionNum:
              planterFlexionNum ?? currentAnkle.planterFlexionNum,
          planterFlexionNote:
              planterFlexionNote ?? currentAnkle.planterFlexionNote,
          inversionFlexionNum:
              inversionFlexionNum ?? currentAnkle.inversionFlexionNum,
          inversionFlexionNote:
              inversionFlexionNote ?? currentAnkle.inversionFlexionNote,
          eversionFlexionNum:
              eversionFlexionNum ?? currentAnkle.eversionFlexionNum,
          eversionFlexionNote:
              eversionFlexionNote ?? currentAnkle.eversionFlexionNote,
          muscleTestNote: muscleTestNote ?? currentAnkle.muscleTestNote,
          anteriorDrawer: anteriorDrawer ?? currentAnkle.anteriorDrawer,
          reverseAnterolateralDrawer: reverseAnterolateralDrawer ??
              currentAnkle.reverseAnterolateralDrawer,
          anteroLateralTalarPalpation: anteroLateralTalarPalpation ??
              currentAnkle.anteroLateralTalarPalpation,
          talarTilt: talarTilt ?? currentAnkle.talarTilt,
          performanceTest: performanceTest ?? currentAnkle.performanceTest,
          performanceTestNote:
              performanceTestNote ?? currentAnkle.performanceTestNote,
          treatmentNote: treatmentNote ?? currentAnkle.treatmentNote,
        ),
      ),
    );
  }

//Cervical--------------------------------------------------------------------
  void nextStepCervical() {
    if ((state as PatientMainStateCervical).currentStep < 4) {
      emit((state as PatientMainStateCervical).copyWith(
          currentStep: (state as PatientMainStateCervical).currentStep + 1));
      print((state as PatientMainStateCervical).currentStep);
    } else {
      // (state as PatientMainStateCervical).addingSession
      //     ? addSessionToPatient(state: state)
      //     :
      submitNewPatient(state: state);
      RouteUtils.navigateTo(SuccessView());
    }
  }

  void previousStepCervical() {
    if (!(state as PatientMainStateCervical).isFirst) {
      emit((state as PatientMainStateCervical).copyWith(
          currentStep: (state as PatientMainStateCervical).currentStep - 1));
      print((state as PatientMainStateCervical).currentStep);
    } else {
      print((state as PatientMainStateCervical).currentStep);

      emit(PatientMainStateGeneralInfo(
          patientGeneral: (state as PatientMainStateCervical).patientGeneral));
    }
  }

  updateCervicalValues({
    String? noRedFlags,
    String? psycologicCauses,
    String? historyNote,
    String? painPlaceOrDermatomeNote,
    int? painVasNumber,
    int? romFlexionNumber,
    int? romExtensionNumber,
    int? romLSideBendingNumber,
    int? romRSideBendingNumber,
    int? romLRotationNumber,
    int? romRRotationNumber,
    String? romNote,
    String? segmentalMobilityNote,
    String? muscleAssessmentNote,
    String? peripheralJointScanNote,
    String? distractionTest,
    String? spurlingCompressionTest,
    String? cervicalQuadrantTest,
    String? cervicalFlexionTotationTest,
    String? cranioCervicalFlexionTest,
    String? deepNeekFlexorsEnduranceTest,
    String? cervicalMuscleStrenghNote,
  }) {
    final currentCervical =
        (state as PatientMainStateCervical).cervical ?? Cervical();

    emit(
      (state as PatientMainStateCervical).copyWith(
        cervical: Cervical(
          noRedFlags: noRedFlags ?? currentCervical.noRedFlags,
          psycologicCauses:
              psycologicCauses ?? currentCervical.psycologicCauses,
          historyNote: historyNote ?? currentCervical.historyNote,
          painPlaceOrDermatomeNote: painPlaceOrDermatomeNote ??
              currentCervical.painPlaceOrDermatomeNote,
          painVasNumber: painVasNumber ?? currentCervical.painVasNumber,
          romFlexionNumber:
              romFlexionNumber ?? currentCervical.romFlexionNumber,
          romExtensionNumber:
              romExtensionNumber ?? currentCervical.romExtensionNumber,
          romLSideBendingNumber:
              romLSideBendingNumber ?? currentCervical.romLSideBendingNumber,
          romRSideBendingNumber:
              romRSideBendingNumber ?? currentCervical.romRSideBendingNumber,
          romLRotationNumber:
              romLRotationNumber ?? currentCervical.romLRotationNumber,
          romRRotationNumber:
              romRRotationNumber ?? currentCervical.romRRotationNumber,
          romNote: romNote ?? currentCervical.romNote,
          segmentalMobilityNote:
              segmentalMobilityNote ?? currentCervical.segmentalMobilityNote,
          muscleAssessmentNote:
              muscleAssessmentNote ?? currentCervical.muscleAssessmentNote,
          peripheralJointScanNote: peripheralJointScanNote ??
              currentCervical.peripheralJointScanNote,
          distractionTest: distractionTest ?? currentCervical.distractionTest,
          spurlingCompressionTest: spurlingCompressionTest ??
              currentCervical.spurlingCompressionTest,
          cervicalQuadrantTest:
              cervicalQuadrantTest ?? currentCervical.cervicalQuadrantTest,
          cervicalFlexionTotationTest: cervicalFlexionTotationTest ??
              currentCervical.cervicalFlexionTotationTest,
          cranioCervicalFlexionTest: cranioCervicalFlexionTest ??
              currentCervical.cranioCervicalFlexionTest,
          deepNeekFlexorsEnduranceTest: deepNeekFlexorsEnduranceTest ??
              currentCervical.deepNeekFlexorsEnduranceTest,
          cervicalMuscleStrenghNote: cervicalMuscleStrenghNote ??
              currentCervical.cervicalMuscleStrenghNote,
        ),
      ),
    );
  }

//Lumbar--------------------------------------------------------------------
  void nextStepLumbar() {
    if ((state as PatientMainStateLumbar).currentStep < 3) {
      emit((state as PatientMainStateLumbar).copyWith(
          currentStep: (state as PatientMainStateLumbar).currentStep + 1));
      print((state as PatientMainStateLumbar).currentStep);
    } else {
      // (state as PatientMainStateLumbar).addingSession
      //     ? addSessionToPatient(state: state)
      //     :
      submitNewPatient(state: state);
      RouteUtils.navigateTo(SuccessView());
    }
  }

  void previousStepLumbar() {
    if (!(state as PatientMainStateLumbar).isFirst) {
      emit((state as PatientMainStateLumbar).copyWith(
          currentStep: (state as PatientMainStateLumbar).currentStep - 1));
    } else {
      emit(PatientMainStateGeneralInfo(
          patientGeneral: (state as PatientMainStateLumbar).patientGeneral));
    }
  }

  updateLumbarValues({
    String? noRedFlags,
    String? psycologicCauses,
    String? visceralAffection,
    String? historyNote,
    String? painPlaceOrDermatomeNote,
    String? painVasNote,
    String? observationOrGaitAassisment,
    String? myotomalAffection,
    int? romFlexionNumber,
    int? romExtensionNumber,
    int? romLSideBendingNumber,
    int? romRSideBendingNumber,
    int? romLRotationNumber,
    int? romRRotationNumber,
    String? romNote,
    String? segmentalMobility,
    String? muscleAssisment,
    String? pripheralJointScan,
    String? straightLegRaisingTest,
    String? slumpTest,
    String? femordNerveTractionTest,
    String? neuroDynamicTestNote,
    String? passiveLumberExtensionTest,
    String? proneSegmentalInstabilityTest,
    String? lumberInstabilityNote,
  }) {
    final currentLumbar = (state as PatientMainStateLumbar).lumbar ?? Lumbar();

    emit(
      (state as PatientMainStateLumbar).copyWith(
        lumbar: Lumbar(
          noRedFlags: noRedFlags ?? currentLumbar.noRedFlags,
          psycologicCauses: psycologicCauses ?? currentLumbar.psycologicCauses,
          visceralAffection:
              visceralAffection ?? currentLumbar.visceralAffection,
          historyNote: historyNote ?? currentLumbar.historyNote,
          painPlaceOrDermatomeNote: painPlaceOrDermatomeNote ??
              currentLumbar.painPlaceOrDermatomeNote,
          painVasNote: painVasNote ?? currentLumbar.painVasNote,
          observationOrGaitAassisment: observationOrGaitAassisment ??
              currentLumbar.observationOrGaitAassisment,
          myotomalAffection:
              myotomalAffection ?? currentLumbar.myotomalAffection,
          romFlexionNumber: romFlexionNumber ?? currentLumbar.romFlexionNumber,
          romExtensionNumber:
              romExtensionNumber ?? currentLumbar.romExtensionNumber,
          romLSideBendingNumber:
              romLSideBendingNumber ?? currentLumbar.romLSideBendingNumber,
          romRSideBendingNumber:
              romRSideBendingNumber ?? currentLumbar.romRSideBendingNumber,
          romLRotationNumber:
              romLRotationNumber ?? currentLumbar.romLRotationNumber,
          romRRotationNumber:
              romRRotationNumber ?? currentLumbar.romRRotationNumber,
          romNote: romNote ?? currentLumbar.romNote,
          segmentalMobility:
              segmentalMobility ?? currentLumbar.segmentalMobility,
          muscleAssisment: muscleAssisment ?? currentLumbar.muscleAssisment,
          pripheralJointScan:
              pripheralJointScan ?? currentLumbar.pripheralJointScan,
          straightLegRaisingTest:
              straightLegRaisingTest ?? currentLumbar.straightLegRaisingTest,
          slumpTest: slumpTest ?? currentLumbar.slumpTest,
          femordNerveTractionTest:
              femordNerveTractionTest ?? currentLumbar.femordNerveTractionTest,
          neuroDynamicTestNote:
              neuroDynamicTestNote ?? currentLumbar.neuroDynamicTestNote,
          passiveLumberExtensionTest: passiveLumberExtensionTest ??
              currentLumbar.passiveLumberExtensionTest,
          proneSegmentalInstabilityTest: proneSegmentalInstabilityTest ??
              currentLumbar.proneSegmentalInstabilityTest,
          lumberInstabilityNote:
              lumberInstabilityNote ?? currentLumbar.lumberInstabilityNote,
        ),
      ),
    );
  }

//Elbow--------------------------------------------------------------------
  void nextStepElbow() {
    if ((state as PatientMainStateElbow).currentStep < 2) {
      emit((state as PatientMainStateElbow).copyWith(
          currentStep: (state as PatientMainStateElbow).currentStep + 1));
      print((state as PatientMainStateElbow).currentStep);
    } else {
      // (state as PatientMainStateElbow).addingSession
      //     ? addSessionToPatient(state: state)
      //     :
      submitNewPatient(state: state);
      RouteUtils.navigateTo(SuccessView());
    }
  }

  void previousStepElbow() {
    if (!(state as PatientMainStateElbow).isFirst) {
      emit((state as PatientMainStateElbow).copyWith(
          currentStep: (state as PatientMainStateElbow).currentStep - 1));
    } else {
      print((state as PatientMainStateElbow).currentStep);

      emit(PatientMainStateGeneralInfo(
          patientGeneral: (state as PatientMainStateElbow).patientGeneral));
    }
  }

  updateElbowValues({
    String? historyNote,
    String? palpationNote,
    String? painPlaceNote,
    String? painVasNote,
    int? romFlexionNumber,
    int? romExtensionNumber,
    int? romSupinationNumber,
    int? romPronationNumber,
    String? romNote,
    String? muscleAssessmentNote,
    String? mclStressTest,
    String? lclStressTest,
    String? cozensTestOrResistance,
    String? millsTestOrPassiveStretch,
    String? maudsleysTest,
    String? tinnelSign,
    String? ulnarNerveCompressionTest,
  }) {
    final currentElbow = (state as PatientMainStateElbow).elbow ?? Elbow();

    emit(
      (state as PatientMainStateElbow).copyWith(
        elbow: Elbow(
          historyNote: historyNote ?? currentElbow.historyNote,
          palpationNote: palpationNote ?? currentElbow.palpationNote,
          painPlaceNote: painPlaceNote ?? currentElbow.painPlaceNote,
          painVasNote: painVasNote ?? currentElbow.painVasNote,
          romFlexionNumber: romFlexionNumber ?? currentElbow.romFlexionNumber,
          romExtensionNumber:
              romExtensionNumber ?? currentElbow.romExtensionNumber,
          romSupinationNumber:
              romSupinationNumber ?? currentElbow.romSupinationNumber,
          romPronationNumber:
              romPronationNumber ?? currentElbow.romPronationNumber,
          romNote: romNote ?? currentElbow.romNote,
          muscleAssessmentNote:
              muscleAssessmentNote ?? currentElbow.muscleAssessmentNote,
          mclStressTest: mclStressTest ?? currentElbow.mclStressTest,
          lclStressTest: lclStressTest ?? currentElbow.lclStressTest,
          cozensTestOrResistance:
              cozensTestOrResistance ?? currentElbow.cozensTestOrResistance,
          millsTestOrPassiveStretch: millsTestOrPassiveStretch ??
              currentElbow.millsTestOrPassiveStretch,
          maudsleysTest: maudsleysTest ?? currentElbow.maudsleysTest,
          tinnelSign: tinnelSign ?? currentElbow.tinnelSign,
          ulnarNerveCompressionTest: ulnarNerveCompressionTest ??
              currentElbow.ulnarNerveCompressionTest,
        ),
      ),
    );
  }

//For all states -------------------------------------------------------------
  dynamic selectedIndexInterpretation({required int selectedIndex}) {
    if (selectedIndex == 0) {
      return "+ve";
    } else if (selectedIndex == 1) {
      return "-ve";
    } else {
      return "not done";
    }
  }

  String getTitleForNextButtonBasedOnTheState(
      {required PatientMainState state}) {
    if (state is PatientMainStateShoulder) {
      if (state.isLast
          // && !state.addingSession
          ) {
        return "Submit-Sh";
      }
      //  else if (state.addingSession && state.isLast) {
      //   return "Add session-Sh";
      // }
      else {
        return "Next-Sh";
      }
    } else if (state is PatientMainStateKnee) {
      if (state.isLast
          // && !state.addingSession
          ) {
        return "Submit-Kn";
      }
      // else if (state.addingSession && state.isLast) {
      //   return "Add session-Kn";
      // }
      else {
        return "Next-Kn";
      }
    } else if (state is PatientMainStateAnkle) {
      if (state.isLast
          //  && !state.addingSession
          ) {
        return "Submit-An";
      }
      // else if (state.addingSession && state.isLast) {
      //   return "Add session-An";
      // }
      else {
        return "Next-An";
      }
    } else if (state is PatientMainStateCervical) {
      if (state.isLast
          // && !state.addingSession
          ) {
        return "Submit-Ce";
      }
      //  else if (state.addingSession && state.isLast) {
      //   return "Add session-Ce";
      // }
      else {
        return "Next-Ce";
      }
    } else if (state is PatientMainStateLumbar) {
      if (state.isLast
          //  && !state.addingSession
          ) {
        return "Submit-Lu";
      }
      // else if (state.addingSession && state.isLast) {
      //   return "Add session-Lu";
      // }
      else {
        return "Next-Lu";
      }
    } else if (state is PatientMainStateElbow) {
      if (state.isLast
          //  && !state.addingSession
          ) {
        return "Submit-El";
      }
      // else if (state.addingSession && state.isLast) {
      //   return "Add session-El";
      // }
      else {
        return "Next-El";
      }
    } else {
      return "Next to area";
    }
  }

  updateGeneralValues({
    String? name,
    int? age,
    String? occupation,
    String? medicalRef,
    int? weight,
    String? chiefComplaint,
    String? course,
    String? presentedArea,
  }) {
    emit(
      (state as PatientMainStateGeneralInfo).copyWith(
        patientGeneral: PatientGeneral(
            name: name!,
            age: age!,
            occupation: occupation!,
            medicalRef: medicalRef!,
            weight: weight!,
            chiefComplaint: chiefComplaint!,
            course: course!,
            presentedArea: presentedArea!),
      ),
    );
  }

  // generateStateAccordingToTheSelectedPresentedAreaForAddingSessions({
  //   required String presentedArea,
  //   required PatientGeneral patientGeneral,
  //   required int currentStep,
  // }) {
  //   switch (presentedArea) {
  //     case 'Shoulder':
  //       emit(
  //         PatientMainStateShoulder(
  //           patientGeneral: patientGeneral,
  //           currentStep: currentStep,
  //           addingSession: true,
  //         ),
  //       );

  //       RouteUtils.navigateTo(NewPatientOrSession());

  //       break;
  //     case 'Knee':
  //       emit(
  //         PatientMainStateKnee(
  //           patientGeneral: patientGeneral,
  //           currentStep: currentStep,
  //           addingSession: true,
  //         ),
  //       );

  //       RouteUtils.navigateTo(NewPatientOrSession());

  //       break;
  //     case 'Ankle':
  //       emit(
  //         PatientMainStateAnkle(
  //           patientGeneral: patientGeneral,
  //           currentStep: currentStep,
  //           addingSession: true,
  //         ),
  //       );

  //       RouteUtils.navigateTo(NewPatientOrSession());

  //       break;
  //     case 'Cervical':
  //       emit(
  //         PatientMainStateCervical(
  //           patientGeneral: patientGeneral,
  //           currentStep: currentStep,
  //           addingSession: true,
  //         ),
  //       );

  //       RouteUtils.navigateTo(NewPatientOrSession());

  //       break;
  //     case 'Lumbar':
  //       emit(
  //         PatientMainStateLumbar(
  //           patientGeneral: patientGeneral,
  //           currentStep: currentStep,
  //           addingSession: true,
  //         ),
  //       );

  //       RouteUtils.navigateTo(NewPatientOrSession());

  //       break;
  //     case 'Elbow':
  //       emit(
  //         PatientMainStateElbow(
  //           patientGeneral: patientGeneral,
  //           currentStep: currentStep,
  //           addingSession: true,
  //         ),
  //       );

  //       RouteUtils.navigateTo(NewPatientOrSession());

  //       break;
  //     default:
  //     // return DefaultPage();
  //   }
  // }

  moveNextAccordingToPresentedArea({required String presentedArea}) {
    if (state is PatientMainStateGeneralInfo &&
        (state as PatientMainStateGeneralInfo).patientGeneral.presentedArea ==
            "Shoulder") {
      emit(
        PatientMainStateShoulder(
          patientGeneral: (state as PatientMainStateGeneralInfo).patientGeneral,
          currentStep: 1,
          // addingSession: false,
        ),
      );
    } else if (state is PatientMainStateGeneralInfo &&
        (state as PatientMainStateGeneralInfo).patientGeneral.presentedArea ==
            "Knee") {
      emit(PatientMainStateKnee(
        patientGeneral: (state as PatientMainStateGeneralInfo).patientGeneral,
        currentStep: 1,
        // addingSession: false,
      ));
    } else if (state is PatientMainStateGeneralInfo &&
        (state as PatientMainStateGeneralInfo).patientGeneral.presentedArea ==
            "Ankle") {
      emit(PatientMainStateAnkle(
        patientGeneral: (state as PatientMainStateGeneralInfo).patientGeneral,
        currentStep: 1,
        // addingSession: false,
      ));
    } else if (state is PatientMainStateGeneralInfo &&
        (state as PatientMainStateGeneralInfo).patientGeneral.presentedArea ==
            "Cervical") {
      emit(PatientMainStateCervical(
        patientGeneral: (state as PatientMainStateGeneralInfo).patientGeneral,
        currentStep: 1,
        // addingSession: false,
      ));
    } else if (state is PatientMainStateGeneralInfo &&
        (state as PatientMainStateGeneralInfo).patientGeneral.presentedArea ==
            "Lumbar") {
      emit(PatientMainStateLumbar(
        patientGeneral: (state as PatientMainStateGeneralInfo).patientGeneral,
        currentStep: 1,
        // addingSession: false,
      ));
    } else if (state is PatientMainStateGeneralInfo &&
        (state as PatientMainStateGeneralInfo).patientGeneral.presentedArea ==
            "Elbow") {
      emit(PatientMainStateElbow(
        patientGeneral: (state as PatientMainStateGeneralInfo).patientGeneral,
        currentStep: 1,
        // addingSession: false,
      ));
    } else {
      return;
    }
  }

  submitNewPatient({required PatientMainState state}) async {
    //Default session
    Session session = ShoulderSession(
      date: DateTime.now(),
      shoulder: Shoulder(),
    );
    //Default state
    dynamic previousState;

//controlling the states and therefore the sessions
    if (state is PatientMainStateShoulder) {
      session = ShoulderSession(
        date: DateTime.now(),
        shoulder: state.shoulder!,
      );
      previousState = state;
    } else if (state is PatientMainStateKnee) {
      session = KneeSession(
        date: DateTime.now(),
        knee: state.knee!,
      );
      previousState = state;
    } else if (state is PatientMainStateAnkle) {
      session = AnkleSession(
        date: DateTime.now(),
        ankle: state.ankle!,
      );
      previousState = state;
    } else if (state is PatientMainStateCervical) {
      session = CervicalSession(
        date: DateTime.now(),
        cervical: state.cervical!,
      );
      previousState = state;
    } else if (state is PatientMainStateLumbar) {
      session = LumbarSession(
        date: DateTime.now(),
        lumbar: state.lumbar!,
      );
      previousState = state;
    } else if (state is PatientMainStateElbow) {
      session = ElbowSession(
        date: DateTime.now(),
        elbow: state.elbow!,
      );
      previousState = state;
    }

    patientMainRepository.addPatient(
      patient: Patient(
        age: previousState.patientGeneral.age,
        name: previousState.patientGeneral.name,
        weight: previousState.patientGeneral.weight,
        chiefComplaint: previousState.patientGeneral.chiefComplaint,
        course: previousState.patientGeneral.course,
        medicalRef: previousState.patientGeneral.medicalRef,
        occupation: previousState.patientGeneral.occupation,
        presentedArea: previousState.patientGeneral.presentedArea,
        session: session,
        followups: [],
      ),
    );
  }
}

//Comment
