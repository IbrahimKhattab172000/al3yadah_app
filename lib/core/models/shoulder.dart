class Shoulder {
  bool? cervicalFree;
  String? history;
  String? suspectDiagnose;
  String? place;
  String? vas;
  String? palpation;
  String? flexionNote;
  int? flexionNum;
  String? extensionNote;
  int? extensionNum;
  String? abdNote;
  int? abdNum;
  String? addNote;
  int? addNum;
  String? erNote;
  int? erNum;
  String? irNote;
  int? irNum;
  String? hawkinsTest;
  String? neerTest;
  String? posterior;
  String? impingementNote;
  String? apprehension;
  String? relocation;
  String? instabilityNote;
  String? bellyOff;
  String? irls;
  String? erls;
  String? rcTearNote;
  String? scapularAssistanceTest;
  String? scapularRetractionTest;
  String? scapularStabilityNote;
  String? acromioTest;
  String? obrienTest;
  String? passiveTest;
  String? modifiedTest;
  String? obrienTestNote;
  String? treatmentNote;

  Shoulder({
    this.cervicalFree,
    this.history,
    this.suspectDiagnose,
    this.place,
    this.vas,
    this.palpation,
    this.flexionNote,
    this.flexionNum,
    this.extensionNote,
    this.extensionNum,
    this.abdNote,
    this.abdNum,
    this.addNote,
    this.addNum,
    this.erNote,
    this.erNum,
    this.irNote,
    this.irNum,
    this.hawkinsTest,
    this.neerTest,
    this.posterior,
    this.impingementNote,
    this.apprehension,
    this.relocation,
    this.instabilityNote,
    this.bellyOff,
    this.irls,
    this.erls,
    this.rcTearNote,
    this.scapularAssistanceTest,
    this.scapularRetractionTest,
    this.acromioTest,
    this.obrienTest,
    this.passiveTest,
    this.modifiedTest,
    this.obrienTestNote,
    this.scapularStabilityNote,
    this.treatmentNote,
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
      obrienTestNote: json['obrienTestNote'],
      scapularStabilityNote: json['scapularStabilityNote'],
      treatmentNote: json['treatmentNote'],
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
      'obrienTestNote': obrienTestNote,
      'scapularStabilityNote': scapularStabilityNote,
      'treatmentNote': treatmentNote,
    };
  }

  toMap() {}

  static fromMap(Map<String, dynamic> map) {}
}
