class Ankle {
  String? historyNote;
  String? palpationNote;
  int? dorsiFlexionNum;
  String? dorsiFlexionNote;
  int? planterFlexionNum;
  String? planterFlexionNote;
  int? inversionFlexionNum;
  String? inversionFlexionNote;
  int? eversionFlexionNum;
  String? eversionFlexionNote;
  String? muscleTestNote;
  String? anteriorDrawer;
  String? reverseAnterolateralDrawer;
  String? anteroLateralTalarPalpation;
  String? talarTilt;
  String? performanceTest;
  String? performanceTestNote;
  String? treatmentNote;
  Ankle({
    this.historyNote,
    this.palpationNote,
    this.dorsiFlexionNum,
    this.dorsiFlexionNote,
    this.planterFlexionNum,
    this.planterFlexionNote,
    this.inversionFlexionNum,
    this.inversionFlexionNote,
    this.eversionFlexionNum,
    this.eversionFlexionNote,
    this.muscleTestNote,
    this.anteriorDrawer,
    this.reverseAnterolateralDrawer,
    this.anteroLateralTalarPalpation,
    this.talarTilt,
    this.performanceTest,
    this.performanceTestNote,
    this.treatmentNote,
  });

  Ankle copyWith({
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
    return Ankle(
      historyNote: historyNote ?? this.historyNote,
      palpationNote: palpationNote ?? this.palpationNote,
      dorsiFlexionNum: dorsiFlexionNum ?? this.dorsiFlexionNum,
      dorsiFlexionNote: dorsiFlexionNote ?? this.dorsiFlexionNote,
      planterFlexionNum: planterFlexionNum ?? this.planterFlexionNum,
      planterFlexionNote: planterFlexionNote ?? this.planterFlexionNote,
      inversionFlexionNum: inversionFlexionNum ?? this.inversionFlexionNum,
      inversionFlexionNote: inversionFlexionNote ?? this.inversionFlexionNote,
      eversionFlexionNum: eversionFlexionNum ?? this.eversionFlexionNum,
      eversionFlexionNote: eversionFlexionNote ?? this.eversionFlexionNote,
      muscleTestNote: muscleTestNote ?? this.muscleTestNote,
      anteriorDrawer: anteriorDrawer ?? this.anteriorDrawer,
      reverseAnterolateralDrawer:
          reverseAnterolateralDrawer ?? this.reverseAnterolateralDrawer,
      anteroLateralTalarPalpation:
          anteroLateralTalarPalpation ?? this.anteroLateralTalarPalpation,
      talarTilt: talarTilt ?? this.talarTilt,
      performanceTest: performanceTest ?? this.performanceTest,
      performanceTestNote: performanceTestNote ?? this.performanceTestNote,
      treatmentNote: treatmentNote ?? this.treatmentNote,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'historyNote': historyNote,
      'palpationNote': palpationNote,
      'dorsiFlexionNum': dorsiFlexionNum,
      'dorsiFlexionNote': dorsiFlexionNote,
      'planterFlexionNum': planterFlexionNum,
      'planterFlexionNote': planterFlexionNote,
      'inversionFlexionNum': inversionFlexionNum,
      'inversionFlexionNote': inversionFlexionNote,
      'eversionFlexionNum': eversionFlexionNum,
      'eversionFlexionNote': eversionFlexionNote,
      'muscleTestNote': muscleTestNote,
      'anteriorDrawer': anteriorDrawer,
      'reverseAnterolateralDrawer': reverseAnterolateralDrawer,
      'anteroLateralTalarPalpation': anteroLateralTalarPalpation,
      'talarTilt': talarTilt,
      'performanceTest': performanceTest,
      'performanceTestNote': performanceTestNote,
      'treatmentNote': treatmentNote,
    };
  }

  factory Ankle.fromMap(Map<String, dynamic> map) {
    return Ankle(
      historyNote:
          map['historyNote'] != null ? map['historyNote'] as String : null,
      palpationNote:
          map['palpationNote'] != null ? map['palpationNote'] as String : null,
      dorsiFlexionNum:
          map['dorsiFlexionNum'] != null ? map['dorsiFlexionNum'] as int : null,
      dorsiFlexionNote: map['dorsiFlexionNote'] != null
          ? map['dorsiFlexionNote'] as String
          : null,
      planterFlexionNum: map['planterFlexionNum'] != null
          ? map['planterFlexionNum'] as int
          : null,
      planterFlexionNote: map['planterFlexionNote'] != null
          ? map['planterFlexionNote'] as String
          : null,
      inversionFlexionNum: map['inversionFlexionNum'] != null
          ? map['inversionFlexionNum'] as int
          : null,
      inversionFlexionNote: map['inversionFlexionNote'] != null
          ? map['inversionFlexionNote'] as String
          : null,
      eversionFlexionNum: map['eversionFlexionNum'] != null
          ? map['eversionFlexionNum'] as int
          : null,
      eversionFlexionNote: map['eversionFlexionNote'] != null
          ? map['eversionFlexionNote'] as String
          : null,
      muscleTestNote: map['muscleTestNote'] != null
          ? map['muscleTestNote'] as String
          : null,
      anteriorDrawer: map['anteriorDrawer'] != null
          ? map['anteriorDrawer'] as String
          : null,
      reverseAnterolateralDrawer: map['reverseAnterolateralDrawer'] != null
          ? map['reverseAnterolateralDrawer'] as String
          : null,
      anteroLateralTalarPalpation: map['anteroLateralTalarPalpation'] != null
          ? map['anteroLateralTalarPalpation'] as String
          : null,
      talarTilt: map['talarTilt'] != null ? map['talarTilt'] as String : null,
      performanceTest: map['performanceTest'] != null
          ? map['performanceTest'] as String
          : null,
      performanceTestNote: map['performanceTestNote'] != null
          ? map['performanceTestNote'] as String
          : null,
      treatmentNote:
          map['treatmentNote'] != null ? map['treatmentNote'] as String : null,
    );
  }

  @override
  String toString() {
    return 'Ankle(historyNote: $historyNote, palpationNote: $palpationNote, dorsiFlexionNum: $dorsiFlexionNum, dorsiFlexionNote: $dorsiFlexionNote, planterFlexionNum: $planterFlexionNum, planterFlexionNote: $planterFlexionNote, inversionFlexionNum: $inversionFlexionNum, inversionFlexionNote: $inversionFlexionNote, eversionFlexionNum: $eversionFlexionNum, eversionFlexionNote: $eversionFlexionNote, muscleTestNote: $muscleTestNote, anteriorDrawer: $anteriorDrawer, reverseAnterolateralDrawer: $reverseAnterolateralDrawer, anteroLateralTalarPalpation: $anteroLateralTalarPalpation, talarTilt: $talarTilt, performanceTest: $performanceTest, performanceTestNote: $performanceTestNote, treatmentNote: $treatmentNote)';
  }
}
