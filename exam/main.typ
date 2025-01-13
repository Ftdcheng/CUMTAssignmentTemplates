#import "cover.typ": genCover
#import "base.typ": conf

#let grade         = "2024"                     // 年级
#let catagory      = "硕士"                      // 学生类型
#let subject       = "学术英语阅读"               // 考试科目
#let examDate      = "2025.01.08"               // 考试日期
#let student_name  = "张三"                      // 学生姓名
#let student_id    = "你的学号"                   // 学号
#let college       = "计算机科学与技术学院"         // 学院
#let teacher_name  = "李四"                       // 教师姓名
#let title         = "母猪护理方法心得"             // 文章大标题
#let abstract      = "母猪的产后护理博大精深"        // 摘要内容
#let keywords      = ("母猪产后护理", "畜牧业技术")  // 关键词

#genCover(grade: grade, catagory: catagory, subject: subject, examDate: examDate, id: student_id, college: college, name: student_name, teacher: teacher_name)
#show: doc => conf(title, abstract, keywords,doc)

= 一级标题
这是你的正文
== 二级标题
=== 三级标题