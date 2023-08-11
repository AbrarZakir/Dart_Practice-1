void main() {
  List <int> given_list = [85, 92, 78, 65, 88, 72];
  int sum = 0, count = 0, mark = 0;
  double avg = 0;
  for (int e in given_list){
    sum = sum + e;
    count = count + 1;
  }
  avg = sum / count;
  print("Student's average grade: $avg");
  mark = avg.round();
  print("Rounded average: $mark");
  if (mark >= 70){
    print("Passed");
  }
  else {
    print("Failed");
  }

}