class Knee {
  bool? freeHip;
  bool? freeLumber;
  String? historyNote;
  String? painPlace;
  String? painVas;
  String? painPalpation;
  int? roomFlextionNum;
  String? roomFlextionNote;
  int? roomExtensionNum;
  String? roonExtensionNote;
  String? muscleTestNote;
  String? anteriorDrawer;
  String? lachman;
  String? aclNote;
  String? mclStressTest;
  String? lclStressTest;
  String? posteriorDrawer;
  String? mcmuray;
  String? apley;
  String? thessaly;
  String? thessalyNote;
  String? apprehension;
  String? noble;
  String? pattelarEffussion;
  String? meniscesNote;
  String? treatments;
  Knee({
    this.freeHip,
    this.freeLumber,
    this.historyNote,
    this.painPlace,
    this.painVas,
    this.painPalpation,
    this.roomFlextionNum,
    this.roomFlextionNote,
    this.roomExtensionNum,
    this.roonExtensionNote,
    this.muscleTestNote,
    this.anteriorDrawer,
    this.lachman,
    this.aclNote,
    this.mclStressTest,
    this.lclStressTest,
    this.posteriorDrawer,
    this.mcmuray,
    this.apley,
    this.thessaly,
    this.thessalyNote,
    this.apprehension,
    this.noble,
    this.pattelarEffussion,
    this.meniscesNote,
    this.treatments,
  });

  Knee copyWith({
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
    return Knee(
      freeHip: freeHip ?? this.freeHip,
      freeLumber: freeLumber ?? this.freeLumber,
      historyNote: historyNote ?? this.historyNote,
      painPlace: painPlace ?? this.painPlace,
      painVas: painVas ?? this.painVas,
      painPalpation: painPalpation ?? this.painPalpation,
      roomFlextionNum: roomFlextionNum ?? this.roomFlextionNum,
      roomFlextionNote: roomFlextionNote ?? this.roomFlextionNote,
      roomExtensionNum: roomExtensionNum ?? this.roomExtensionNum,
      roonExtensionNote: roonExtensionNote ?? this.roonExtensionNote,
      muscleTestNote: muscleTestNote ?? this.muscleTestNote,
      anteriorDrawer: anteriorDrawer ?? this.anteriorDrawer,
      lachman: lachman ?? this.lachman,
      aclNote: aclNote ?? this.aclNote,
      mclStressTest: mclStressTest ?? this.mclStressTest,
      lclStressTest: lclStressTest ?? this.lclStressTest,
      posteriorDrawer: posteriorDrawer ?? this.posteriorDrawer,
      mcmuray: mcmuray ?? this.mcmuray,
      apley: apley ?? this.apley,
      thessaly: thessaly ?? this.thessaly,
      thessalyNote: thessalyNote ?? this.thessalyNote,
      apprehension: apprehension ?? this.apprehension,
      noble: noble ?? this.noble,
      pattelarEffussion: pattelarEffussion ?? this.pattelarEffussion,
      meniscesNote: meniscesNote ?? this.meniscesNote,
      treatments: treatments ?? this.treatments,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'freeHip': freeHip,
      'freeLumber': freeLumber,
      'historyNote': historyNote,
      'painPlace': painPlace,
      'painVas': painVas,
      'painPalpation': painPalpation,
      'roomFlextionNum': roomFlextionNum,
      'roomFlextionNote': roomFlextionNote,
      'roomExtensionNum': roomExtensionNum,
      'roonExtensionNote': roonExtensionNote,
      'muscleTestNote': muscleTestNote,
      'anteriorDrawer': anteriorDrawer,
      'lachman': lachman,
      'aclNote': aclNote,
      'mclStressTest': mclStressTest,
      'lclStressTest': lclStressTest,
      'posteriorDrawer': posteriorDrawer,
      'mcmuray': mcmuray,
      'apley': apley,
      'thessaly': thessaly,
      'thessalyNote': thessalyNote,
      'apprehension': apprehension,
      'noble': noble,
      'pattelarEffussion': pattelarEffussion,
      'meniscesNote': meniscesNote,
      'treatments': treatments,
    };
  }

  factory Knee.fromMap(Map<String, dynamic> map) {
    return Knee(
      freeHip: map['freeHip'] != null ? map['freeHip'] as bool : null,
      freeLumber: map['freeLumber'] != null ? map['freeLumber'] as bool : null,
      historyNote:
          map['historyNote'] != null ? map['historyNote'] as String : null,
      painPlace: map['painPlace'] != null ? map['painPlace'] as String : null,
      painVas: map['painVas'] != null ? map['painVas'] as String : null,
      painPalpation:
          map['painPalpation'] != null ? map['painPalpation'] as String : null,
      roomFlextionNum:
          map['roomFlextionNum'] != null ? map['roomFlextionNum'] as int : null,
      roomFlextionNote: map['roomFlextionNote'] != null
          ? map['roomFlextionNote'] as String
          : null,
      roomExtensionNum: map['roomExtensionNum'] != null
          ? map['roomExtensionNum'] as int
          : null,
      roonExtensionNote: map['roonExtensionNote'] != null
          ? map['roonExtensionNote'] as String
          : null,
      muscleTestNote: map['muscleTestNote'] != null
          ? map['muscleTestNote'] as String
          : null,
      anteriorDrawer: map['anteriorDrawer'] != null
          ? map['anteriorDrawer'] as String
          : null,
      lachman: map['lachman'] != null ? map['lachman'] as String : null,
      aclNote: map['aclNote'] != null ? map['aclNote'] as String : null,
      mclStressTest:
          map['mclStressTest'] != null ? map['mclStressTest'] as String : null,
      lclStressTest:
          map['lclStressTest'] != null ? map['lclStressTest'] as String : null,
      posteriorDrawer: map['posteriorDrawer'] != null
          ? map['posteriorDrawer'] as String
          : null,
      mcmuray: map['mcmuray'] != null ? map['mcmuray'] as String : null,
      apley: map['apley'] != null ? map['apley'] as String : null,
      thessaly: map['thessaly'] != null ? map['thessaly'] as String : null,
      thessalyNote:
          map['thessalyNote'] != null ? map['thessalyNote'] as String : null,
      apprehension:
          map['apprehension'] != null ? map['apprehension'] as String : null,
      noble: map['noble'] != null ? map['noble'] as String : null,
      pattelarEffussion: map['pattelarEffussion'] != null
          ? map['pattelarEffussion'] as String
          : null,
      meniscesNote:
          map['meniscesNote'] != null ? map['meniscesNote'] as String : null,
      treatments:
          map['treatments'] != null ? map['treatments'] as String : null,
    );
  }

  @override
  String toString() {
    return 'Knee(freeHip: $freeHip, freeLumber: $freeLumber, historyNote: $historyNote, painPlace: $painPlace, painVas: $painVas, painPalpation: $painPalpation, roomFlextionNum: $roomFlextionNum, roomFlextionNote: $roomFlextionNote, roomExtensionNum: $roomExtensionNum, roonExtensionNote: $roonExtensionNote, muscleTestNote: $muscleTestNote, anteriorDrawer: $anteriorDrawer, lachman: $lachman, aclNote: $aclNote, mclStressTest: $mclStressTest, lclStressTest: $lclStressTest, posteriorDrawer: $posteriorDrawer, mcmuray: $mcmuray, apley: $apley, thessaly: $thessaly, menisces: $thessalyNote, apprehension: $apprehension, noble: $noble, pattelarEffussion: $pattelarEffussion, apprehensionNote: $meniscesNote, treatments: $treatments)';
  }
}
