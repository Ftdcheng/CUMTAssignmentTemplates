#import "cover.typ": genCover
#import "base.typ": conf

#let student_name  = "张三"                       // 姓名
#let student_id    = "TS01010001A31LD"           // 学号
#let class_name    = "火箭班"                     // 班级
#let student_level = "2020级"                    // 年级
#let course_name   = "母猪的产后护理"              // 课程名称
#let teacher_name  = "黑土"                      // 任课教师
#let title         = "母猪护理方法心得"            // 文章大标题
#let abstract      = "母猪的产后护理博大精深"       // 摘要内容
#let keywords      = ("母猪产后护理", "畜牧业技术") // 关键词

#genCover(id: student_id, name: student_name, classname: class_name, level: student_level, coursename: course_name, teachername: teacher_name)
#show: doc => conf(title, abstract, keywords,doc)

= 一级标题
这是你的正文
== 二级标题
=== 三级标题