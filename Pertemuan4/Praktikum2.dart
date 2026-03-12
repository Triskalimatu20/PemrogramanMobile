void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add('Triskalimatu');
  names2.addAll({'Triskalimatu', "244107060025"});

  print(names1);
  print(names2);
}
