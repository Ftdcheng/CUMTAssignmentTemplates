#let genCover(..args) = {
set text(font: "Source Han Serif SC")
place(
  top + right,
  float: true, 
  scope: "parent",
  [
    #grid(
      columns: (1.7cm, 2.54cm),
      rows: (1.1cm),
      stroke: 1pt,
      align: center,
      
      rect(
        stroke: none,
        inset: (
          x: 0pt,
          y: 12pt
        ),
      )[*成绩*],[],
    )
  ],
  clearance: 6em
)

place(
  top + center,
  float: true,
  scope: "parent",
  [
    #set text(
      size: 24pt,
    )
    #set par(
      spacing: 1.5em
    )
    *中 国 矿 业 大 学*

    #set text(size: 22pt)
    *2024级硕士研究生课程考试试卷*
  ],
  clearance: 8em
)

place(
  top + center,
  float: true,
  scope: "parent",
  [
    #set text(
      size: 15pt
    )
    #let field_grid = context [
      #let max_len = 0pt
      #for value in args.named(){
        let measure_len = measure([#value]).width
        if( measure_len > max_len){
          max_len = measure_len
        }
      }
    #grid(
      columns: (70pt, 0.8 * max_len),
      row-gutter: 2.5em,
      align: (left, center),
      [考试科目], [#args.named().at("subject") #place(bottom,dy: 0.21em,line(length: 100%))],
      [考试时间], [#args.named().at("examDate") #place(bottom,dy: 0.21em,line(length: 100%))],
      [学生姓名], [#args.named().at("name") #place(bottom,dy: 0.21em,line(length: 100%))],
      [学#h(2em)号], [#args.named().at("id") #place(bottom,dy: 0.21em,line(length: 100%))],
      [所在院系], [#args.named().at("college") #place(bottom,dy: 0.21em,line(length: 100%))],
      [任课教师], [#args.named().at("teacher") #place(bottom,dy: 0.21em,line(length: 100%))],
    )]
    #field_grid
  ],
  clearance: 16em
)

place(
  top + center,
  float: true,
  scope: "parent",
  [
    #set text(size: 16pt, tracking: 0.1em)
    *中国矿业大学研究生院培养管理处印制*
  ]
)

pagebreak()
}
#genCover(subject: "科目", examDate: "2025.01.01", id:"12200001",name:"张三", classname: "火箭班", level: "一年级", college: "母猪的产后护理", teacher: "李四")