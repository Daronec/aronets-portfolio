import 'package:cloud_firestore/cloud_firestore.dart';

class Resume {
  final String? name;
  final String? address;
  final String? birthDate;
  final String? email;
  final String? employment;
  final String? gender;
  final String? nationality;
  final String? phone;
  final String? relocation;
  final String? schedule;
  final String? specialization;
  final String? timeBeforeWork;
  final List<Project>? projectList;
  final List<Work>? workList;
  final List<Education>? educationList;

  Resume({
    this.name,
    this.address,
    this.birthDate,
    this.email,
    this.employment,
    this.gender,
    this.nationality,
    this.phone,
    this.relocation,
    this.schedule,
    this.specialization,
    this.timeBeforeWork,
    this.projectList,
    this.workList,
    this.educationList,
  });

  factory Resume.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return Resume(
      name: data?['name'],
      address: data?['address'],
      birthDate: data?['birth_date'],
      email: data?['email'],
      employment: data?['employment'],
      gender: data?['gender'],
      nationality: data?['nationality'],
      schedule: data?['schedule'],
      specialization: data?['specialization'],
      timeBeforeWork: data?['time_before_work'],
      projectList:
          data?['projects'] is Iterable ? List.from(data?['projects']) : null,
      educationList:
          data?['education'] is Iterable ? List.from(data?['education']) : null,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (name != null) "name": name,
      if (address != null) "address": address,
      if (birthDate != null) "birth_date": birthDate,
      if (email != null) "email": email,
      if (employment != null) "employment": employment,
      if (gender != null) "gender": gender,
      if (nationality != null) "nationality": nationality,
      if (schedule != null) "schedule": schedule,
      if (specialization != null) "specialization": specialization,
      if (timeBeforeWork != null) "time_before_work": timeBeforeWork,
      if (projectList != null) "projects": projectList,
      if (workList != null) "works": workList,
      if (educationList != null) "works": educationList,
    };
  }
}

class Project {
  final String? description;
  final String? position;
  final String? stack;
  final String? tasks;

  Project({
    this.description,
    this.position,
    this.stack,
    this.tasks,
  });

  factory Project.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return Project(
      description: data?['description'],
      position: data?['position'],
      stack: data?['stack'],
      tasks: data?['tasks'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (description != null) "description": description,
      if (position != null) "position": position,
      if (stack != null) "stack": stack,
      if (tasks != null) "tasks": tasks,
    };
  }
}

class Work {
  final String? period;
  final String? company;
  final String? city;
  final String? position;
  final String? tasks;

  Work({
    this.period,
    this.company,
    this.city,
    this.position,
    this.tasks,
  });

  factory Work.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return Work(
      period: data?['period'],
      company: data?['company'],
      city: data?['city'],
      position: data?['position'],
      tasks: data?['tasks'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (period != null) "period": period,
      if (company != null) "company": company,
      if (city != null) "city": city,
      if (position != null) "position": position,
      if (tasks != null) "tasks": tasks,
    };
  }
}

class Education {
  final String? city;
  final String? specialization;
  final String? institution;
  final String? year;
  final String? degree;

  Education({
    this.city,
    this.specialization,
    this.institution,
    this.year,
    this.degree,
  });

  factory Education.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return Education(
      city: data?['city'],
      specialization: data?['specialization'],
      institution: data?['institution'],
      year: data?['year'],
      degree: data?['degree'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (city != null) "city": city,
      if (institution != null) "institution": institution,
      if (year != null) "year": year,
      if (specialization != null) "specialization": specialization,
      if (degree != null) "degree": degree,
    };
  }
}
