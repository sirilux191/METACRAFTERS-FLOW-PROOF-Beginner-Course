import University from 0x05

pub fun main(index: Int): University.Student {
  log(University.getStudentCount())
  return (University.getStudentAtIndex(index: index))!
}
