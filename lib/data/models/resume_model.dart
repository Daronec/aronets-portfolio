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
  final int? salary;

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
    this.salary,
  });

  factory Resume.fromFirestore(Map<String, dynamic>? data) {
    return Resume(
      name: data?['name'],
      address: data?['address'],
      birthDate: data?['birth_date'].toString(),
      phone: data?['phone'],
      email: data?['email'],
      employment: data?['employment'],
      gender: data?['gender'],
      nationality: data?['nationality'],
      schedule: data?['schedule'],
      specialization: data?['specialization'],
      timeBeforeWork: data?['time_before_work'],
      relocation: data?['relocation'],
      salary: data?['salary'],
      projectList: data?['projects'] is Iterable
          ? List<Project>.from(
              data!["projects"].map((x) => Project.fromFirestore(x)),
            )
          : null,
      educationList: data?['educations'] is Iterable
          ? List<Education>.from(
              data!["educations"].map((x) => Education.fromFirestore(x)),
            )
          : null,
      workList: data?['works'] is Iterable
          ? List<Work>.from(
              data!["works"].map((x) => Work.fromFirestore(x)),
            )
          : null,
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
      if (educationList != null) "educations": educationList,
      if (salary != null) "salary": salary,
    };
  }
}

class Project {
  final int? id;
  final String? description;
  final String? position;
  final String? stack;
  final String? tasks;
  final int? year;

  Project({
    this.id,
    this.description,
    this.position,
    this.stack,
    this.tasks,
    this.year,
  });

  factory Project.fromFirestore(Map<String, dynamic>? data) {
    return Project(
      id: data?['id'],
      description: data?['description'],
      position: data?['position'],
      stack: data?['stack'],
      tasks: data?['tasks'],
      year: data?['year'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (id != null) "id": id,
      if (description != null) "description": description,
      if (position != null) "position": position,
      if (stack != null) "stack": stack,
      if (tasks != null) "tasks": tasks,
      if (year != null) "year": year,
    };
  }
}

class Work {
  final int? id;
  final DateTime? startDate;
  final DateTime? endDate;
  final String? company;
  final String? city;
  final String? position;
  final String? tasks;

  Work({
    this.id,
    this.startDate,
    this.endDate,
    this.company,
    this.city,
    this.position,
    this.tasks,
  });

  factory Work.fromFirestore(Map<String, dynamic>? data) {
    return Work(
      startDate: data?['start_date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(data!['start_date'] as int)
          : null,
      endDate: data?['end_date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(data!['end_date'] as int)
          : null,
      company: data?['company'],
      city: data?['city'],
      position: data?['position'],
      tasks: data?['tasks'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (startDate != null) "start_date": startDate,
      if (endDate != null) "end_date": endDate,
      if (company != null) "company": company,
      if (city != null) "city": city,
      if (position != null) "position": position,
      if (tasks != null) "tasks": tasks,
    };
  }
}

class Education {
  final int? id;
  final String? city;
  final String? specialization;
  final String? institution;
  final int? year;
  final String? degree;

  Education({
    this.id,
    this.city,
    this.specialization,
    this.institution,
    this.year,
    this.degree,
  });

  factory Education.fromFirestore(Map<String, dynamic>? data) {
    return Education(
      id: data?['id'],
      city: data?['city'],
      specialization: data?['specialization'],
      institution: data?['institution'],
      year: data?['year'],
      degree: data?['degree'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (id != null) "id": id,
      if (city != null) "city": city,
      if (institution != null) "institution": institution,
      if (year != null) "year": year,
      if (specialization != null) "specialization": specialization,
      if (degree != null) "degree": degree,
    };
  }
}
