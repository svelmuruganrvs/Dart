class Candidates {
  int yearsExperience;
  String name;
  Candidates(this.name, this.yearsExperience);
  void interview () {
    print("$name invited for interview");
  }
}
main(List<String> args) {
 var candidates = [Candidates("Ram" , 3) , Candidates("Velmurugan", 7)];
 candidates
    .where((c) => c.yearsExperience >= 5)
    .forEach((c) => c.interview()); 
}