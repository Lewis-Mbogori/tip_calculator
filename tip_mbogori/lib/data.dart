
List subjects = [
  'Maths'
  'English'
  'Kiswahili'
  'Chemistry'
  'Biology'
  'Physics'
  'CRE'
];

String determineGrade(double average){
  if(average >= 90){
    return 'A';
  }
  else if (average >= 60){
    return 'B';
  }
    else if (average >= 40){
    return 'c';
  }
    else if (average >= 20){
    return 'd';
  }
    else {
      return'F';
    }
  }
