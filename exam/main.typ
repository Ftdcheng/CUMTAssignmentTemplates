#import "cover.typ": genCover
#import "base.typ": conf

#let grade         = "2024"
#let catagory      = "硕士"
#let subject       = "学术英语阅读"
#let examDate      = "2025.01.08"
#let student_name  = "张三"
#let student_id    = "你的学号"
#let college       = "计算机科学与技术学院"
#let teacher_name  = "李四"
#let title         = "母猪护理方法心得"
#let abstract      = "母猪的产后护理博大精深"
#let keywords      = ("母猪产后护理", "畜牧业技术")

#genCover(grade: grade, catagory: catagory, subject: subject, examDate: examDate, id: student_id, college: college, name: student_name, teacher: teacher_name)
#show: doc => conf(title, abstract, keywords,doc)

这是你的正文