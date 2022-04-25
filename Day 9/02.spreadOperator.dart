void main(List<String> args) {
  var tekSayilar = [1,3,5];
  var ciftSayilar =[2,4,6];
  var sonListe= [...tekSayilar,...ciftSayilar];
  print(sonListe);


  var map1 = {"ad" : "Berkcan"};
  var map2 ={"Yaş" : 23};
  var sonMap = {...map1, ...map2};
  print(sonMap);

  var set1 = {"Berkcan"};
  var set2 = {"Şevval"};
  var set3 = {"Nurana"};
  var set4 = {"Mete"};
  var sonSet = {...set1,...set2,...set3,...set4};
  print(sonSet);
}