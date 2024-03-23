class Lumbar {
  String? noRedFlags;
  String? psycologicCauses;
  String? visceralAffection;
  String? historyNote;
  String? painPlaceOrDermatomeNote;
  String? painVasNote;
  String? observationOrGaitAassisment;
  String? myotomalAffection;
  int? romFlexionNumber;
  int? romExtensionNumber;
  int? romLSideBendingNumber;
  int? romRSideBendingNumber;
  int? romLRotationNumber;
  int? romRRotationNumber;
  String? romNote;
  String? segmentalMobility;
  String? muscleAssisment;
  String? pripheralJointScan;
  String? straightLegRaisingTest;
  String? slumpTest;
  String? femordNerveTractionTest;
  String? neuroDynamicTestNote;
  String? passiveLumberExtensionTest;
  String? proneSegmentalInstabilityTest;
  String? lumberInstabilityNote;
  Lumbar({
    this.noRedFlags,
    this.psycologicCauses,
    this.visceralAffection,
    this.historyNote,
    this.painPlaceOrDermatomeNote,
    this.painVasNote,
    this.observationOrGaitAassisment,
    this.myotomalAffection,
    this.romFlexionNumber,
    this.romExtensionNumber,
    this.romLSideBendingNumber,
    this.romRSideBendingNumber,
    this.romLRotationNumber,
    this.romRRotationNumber,
    this.romNote,
    this.segmentalMobility,
    this.muscleAssisment,
    this.pripheralJointScan,
    this.straightLegRaisingTest,
    this.slumpTest,
    this.femordNerveTractionTest,
    this.neuroDynamicTestNote,
    this.passiveLumberExtensionTest,
    this.proneSegmentalInstabilityTest,
    this.lumberInstabilityNote,
  });

  Lumbar copyWith({
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
    return Lumbar(
      noRedFlags: noRedFlags ?? this.noRedFlags,
      psycologicCauses: psycologicCauses ?? this.psycologicCauses,
      visceralAffection: visceralAffection ?? this.visceralAffection,
      historyNote: historyNote ?? this.historyNote,
      painPlaceOrDermatomeNote:
          painPlaceOrDermatomeNote ?? this.painPlaceOrDermatomeNote,
      painVasNote: painVasNote ?? this.painVasNote,
      observationOrGaitAassisment:
          observationOrGaitAassisment ?? this.observationOrGaitAassisment,
      myotomalAffection: myotomalAffection ?? this.myotomalAffection,
      romFlexionNumber: romFlexionNumber ?? this.romFlexionNumber,
      romExtensionNumber: romExtensionNumber ?? this.romExtensionNumber,
      romLSideBendingNumber:
          romLSideBendingNumber ?? this.romLSideBendingNumber,
      romRSideBendingNumber:
          romRSideBendingNumber ?? this.romRSideBendingNumber,
      romLRotationNumber: romLRotationNumber ?? this.romLRotationNumber,
      romRRotationNumber: romRRotationNumber ?? this.romRRotationNumber,
      romNote: romNote ?? this.romNote,
      segmentalMobility: segmentalMobility ?? this.segmentalMobility,
      muscleAssisment: muscleAssisment ?? this.muscleAssisment,
      pripheralJointScan: pripheralJointScan ?? this.pripheralJointScan,
      straightLegRaisingTest:
          straightLegRaisingTest ?? this.straightLegRaisingTest,
      slumpTest: slumpTest ?? this.slumpTest,
      femordNerveTractionTest:
          femordNerveTractionTest ?? this.femordNerveTractionTest,
      neuroDynamicTestNote: neuroDynamicTestNote ?? this.neuroDynamicTestNote,
      passiveLumberExtensionTest:
          passiveLumberExtensionTest ?? this.passiveLumberExtensionTest,
      proneSegmentalInstabilityTest:
          proneSegmentalInstabilityTest ?? this.proneSegmentalInstabilityTest,
      lumberInstabilityNote:
          lumberInstabilityNote ?? this.lumberInstabilityNote,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noRedFlags': noRedFlags,
      'psycologicCauses': psycologicCauses,
      'visceralAffection': visceralAffection,
      'historyNote': historyNote,
      'painPlaceOrDermatomeNote': painPlaceOrDermatomeNote,
      'painVasNote': painVasNote,
      'observationOrGaitAassisment': observationOrGaitAassisment,
      'myotomalAffection': myotomalAffection,
      'romFlexionNumber': romFlexionNumber,
      'romExtensionNumber': romExtensionNumber,
      'romLSideBendingNumber': romLSideBendingNumber,
      'romRSideBendingNumber': romRSideBendingNumber,
      'romLRotationNumber': romLRotationNumber,
      'romRRotationNumber': romRRotationNumber,
      'romNote': romNote,
      'segmentalMobility': segmentalMobility,
      'muscleAssisment': muscleAssisment,
      'pripheralJointScan': pripheralJointScan,
      'straightLegRaisingTest': straightLegRaisingTest,
      'slumpTest': slumpTest,
      'femordNerveTractionTest': femordNerveTractionTest,
      'neuroDynamicTestNote': neuroDynamicTestNote,
      'passiveLumberExtensionTest': passiveLumberExtensionTest,
      'proneSegmentalInstabilityTest': proneSegmentalInstabilityTest,
      'lumberInstabilityNote': lumberInstabilityNote,
    };
  }

  factory Lumbar.fromMap(Map<String, dynamic> map) {
    return Lumbar(
      noRedFlags:
          map['noRedFlags'] != null ? map['noRedFlags'] as String : null,
      psycologicCauses: map['psycologicCauses'] != null
          ? map['psycologicCauses'] as String
          : null,
      visceralAffection: map['visceralAffection'] != null
          ? map['visceralAffection'] as String
          : null,
      historyNote:
          map['historyNote'] != null ? map['historyNote'] as String : null,
      painPlaceOrDermatomeNote: map['painPlaceOrDermatomeNote'] != null
          ? map['painPlaceOrDermatomeNote'] as String
          : null,
      painVasNote:
          map['painVasNote'] != null ? map['painVasNote'] as String : null,
      observationOrGaitAassisment: map['observationOrGaitAassisment'] != null
          ? map['observationOrGaitAassisment'] as String
          : null,
      myotomalAffection: map['myotomalAffection'] != null
          ? map['myotomalAffection'] as String
          : null,
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
      segmentalMobility: map['segmentalMobility'] != null
          ? map['segmentalMobility'] as String
          : null,
      muscleAssisment: map['muscleAssisment'] != null
          ? map['muscleAssisment'] as String
          : null,
      pripheralJointScan: map['pripheralJointScan'] != null
          ? map['pripheralJointScan'] as String
          : null,
      straightLegRaisingTest: map['straightLegRaisingTest'] != null
          ? map['straightLegRaisingTest'] as String
          : null,
      slumpTest: map['slumpTest'] != null ? map['slumpTest'] as String : null,
      femordNerveTractionTest: map['femordNerveTractionTest'] != null
          ? map['femordNerveTractionTest'] as String
          : null,
      neuroDynamicTestNote: map['neuroDynamicTestNote'] != null
          ? map['neuroDynamicTestNote'] as String
          : null,
      passiveLumberExtensionTest: map['passiveLumberExtensionTest'] != null
          ? map['passiveLumberExtensionTest'] as String
          : null,
      proneSegmentalInstabilityTest:
          map['proneSegmentalInstabilityTest'] != null
              ? map['proneSegmentalInstabilityTest'] as String
              : null,
      lumberInstabilityNote: map['lumberInstabilityNote'] != null
          ? map['lumberInstabilityNote'] as String
          : null,
    );
  }

  @override
  String toString() {
    return 'Lumbar(noRedFlags: $noRedFlags, psycologicCauses: $psycologicCauses, visceralAffection: $visceralAffection, historyNote: $historyNote, painPlaceOrDermatomeNote: $painPlaceOrDermatomeNote, painVasNote: $painVasNote, observationOrGaitAassisment: $observationOrGaitAassisment, myotomalAffection: $myotomalAffection, romFlexionNumber: $romFlexionNumber, romExtensionNumber: $romExtensionNumber, romLSideBendingNumber: $romLSideBendingNumber, romRSideBendingNumber: $romRSideBendingNumber, romLRotationNumber: $romLRotationNumber, romRRotationNumber: $romRRotationNumber, romNote: $romNote, segmentalMobility: $segmentalMobility, muscleAssisment: $muscleAssisment, pripheralJointScan: $pripheralJointScan, straightLegRaisingTest: $straightLegRaisingTest, slumpTest: $slumpTest, femordNerveTractionTest: $femordNerveTractionTest, neuroDynamicTestNote: $neuroDynamicTestNote, passiveLumberExtensionTest: $passiveLumberExtensionTest, proneSegmentalInstabilityTest: $proneSegmentalInstabilityTest, lumberInstabilityNote: $lumberInstabilityNote)';
  }
}
