pub contract University {

    // Student struct
    pub struct Student {
        pub let id: Int
        pub let name: String
        pub let age: Int

        init(_id: Int, _name: String, _age: Int) {
            self.id = _id
            self.name = _name
            self.age = _age    
        }
    }
  
    // Array to store Student instances
    pub var studentRecords: [Student]

    // Function to add a new Student record to studentRecords
    pub fun addStudent(id: Int, name: String, age: Int) {
        let newStudent = Student(_id: id, _name: name, _age: age)
        self.studentRecords.append(newStudent)
    }

    // Function to get the count of students in studentRecords
    pub fun getStudentCount(): Int {
        return self.studentRecords.length
    }

    // Function to get a specific student by index
    pub fun getStudentAtIndex(index: Int): Student? {
        if index >= 0 && index < self.studentRecords.length {
            return self.studentRecords[index]
        }
        return nil
    }

    // Initialize the contract
    init() {
        self.studentRecords = []
    }
}
