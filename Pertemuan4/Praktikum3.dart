void main() {
  var gifts = {
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 'argon'};

  var mhs1 = Map<String, String>();
  var mhs2 = Map<int, String>();

  gifts['name'] = 'Triskalimatu';
  gifts['nim'] = '244107060011';

  nobleGases[19] = 'Triskalimatu';
  nobleGases[20] = '244107060011';

  mhs1['nama'] = 'Triskalimatu';
  mhs1['nim'] = '244107060011';

  mhs2[1] = 'Triskalimatu';
  mhs2[2] = '244107060011';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
