void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);

  // tambahan list berisi NIM
  var nim = [2, 4, 4, 1, 0, 7, 0, 6, 0, 0, 2, 5];
  var list4 = [...list, ...nim];

  print(nim);
  print(list4);

  //Hasil Jika promoActive = true
  bool promoActive = true;

  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  // Hasil Jika promoActive = false
  promoActive = false;

  var nav2 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav2);

  //pattern matching case collection if
  String login = 'User';
  var nav3 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory',
  ];
  print(nav3);

  //collection for
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
