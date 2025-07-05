class Movie {
  late String title;
  late String studioName;
  late String? rating;
  //using optional named parameter
  Movie({required this.title, required this.studioName, String? rating}) {
    this.rating = rating ?? 'PG';
  }
  //method to return all the "PG" rating movies
  // List<Movie> getPG(List<Movie> checkList) {
  //   List<Movie> newList = [];
  //   checkList.forEach((val) {
  //     if (val.rating == "PG") {
  //       newList.add(val);
  //     }
  //   });
  //   checkList=newList;
  //   return checkList;
  // }
  //shourtcut of the function above
  List<Movie> getPG(List<Movie> checkList) =>
      checkList.where((val) => val.rating == "PG").toList();

  //customize printing style
  // Add this method to customize printing
  @override
  String toString() {
    return 'title: $title, studio: $studioName, rating: $rating)';
  }
}

void main() {
  Movie film_1 = Movie(
    title: "Casino Royale",
    studioName: "Eon Productions",
    rating: "PG13",
  );
  Movie film_2 = Movie(title: "GIJOY", studioName: "IBO");

  List<Movie> checkList = [film_1, film_2];

  //print the new list of "PPG"
  print('${film_1.getPG(checkList)}');
}


///I was having an error that the output is [Instance of 'Movie']
///So i have searched on it and i found out that i should add another method to print the list in a propper style
///