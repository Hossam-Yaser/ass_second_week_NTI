//abstract class Parking {
// void parkCar();
// void unParkCar();
// int capacityParking();
// double calculateCost(int hours);
// void doPayment();
// }
// class PaidParking implements Parking {
// @override
// double calculateCost(int hours) {
// return hours * 20;
// }
// @override
// int capacityParking() {
// return 5;
// }
// @override
// void doPayment() {
// print("Paid Parking");
// }
// @override
// void parkCar() {
// print("Done Parking");
// }
// @override
// void unParkCar() {
// print("Done UnParking");
// }
// }
// class FreeParking implements Parking {
// @override
// int capacityParking() {
// return 10;
// }
// @override
// double calculateCost(int hours) {
// return hours * 0;
// }
// @override
// void doPayment() {}
// @override
// void parkCar() {
// print("Done Parking");
// }
// @override
// void unParkCar() {
// print("Done UnParking");
// }
// }

// ********************************************************************************************************************
//this code violate the solid principle of Interface Segregation Principle (ISP) because the Parking interface has methods that are not applicable to all implementations.
// To adhere to the Interface Segregation Principle, we can split the Parking interface into smaller, more specific interfaces that only include the methods relevant to each implementation. This way, classes will only implement the methods they actually use.
// abstract class Parking {
//   void parkCar();
//   void unParkCar();
// }
