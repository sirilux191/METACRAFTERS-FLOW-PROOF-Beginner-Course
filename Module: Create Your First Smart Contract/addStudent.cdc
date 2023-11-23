import University from 0x05

transaction(id: Int, name: String, age:Int) {

  prepare(acct: AuthAccount) {}

  execute {
   University.addStudent(id: id, name: name, age: age);
   log("Successfully Added")
  }
}
