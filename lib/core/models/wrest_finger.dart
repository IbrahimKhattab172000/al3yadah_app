class WrestFinger {
  String? proximalRadiatingPain;
  String? historyNote;
  String? painPlaceOrNerveDistrbutionNote;
  String? vasNumber;
  String? palpationNote;
  int? romFlexionNumber;
  int? romExtensionNumber;
  String? romNote;
  String? muscleTestNote;
  String? thumbIsFree;
  String? thumbIsFreeNote;
  String? fingersIsFree;
  String? fingersIsFreeNote;
  String? ctsPhalenTest;
  String? ctsTinnelSign;
  String? ctsNote;
  String? finkelsteinTest;
  String? medialNerve;
  String? ulnarNerve;
  String? radialNerve;
  String? neuroDynamictestNote;
  WrestFinger({
    this.proximalRadiatingPain,
    this.historyNote,
    this.painPlaceOrNerveDistrbutionNote,
    this.vasNumber,
    this.palpationNote,
    this.romFlexionNumber,
    this.romExtensionNumber,
    this.romNote,
    this.muscleTestNote,
    this.thumbIsFree,
    this.thumbIsFreeNote,
    this.fingersIsFree,
    this.fingersIsFreeNote,
    this.ctsPhalenTest,
    this.ctsTinnelSign,
    this.ctsNote,
    this.finkelsteinTest,
    this.medialNerve,
    this.ulnarNerve,
    this.radialNerve,
    this.neuroDynamictestNote,
  });

  WrestFinger copyWith({
    String? proximalRadiatingPain,
    String? historyNote,
    String? painPlaceOrNerveDistrbutionNote,
    String? vasNumber,
    String? palpationNote,
    int? romFlexionNumber,
    int? romExtensionNumber,
    String? romNote,
    String? muscleTestNote,
    String? thumbIsFree,
    String? thumbIsFreeNote,
    String? fingersIsFree,
    String? fingersIsFreeNote,
    String? ctsPhalenTest,
    String? ctsTinnelSign,
    String? ctsNote,
    String? finkelsteinTest,
    String? medialNerve,
    String? ulnarNerve,
    String? radialNerve,
    String? neuroDynamictestNote,
  }) {
    return WrestFinger(
      proximalRadiatingPain:
          proximalRadiatingPain ?? this.proximalRadiatingPain,
      historyNote: historyNote ?? this.historyNote,
      painPlaceOrNerveDistrbutionNote: painPlaceOrNerveDistrbutionNote ??
          this.painPlaceOrNerveDistrbutionNote,
      vasNumber: vasNumber ?? this.vasNumber,
      palpationNote: palpationNote ?? this.palpationNote,
      romFlexionNumber: romFlexionNumber ?? this.romFlexionNumber,
      romExtensionNumber: romExtensionNumber ?? this.romExtensionNumber,
      romNote: romNote ?? this.romNote,
      muscleTestNote: muscleTestNote ?? this.muscleTestNote,
      thumbIsFree: thumbIsFree ?? this.thumbIsFree,
      thumbIsFreeNote: thumbIsFreeNote ?? this.thumbIsFreeNote,
      fingersIsFree: fingersIsFree ?? this.fingersIsFree,
      fingersIsFreeNote: fingersIsFreeNote ?? this.fingersIsFreeNote,
      ctsPhalenTest: ctsPhalenTest ?? this.ctsPhalenTest,
      ctsTinnelSign: ctsTinnelSign ?? this.ctsTinnelSign,
      ctsNote: ctsNote ?? this.ctsNote,
      finkelsteinTest: finkelsteinTest ?? this.finkelsteinTest,
      medialNerve: medialNerve ?? this.medialNerve,
      ulnarNerve: ulnarNerve ?? this.ulnarNerve,
      radialNerve: radialNerve ?? this.radialNerve,
      neuroDynamictestNote: neuroDynamictestNote ?? this.neuroDynamictestNote,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'proximalRadiatingPain': proximalRadiatingPain,
      'historyNote': historyNote,
      'painPlaceOrNerveDistrbutionNote': painPlaceOrNerveDistrbutionNote,
      'vasNumber': vasNumber,
      'palpationNote': palpationNote,
      'romFlexionNumber': romFlexionNumber,
      'romExtensionNumber': romExtensionNumber,
      'romNote': romNote,
      'muscleTestNote': muscleTestNote,
      'thumbIsFree': thumbIsFree,
      'thumbIsFreeNote': thumbIsFreeNote,
      'fingersIsFree': fingersIsFree,
      'fingersIsFreeNote': fingersIsFreeNote,
      'ctsPhalenTest': ctsPhalenTest,
      'ctsTinnelSign': ctsTinnelSign,
      'ctsNote': ctsNote,
      'finkelsteinTest': finkelsteinTest,
      'medialNerve': medialNerve,
      'ulnarNerve': ulnarNerve,
      'radialNerve': radialNerve,
      'neuroDynamictestNote': neuroDynamictestNote,
    };
  }

  factory WrestFinger.fromMap(Map<String, dynamic> map) {
    return WrestFinger(
      proximalRadiatingPain: map['proximalRadiatingPain'] != null
          ? map['proximalRadiatingPain'] as String
          : null,
      historyNote:
          map['historyNote'] != null ? map['historyNote'] as String : null,
      painPlaceOrNerveDistrbutionNote:
          map['painPlaceOrNerveDistrbutionNote'] != null
              ? map['painPlaceOrNerveDistrbutionNote'] as String
              : null,
      vasNumber: map['vasNumber'] != null ? map['vasNumber'] as String : null,
      palpationNote:
          map['palpationNote'] != null ? map['palpationNote'] as String : null,
      romFlexionNumber: map['romFlexionNumber'] != null
          ? map['romFlexionNumber'] as int
          : null,
      romExtensionNumber: map['romExtensionNumber'] != null
          ? map['romExtensionNumber'] as int
          : null,
      romNote: map['romNote'] != null ? map['romNote'] as String : null,
      muscleTestNote: map['muscleTestNote'] != null
          ? map['muscleTestNote'] as String
          : null,
      thumbIsFree:
          map['thumbIsFree'] != null ? map['thumbIsFree'] as String : null,
      thumbIsFreeNote: map['thumbIsFreeNote'] != null
          ? map['thumbIsFreeNote'] as String
          : null,
      fingersIsFree:
          map['fingersIsFree'] != null ? map['fingersIsFree'] as String : null,
      fingersIsFreeNote: map['fingersIsFreeNote'] != null
          ? map['fingersIsFreeNote'] as String
          : null,
      ctsPhalenTest:
          map['ctsPhalenTest'] != null ? map['ctsPhalenTest'] as String : null,
      ctsTinnelSign:
          map['ctsTinnelSign'] != null ? map['ctsTinnelSign'] as String : null,
      ctsNote: map['ctsNote'] != null ? map['ctsNote'] as String : null,
      finkelsteinTest: map['finkelsteinTest'] != null
          ? map['finkelsteinTest'] as String
          : null,
      medialNerve:
          map['medialNerve'] != null ? map['medialNerve'] as String : null,
      ulnarNerve:
          map['ulnarNerve'] != null ? map['ulnarNerve'] as String : null,
      radialNerve:
          map['radialNerve'] != null ? map['radialNerve'] as String : null,
      neuroDynamictestNote: map['neuroDynamictestNote'] != null
          ? map['neuroDynamictestNote'] as String
          : null,
    );
  }
}
