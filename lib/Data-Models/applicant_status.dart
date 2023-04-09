class ApplicantStatus {
  ApplicantStatus({
    required this.softwareDeveloper,
    required this.cloudDeveloper,
    required this.businessDeveloper,
    required this.accountsManager,
    required this.devopsEngineer,
    required this.qualityAssurance,
  });

  final JobType softwareDeveloper;
  final JobType cloudDeveloper;
  final JobType businessDeveloper;
  final JobType accountsManager;
  final JobType devopsEngineer;
  final JobType qualityAssurance;

  factory ApplicantStatus.fromJson(Map<String, dynamic> json) =>
      ApplicantStatus(
        softwareDeveloper: JobType.fromJson(json["softwareDeveloper"]),
        cloudDeveloper: JobType.fromJson(json["cloudDeveloper"]),
        businessDeveloper: JobType.fromJson(json["businessDeveloper"]),
        accountsManager: JobType.fromJson(json["accountsManager"]),
        devopsEngineer: JobType.fromJson(json["devopsEngineer"]),
        qualityAssurance: JobType.fromJson(json["qualityAssurance"]),
      );

  Map<String, dynamic> toJson() => {
        "softwareDeveloper": softwareDeveloper.toJson(),
        "cloudDeveloper": cloudDeveloper.toJson(),
        "businessDeveloper": businessDeveloper.toJson(),
        "accountsManager": accountsManager.toJson(),
        "devopsEngineer": devopsEngineer.toJson(),
        "qualityAssurance": qualityAssurance.toJson(),
      };
}

//base class for each of the jobs
class JobType {
  JobType({
    required this.New,
    required this.shortlisted,
    required this.approved,
  });

  final List<ApplicantData> New;
  final List<ApplicantData> shortlisted;
  final List<ApplicantData> approved;

  factory JobType.fromJson(Map<String, dynamic> json) => JobType(
        New: List<ApplicantData>.from(
            json["new"].map((x) => ApplicantData.fromJson(x))),
        shortlisted: List<ApplicantData>.from(
            json["shortlisted"].map((x) => ApplicantData.fromJson(x))),
        approved: List<ApplicantData>.from(
            json["approved"].map((x) => ApplicantData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "new": List<dynamic>.from(New.map((x) => x.toJson())),
        "shortlisted": List<dynamic>.from(shortlisted.map((x) => x.toJson())),
        "approved": List<dynamic>.from(approved.map((x) => x.toJson())),
      };
}

//this will be base for each applicant data
class ApplicantData {
  ApplicantData({
    required this.name,
    required this.position,
    required this.imageAssetPath,
    required this.skills,
  });

  final String name;
  final String position;
  final String imageAssetPath;
  final List<String> skills;

  factory ApplicantData.fromJson(Map<String, dynamic> json) => ApplicantData(
        name: json["name"],
        position: json["position"],
        imageAssetPath: json["imageAssetPath"],
        skills: List<String>.from(json["skills"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "position": position,
        "imageAssetPath": imageAssetPath,
        "skills": List<dynamic>.from(skills.map((x) => x)),
      };

  @override
  String toString() {
    return '{ name: $name, position: $position, imageAssetPath: $imageAssetPath, skills: $skills }';
  }
}
