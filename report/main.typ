#import "cover.typ": genCover
#import "base.typ": conf

#let student_name  = "张三"
#let student_id    = "TS01010001A31LD"
#let class_name    = "火箭班"
#let student_level = "2020级"
#let course_name   = "母猪的产后护理"
#let teacher_name  = "黑土"
#let title         = "母猪护理方法心得"
#let abstract      = "母猪的产后护理博大精深"
#let keywords      = ("母猪产后护理", "畜牧业技术")

#genCover(id: student_id, name: student_name, classname: class_name, level: student_level, coursename: course_name, teachername: teacher_name)
#show: doc => conf(title, abstract, keywords,doc)

这是你的正文