void main() {
  List<String> favoriteHobbies = []; 

  print('My Favorite Hobbies:');
  print('Initial list: ${favoriteHobbies.toString()}');

  favoriteHobbies.add('Writing poem');
  favoriteHobbies.add('Reading Self help books');
  favoriteHobbies.add('Listening Mezmur');

  print('Updated list : ${favoriteHobbies.toString()}');
  favoriteHobbies.remove('Writing poem');

  print('Updated list: ${favoriteHobbies.toString()}');


  favoriteHobbies.sort();

  print('Is the list empty? ${favoriteHobbies.isEmpty}');
}
