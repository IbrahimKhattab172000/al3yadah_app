class Elbow {
  String? historyNote;
  String? palpationNote;
  String? painPlaceNote;
  String? painVasNote;
  int? romFlexionNumber;
  int? romExtensionNumber;
  int? romSupinationNumber;
  int? romPronationNumber;
  String? romNote;
  String? muscleAssessmentNote;
  String? mclStressTest;
  String? lclStressTest;
  String? cozensTestOrResistance;
  String? millsTestOrPassiveStretch;
  String? maudsleysTest;
  String? tinnelSign;
  String? ulnarNerveCompressionTest;
  Elbow({
    this.historyNote,
    this.palpationNote,
    this.painPlaceNote,
    this.painVasNote,
    this.romFlexionNumber,
    this.romExtensionNumber,
    this.romSupinationNumber,
    this.romPronationNumber,
    this.romNote,
    this.muscleAssessmentNote,
    this.mclStressTest,
    this.lclStressTest,
    this.cozensTestOrResistance,
    this.millsTestOrPassiveStretch,
    this.maudsleysTest,
    this.tinnelSign,
    this.ulnarNerveCompressionTest,
  });

  Elbow copyWith({
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
    return Elbow(
      historyNote: historyNote ?? this.historyNote,
      palpationNote: palpationNote ?? this.palpationNote,
      painPlaceNote: painPlaceNote ?? this.painPlaceNote,
      painVasNote: painVasNote ?? this.painVasNote,
      romFlexionNumber: romFlexionNumber ?? this.romFlexionNumber,
      romExtensionNumber: romExtensionNumber ?? this.romExtensionNumber,
      romSupinationNumber: romSupinationNumber ?? this.romSupinationNumber,
      romPronationNumber: romPronationNumber ?? this.romPronationNumber,
      romNote: romNote ?? this.romNote,
      muscleAssessmentNote: muscleAssessmentNote ?? this.muscleAssessmentNote,
      mclStressTest: mclStressTest ?? this.mclStressTest,
      lclStressTest: lclStressTest ?? this.lclStressTest,
      cozensTestOrResistance:
          cozensTestOrResistance ?? this.cozensTestOrResistance,
      millsTestOrPassiveStretch:
          millsTestOrPassiveStretch ?? this.millsTestOrPassiveStretch,
      maudsleysTest: maudsleysTest ?? this.maudsleysTest,
      tinnelSign: tinnelSign ?? this.tinnelSign,
      ulnarNerveCompressionTest:
          ulnarNerveCompressionTest ?? this.ulnarNerveCompressionTest,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'historyNote': historyNote,
      'palpationNote': palpationNote,
      'painPlaceNote': painPlaceNote,
      'painVasNote': painVasNote,
      'romFlexionNumber': romFlexionNumber,
      'romExtensionNumber': romExtensionNumber,
      'romSupinationNumber': romSupinationNumber,
      'romPronationNumber': romPronationNumber,
      'romNote': romNote,
      'muscleAssessmentNote': muscleAssessmentNote,
      'mclStressTest': mclStressTest,
      'lclStressTest': lclStressTest,
      'cozensTestOrResistance': cozensTestOrResistance,
      'millsTestOrPassiveStretch': millsTestOrPassiveStretch,
      'maudsleysTest': maudsleysTest,
      'tinnelSign': tinnelSign,
      'ulnarNerveCompressionTest': ulnarNerveCompressionTest,
    };
  }

  factory Elbow.fromMap(Map<String, dynamic> map) {
    return Elbow(
      historyNote:
          map['historyNote'] != null ? map['historyNote'] as String : null,
      palpationNote:
          map['palpationNote'] != null ? map['palpationNote'] as String : null,
      painPlaceNote:
          map['painPlaceNote'] != null ? map['painPlaceNote'] as String : null,
      painVasNote:
          map['painVasNote'] != null ? map['painVasNote'] as String : null,
      romFlexionNumber: map['romFlexionNumber'] != null
          ? map['romFlexionNumber'] as int
          : null,
      romExtensionNumber: map['romExtensionNumber'] != null
          ? map['romExtensionNumber'] as int
          : null,
      romSupinationNumber: map['romSupinationNumber'] != null
          ? map['romSupinationNumber'] as int
          : null,
      romPronationNumber: map['romPronationNumber'] != null
          ? map['romPronationNumber'] as int
          : null,
      romNote: map['romNote'] != null ? map['romNote'] as String : null,
      muscleAssessmentNote: map['muscleAssessmentNote'] != null
          ? map['muscleAssessmentNote'] as String
          : null,
      mclStressTest:
          map['mclStressTest'] != null ? map['mclStressTest'] as String : null,
      lclStressTest:
          map['lclStressTest'] != null ? map['lclStressTest'] as String : null,
      cozensTestOrResistance: map['cozensTestOrResistance'] != null
          ? map['cozensTestOrResistance'] as String
          : null,
      millsTestOrPassiveStretch: map['millsTestOrPassiveStretch'] != null
          ? map['millsTestOrPassiveStretch'] as String
          : null,
      maudsleysTest:
          map['maudsleysTest'] != null ? map['maudsleysTest'] as String : null,
      tinnelSign:
          map['tinnelSign'] != null ? map['tinnelSign'] as String : null,
      ulnarNerveCompressionTest: map['ulnarNerveCompressionTest'] != null
          ? map['ulnarNerveCompressionTest'] as String
          : null,
    );
  }

  @override
  String toString() {
    return 'Elbow(historyNote: $historyNote, palpationNote: $palpationNote, painPlaceNote: $painPlaceNote, painVasNote: $painVasNote, romFlexionNumber: $romFlexionNumber, romExtensionNumber: $romExtensionNumber, romSupinationNumber: $romSupinationNumber, romPronationNumber: $romPronationNumber, romNote: $romNote, muscleAssessmentNote: $muscleAssessmentNote, mclStressTest: $mclStressTest, lclStressTest: $lclStressTest, cozensTestOrResistance: $cozensTestOrResistance, millsTestOrPassiveStretch: $millsTestOrPassiveStretch, maudsleysTest: $maudsleysTest, tinnelSign: $tinnelSign, ulnarNerveCompressionTest: $ulnarNerveCompressionTest)';
  }
}
