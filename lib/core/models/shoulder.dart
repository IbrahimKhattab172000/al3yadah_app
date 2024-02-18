class Shoulder {
  bool cervicalFree;
  String history;
  String suspectDiagnose;
  String place;
  String vas;
  String palpation;
  String flexionNote;
  int flexionNum;
  String extensionNote;
  int extensionNum;
  String abdNote;
  int abdNum;
  String erNote;
  int erNum;
  String irNote;
  int irNum;
  String hawkinsTest;
  String neerTest;
  String posterior;
  String impingementNote;
  String apprehension;
  String relocation;
  String instabilityNote;
  String bellyOff;
  String irls;
  String erls;
  String rcTearNote;
  String scapularAssistanceTest;
  String scapularRetractionTest;
  String acromioTest;
  String obrienTest;
  String passiveTest;
  String modifiedTest;

  Shoulder({
    required this.cervicalFree,
    required this.history,
    required this.suspectDiagnose,
    required this.place,
    required this.vas,
    required this.palpation,
    required this.flexionNote,
    required this.flexionNum,
    required this.extensionNote,
    required this.extensionNum,
    required this.abdNote,
    required this.abdNum,
    required this.erNote,
    required this.erNum,
    required this.irNote,
    required this.irNum,
    required this.hawkinsTest,
    required this.neerTest,
    required this.posterior,
    required this.impingementNote,
    required this.apprehension,
    required this.relocation,
    required this.instabilityNote,
    required this.bellyOff,
    required this.irls,
    required this.erls,
    required this.rcTearNote,
    required this.scapularAssistanceTest,
    required this.scapularRetractionTest,
    required this.acromioTest,
    required this.obrienTest,
    required this.passiveTest,
    required this.modifiedTest,
  });

  factory Shoulder.fromJson(Map<String, dynamic> json) {
    return Shoulder(
      cervicalFree: json['cervicalFree'],
      history: json['history'],
      suspectDiagnose: json['suspectDiagnose'],
      place: json['place'],
      vas: json['vas'],
      palpation: json['palpation'],
      flexionNote: json['flexionNote'],
      flexionNum: json['flexionNum'],
      extensionNote: json['extensionNote'],
      extensionNum: json['extensionNum'],
      abdNote: json['abdNote'],
      abdNum: json['abdNum'],
      erNote: json['erNote'],
      erNum: json['erNum'],
      irNote: json['irNote'],
      irNum: json['irNum'],
      hawkinsTest: json['hawkinsTest'],
      neerTest: json['neerTest'],
      posterior: json['posterior'],
      impingementNote: json['impingementNote'],
      apprehension: json['apprehension'],
      relocation: json['relocation'],
      instabilityNote: json['instabilityNote'],
      bellyOff: json['bellyOff'],
      irls: json['irls'],
      erls: json['erls'],
      rcTearNote: json['rcTearNote'],
      scapularAssistanceTest: json['scapularAssistanceTest'],
      scapularRetractionTest: json['scapularRetractionTest'],
      acromioTest: json['acromioTest'],
      obrienTest: json['obrienTest'],
      passiveTest: json['passiveTest'],
      modifiedTest: json['modifiedTest'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cervicalFree': cervicalFree,
      'history': history,
      'suspectDiagnose': suspectDiagnose,
      'place': place,
      'vas': vas,
      'palpation': palpation,
      'flexionNote': flexionNote,
      'flexionNum': flexionNum,
      'extensionNote': extensionNote,
      'extensionNum': extensionNum,
      'abdNote': abdNote,
      'abdNum': abdNum,
      'erNote': erNote,
      'erNum': erNum,
      'irNote': irNote,
      'irNum': irNum,
      'hawkinsTest': hawkinsTest,
      'neerTest': neerTest,
      'posterior': posterior,
      'impingementNote': impingementNote,
      'apprehension': apprehension,
      'relocation': relocation,
      'instabilityNote': instabilityNote,
      'bellyOff': bellyOff,
      'irls': irls,
      'erls': erls,
      'rcTearNote': rcTearNote,
      'scapularAssistanceTest': scapularAssistanceTest,
      'scapularRetractionTest': scapularRetractionTest,
      'acromioTest': acromioTest,
      'obrienTest': obrienTest,
      'passiveTest': passiveTest,
      'modifiedTest': modifiedTest,
    };
  }

  toMap() {}

  static fromMap(Map<String, dynamic> map) {}
}
