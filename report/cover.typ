#let genCover(..args) = {
set text(font: "Source Han Serif SC")
place(
  top + right,
  float: true, 
  scope: "parent",
  [
    #grid(
      columns: (1.7cm, 2.54cm),
      rows: (1.1cm, 1.1cm),
      stroke: 1pt,
      align: center,
      
      rect(
        stroke: none,
        inset: (
          x: 0pt,
          y: 12pt
        ),
      )[*成绩*],[],
      rect(
        stroke: none,
        inset: (
          x: 0pt,
          y: 12pt
        ),
      )[*评阅人*],[]
    )
  ],
  clearance: 48pt
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
      spacing: 0.5em
    )
    *中 国 矿 业 大 学*

    #set text(size: 22pt)
    *硕士专业课课程报告*
  ],
  clearance: 48pt
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
      row-gutter: 25pt,
      align: (left, center),
      [学#h(2em)号], [#args.named().at("id") #place(bottom,dy: 0.21em,line(length: 100%))],
      [姓#h(2em)名], [#args.named().at("name") #place(bottom,dy: 0.21em,line(length: 100%))],
      [班#h(2em)级], [#args.named().at("classname") #place(bottom,dy: 0.21em,line(length: 100%))],
      [年#h(2em)级], [#args.named().at("level") #place(bottom,dy: 0.21em,line(length: 100%))],
      [课程名称], [#args.named().at("coursename") #place(bottom,dy: 0.21em,line(length: 100%))],
      [任课教师], [#args.named().at("teachername") #place(bottom,dy: 0.21em,line(length: 100%))],
    )]
    #field_grid
  ],
  clearance: 150pt
)

place(
  top + center,
  float: true,
  scope: "parent",
  [
    #set par(
      justify: true
    )
    #rect(
      width: 328pt,
      height: 110pt
    )[
      #set align(center)
      *注意事项*
      #set align(left)
      如果老师以课外作业形式考核，如写读书报告或小论文，必须严格按照老师规定的时间上交作业，以便老师评定成绩。作业前面必须订上此封面。由于工程硕士无论什么原因不按规定时间上交作业，晚交作业不予评阅，作业作废，请随下一年级重修。

    ]
  ]
)

place(
  top + center,
  float: true,
  scope: "parent",
  [
    #set text(size: 16pt, tracking: 0.1em)
    *研究生院培养管理办公室印制*
  ]
)

pagebreak()
}
#genCover(id:"12200001",name:"张三", classname: "火箭班", level: "一年级", coursename: "母猪的产后护理", teachername: "李四")