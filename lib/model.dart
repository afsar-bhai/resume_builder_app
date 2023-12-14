class UserProfile {
  String name;
  String email;
  String details;
  String mobileNumber;
  String graduation;
  int passingYear;
  String workExperience;
  String currentPosition;
  double graduationGPA;
  String intermediate;
  String highSchool;
  String currentCGPA;
  String programmingLanguages;
  String relevantSkills;
  String achievements;
  String extraCurricular;

  UserProfile({
    required this.name,
    required this.email,
    required this.details,
    required this.mobileNumber,
    required this.graduation,
    required this.passingYear,
    required this.workExperience,
    required this.currentPosition,
    required this.graduationGPA,
    required this.intermediate,
    required this.highSchool,
    required this.currentCGPA,
    required this.programmingLanguages,
    required this.relevantSkills,
    required this.achievements,
    required this.extraCurricular,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      name: json['name'],
      email: json['email'],
      details: json['details'],
      mobileNumber: json['mobileNumber'],
      graduation: json['graduation'],
      passingYear: json['passingYear'],
      workExperience: json['workExperience'],
      currentPosition: json['currentPosition'],
      graduationGPA: json['graduationGPA'],
      intermediate: json['intermediate'],
      highSchool: json['highSchool'],
      currentCGPA: json['currentCGPA'],
      programmingLanguages: json['programmingLanguages'],
      relevantSkills: json['relevantSkills'],
      achievements: json['achievements'],
      extraCurricular: json['extraCurricular'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'details': details,
      'mobileNumber': mobileNumber,
      'graduation': graduation,
      'passingYear': passingYear,
      'workExperience': workExperience,
      'currentPosition': currentPosition,
      'graduationGPA': graduationGPA,
      'intermediate': intermediate,
      'highSchool': highSchool,
      'currentCGPA': currentCGPA,
      'programmingLanguages': programmingLanguages,
      'relevantSkills': relevantSkills,
      'achievements': achievements,
      'extraCurricular': extraCurricular,
    };
  }
}
