class Cervical {
  String? noRedFlags;
  String? psycologicCauses;
  String? historyNote;
  String? painPlaceOrDermatomeNote;
  int? painVasNumber;
  int? romFlexionNumber;
  int? romExtensionNumber;
  int? romLSideBendingNumber;
  int? romRSideBendingNumber;
  int? romLRotationNumber;
  int? romRRotationNumber;
  String? romNote;
  String? segmentalMobilityNote;
  String? muscleAssessmentNote;
  String? peripheralJointScanNote;
  String? distractionTest;
  String? spurlingCompressionTest;
  String? cervicalQuadrantTest;
  String? cervicalFlexionTotationTest;
  String? cranioCervicalFlexionTest;
  String? deepNeekFlexorsEnduranceTest;
  String? cervicalMuscleStrengh;
  Cervical({
    this.noRedFlags,
    this.psycologicCauses,
    this.historyNote,
    this.painPlaceOrDermatomeNote,
    this.painVasNumber,
    this.romFlexionNumber,
    this.romExtensionNumber,
    this.romLSideBendingNumber,
    this.romRSideBendingNumber,
    this.romLRotationNumber,
    this.romRRotationNumber,
    this.romNote,
    this.segmentalMobilityNote,
    this.muscleAssessmentNote,
    this.peripheralJointScanNote,
    this.distractionTest,
    this.spurlingCompressionTest,
    this.cervicalQuadrantTest,
    this.cervicalFlexionTotationTest,
    this.cranioCervicalFlexionTest,
    this.deepNeekFlexorsEnduranceTest,
    this.cervicalMuscleStrengh,
  });

  Cervical copyWith({
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
    String? cervicalMuscleStrengh,
  }) {
    return Cervical(
      noRedFlags: noRedFlags ?? this.noRedFlags,
      psycologicCauses: psycologicCauses ?? this.psycologicCauses,
      historyNote: historyNote ?? this.historyNote,
      painPlaceOrDermatomeNote:
          painPlaceOrDermatomeNote ?? this.painPlaceOrDermatomeNote,
      painVasNumber: painVasNumber ?? this.painVasNumber,
      romFlexionNumber: romFlexionNumber ?? this.romFlexionNumber,
      romExtensionNumber: romExtensionNumber ?? this.romExtensionNumber,
      romLSideBendingNumber:
          romLSideBendingNumber ?? this.romLSideBendingNumber,
      romRSideBendingNumber:
          romRSideBendingNumber ?? this.romRSideBendingNumber,
      romLRotationNumber: romLRotationNumber ?? this.romLRotationNumber,
      romRRotationNumber: romRRotationNumber ?? this.romRRotationNumber,
      romNote: romNote ?? this.romNote,
      segmentalMobilityNote:
          segmentalMobilityNote ?? this.segmentalMobilityNote,
      muscleAssessmentNote: muscleAssessmentNote ?? this.muscleAssessmentNote,
      peripheralJointScanNote:
          peripheralJointScanNote ?? this.peripheralJointScanNote,
      distractionTest: distractionTest ?? this.distractionTest,
      spurlingCompressionTest:
          spurlingCompressionTest ?? this.spurlingCompressionTest,
      cervicalQuadrantTest: cervicalQuadrantTest ?? this.cervicalQuadrantTest,
      cervicalFlexionTotationTest:
          cervicalFlexionTotationTest ?? this.cervicalFlexionTotationTest,
      cranioCervicalFlexionTest:
          cranioCervicalFlexionTest ?? this.cranioCervicalFlexionTest,
      deepNeekFlexorsEnduranceTest:
          deepNeekFlexorsEnduranceTest ?? this.deepNeekFlexorsEnduranceTest,
      cervicalMuscleStrengh:
          cervicalMuscleStrengh ?? this.cervicalMuscleStrengh,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noRedFlags': noRedFlags,
      'psycologicCauses': psycologicCauses,
      'historyNote': historyNote,
      'painPlaceOrDermatomeNote': painPlaceOrDermatomeNote,
      'painVasNumber': painVasNumber,
      'romFlexionNumber': romFlexionNumber,
      'romExtensionNumber': romExtensionNumber,
      'romLSideBendingNumber': romLSideBendingNumber,
      'romRSideBendingNumber': romRSideBendingNumber,
      'romLRotationNumber': romLRotationNumber,
      'romRRotationNumber': romRRotationNumber,
      'romNote': romNote,
      'segmentalMobilityNote': segmentalMobilityNote,
      'muscleAssessmentNote': muscleAssessmentNote,
      'peripheralJointScanNote': peripheralJointScanNote,
      'distractionTest': distractionTest,
      'spurlingCompressionTest': spurlingCompressionTest,
      'cervicalQuadrantTest': cervicalQuadrantTest,
      'cervicalFlexionTotationTest': cervicalFlexionTotationTest,
      'cranioCervicalFlexionTest': cranioCervicalFlexionTest,
      'deepNeekFlexorsEnduranceTest': deepNeekFlexorsEnduranceTest,
      'cervicalMuscleStrengh': cervicalMuscleStrengh,
    };
  }

  factory Cervical.fromMap(Map<String, dynamic> map) {
    return Cervical(
      noRedFlags:
          map['noRedFlags'] != null ? map['noRedFlags'] as String : null,
      psycologicCauses: map['psycologicCauses'] != null
          ? map['psycologicCauses'] as String
          : null,
      historyNote:
          map['historyNote'] != null ? map['historyNote'] as String : null,
      painPlaceOrDermatomeNote: map['painPlaceOrDermatomeNote'] != null
          ? map['painPlaceOrDermatomeNote'] as String
          : null,
      painVasNumber:
          map['painVasNumber'] != null ? map['painVasNumber'] as int : null,
      romFlexionNumber: map['romFlexionNumber'] != null
          ? map['romFlexionNumber'] as int
          : null,
      romExtensionNumber: map['romExtensionNumber'] != null
          ? map['romExtensionNumber'] as int
          : null,
      romLSideBendingNumber: map['romLSideBendingNumber'] != null
          ? map['romLSideBendingNumber'] as int
          : null,
      romRSideBendingNumber: map['romRSideBendingNumber'] != null
          ? map['romRSideBendingNumber'] as int
          : null,
      romLRotationNumber: map['romLRotationNumber'] != null
          ? map['romLRotationNumber'] as int
          : null,
      romRRotationNumber: map['romRRotationNumber'] != null
          ? map['romRRotationNumber'] as int
          : null,
      romNote: map['romNote'] != null ? map['romNote'] as String : null,
      segmentalMobilityNote: map['segmentalMobilityNote'] != null
          ? map['segmentalMobilityNote'] as String
          : null,
      muscleAssessmentNote: map['muscleAssessmentNote'] != null
          ? map['muscleAssessmentNote'] as String
          : null,
      peripheralJointScanNote: map['peripheralJointScanNote'] != null
          ? map['peripheralJointScanNote'] as String
          : null,
      distractionTest: map['distractionTest'] != null
          ? map['distractionTest'] as String
          : null,
      spurlingCompressionTest: map['spurlingCompressionTest'] != null
          ? map['spurlingCompressionTest'] as String
          : null,
      cervicalQuadrantTest: map['cervicalQuadrantTest'] != null
          ? map['cervicalQuadrantTest'] as String
          : null,
      cervicalFlexionTotationTest: map['cervicalFlexionTotationTest'] != null
          ? map['cervicalFlexionTotationTest'] as String
          : null,
      cranioCervicalFlexionTest: map['cranioCervicalFlexionTest'] != null
          ? map['cranioCervicalFlexionTest'] as String
          : null,
      deepNeekFlexorsEnduranceTest: map['deepNeekFlexorsEnduranceTest'] != null
          ? map['deepNeekFlexorsEnduranceTest'] as String
          : null,
      cervicalMuscleStrengh: map['cervicalMuscleStrengh'] != null
          ? map['cervicalMuscleStrengh'] as String
          : null,
    );
  }

  @override
  String toString() {
    return 'Cervical(noRedFlags: $noRedFlags, psycologicCauses: $psycologicCauses, historyNote: $historyNote, painPlaceOrDermatomeNote: $painPlaceOrDermatomeNote, painVasNumber: $painVasNumber, romFlexionNumber: $romFlexionNumber, romExtensionNumber: $romExtensionNumber, romLSideBendingNumber: $romLSideBendingNumber, romRSideBendingNumber: $romRSideBendingNumber, romLRotationNumber: $romLRotationNumber, romRRotationNumber: $romRRotationNumber, romNote: $romNote, segmentalMobilityNote: $segmentalMobilityNote, muscleAssessmentNote: $muscleAssessmentNote, peripheralJointScanNote: $peripheralJointScanNote, distractionTest: $distractionTest, spurlingCompressionTest: $spurlingCompressionTest, cervicalQuadrantTest: $cervicalQuadrantTest, cervicalFlexionTotationTest: $cervicalFlexionTotationTest, cranioCervicalFlexionTest: $cranioCervicalFlexionTest, deepNeekFlexorsEnduranceTest: $deepNeekFlexorsEnduranceTest, cervicalMuscleStrengh: $cervicalMuscleStrengh)';
  }
}
