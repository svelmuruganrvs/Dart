main(List<String> args) {
  // List / Array - ordered collection element
  List names = ["Vel", "Murugan"];
  print(names[0]);
  print(names.length);
  print("Sample shows list type inferred.");
  var namess = ["Vel", "Murugan"];
  print(namess[0]);
  print(namess.length);

  print("Sample shows List with specifc type String.");

  List<String> namesss = ["Vel", "Murugan"];
  print(namesss[0]);
  print(namesss.length);

  print("Sample shows constant can't able add/ modify at run time.");

  List<String> namessss = const ["Vel", "Murugan"];
  //Not allowed in constant.
//  namessss[0] = "Raj";
  print(namessss[0]);
  print(namessss.length);

  for (var n in namess) {
    print(n);
  }
  print("Sample shows list is reference type.");
  List<String> referenceTypeExample = ["Vel", "Murugan"];
  var copyType = referenceTypeExample;
  referenceTypeExample.add("Raj");
  for (var n in copyType) {
    print(n);
  }

  print("Sample shows list  copy.");
  List<String> refType = ["Vel", "Murugan"];
  var copyRefType = [...refType];
  refType.add("Raj");
  for (var n in copyRefType) {
    print(n);
  }

  // Set - Unique items of elements.
  var helogens = {"fluorine", "chlorines", "chlorines"};
  for (var n in helogens) {
    print(n);
  }
  // this will treat as hashmap.
  var dynHelogens = {};
  print(dynHelogens.runtimeType);
  var dynHelogens1 = <String>{};
  print(dynHelogens1.runtimeType);
  Set<String> n1 = {};
  print(n1.runtimeType);

  // Map / dictonary
  var gifts = {
    //Key : value
    "first" : "partridge",
    "second" : "turtledoves",
    "fifth" : "golden rings",
  };
  print(gifts["fifth"]);
  print(gifts.runtimeType);
  print(gifts[1]);
  print(gifts["emptykey"]);

  var giftts = {
    //Key : value
    "first" : "partridge",
    "second" : "turtledoves",
    "fifth" : "golden rings",
    1 : "golden rings",
  };
    print(giftts.runtimeType);

    // Assign value for keu 
    var fruits = Map();
    print(fruits.runtimeType);
    fruits["first"] = "Mango";
    print(fruits.runtimeType);
    
    var ft = Map<String , String>();
    print(ft.runtimeType);
    ft["1"] = "poda"; // good guy
    // ft[1] = "poda"; // bad guy

}
