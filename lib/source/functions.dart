String getGender(String gender) {
  String value = gender;
  switch (value) {
    case 'male':
      value = 'Мужчина';
      break;
    case 'female':
      value = 'Женщина';
      break;
  }
  return value;
}
