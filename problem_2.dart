class Holiday {
  late String name;
  late int day;
  late String month;
  //constractor that implements all the data as arguments
  Holiday(this.name, this.day, this.month);
  bool inSameMonth(Holiday obj_1, Holiday obj_2) => obj_1.month == obj_2.month;
  double avgDate(List<Holiday> listOfObjects) {
    int sum = 0;
    listOfObjects.forEach((value) {
      sum += value.day;
    });
    //return the average
    return (sum / listOfObjects.length);
  }
}

void main() {
  Holiday firstHoliday = Holiday('independenceDay', 4, "july"); //sample input
  Holiday secondHoliday = Holiday("30My", 30, "may"); // anothr sample input
  print(
    firstHoliday.inSameMonth(firstHoliday, secondHoliday),
  ); //check if they are in the same month or not
  List<Holiday> listOfHolidays = [
    firstHoliday,
    secondHoliday,
  ]; //make a list to check the function avgDate
  print(firstHoliday.avgDate(listOfHolidays));
}
