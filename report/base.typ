#let 字号 = (
  初号: 42pt,
  小初: 36pt,
  一号: 26pt,
  小一: 24pt,
  二号: 22pt,
  小二: 18pt,
  三号: 16pt,
  小三: 15pt,
  四号: 14pt,
  中四: 13pt,
  小四: 12pt,
  五号: 10.5pt,
  小五: 9pt,
  六号: 7.5pt,
  小六: 6.5pt,
  七号: 5.5pt,
  小七: 5pt,
)

#let 中文字体 = (
    黑体: "Source Han Sans SC",
    宋体: "Source Han Serif SC",
)

#let 题目字体设置 = (
    字体: ("Times New Roman", 中文字体.黑体), 
    字号: 字号.二号
)

#let 标题字体设置 = (
    ( 字体: ("Times New Roman", 中文字体.黑体), 
        字号: 字号.四号),
    ( 字体: ("Times New Roman", 中文字体.黑体),
        字号: 字号.五号),
    ( 字体: ("Times New Roman", 中文字体.宋体),
        字号: 字号.五号),
)

#let 摘要字体设置 = (
    字体: ("Times New Roman", 中文字体.宋体),
    字号: 字号.小五
)

#let 正文字体设置 = (
    字体: ("Times New Roman", 中文字体.宋体), 
    字号: 字号.五号
)

#let genBigTitle(title) = {[
#set text(font: 题目字体设置.字体, size: 题目字体设置.字号)
#set align(center)
#title
]}

#let genAbstract(content, keywords) = {[
#set text(font: 摘要字体设置.字体, size: 摘要字体设置.字号)
#set align(left)
#text([摘#h(1em)要], weight: "bold") #h(1em)
#content

关键词  #h(1em)
#for keyword in keywords {
    keyword
    h(1em)
}
]}

#let conf(title, abstract, keywords, doc) = {
    set page(
        paper: "a4" // a4纸页面
    )

    genBigTitle(title)
    genAbstract(abstract, keywords)
    
    set heading(numbering: "1.1")
    set par(
        justify: true, // 两端对齐
        first-line-indent: 2em // 段落首行缩进2em
    )
    // 首段不能缩进的ad hoc办法
    let fakepar = context [
        #let b = par[#box()]
        #let t = measure(b + b);
        #b
        #v(-t.height*0.5)
    ]

    show: it => [
        #set text(font: 正文字体设置.字体, size: 正文字体设置.字号)
        #it
    ]

    show heading: it => [
        #if it.level != 3 {
            set text(
                font: 标题字体设置.at(it.level - 1).字体, 
                size: 标题字体设置.at(it.level - 1).字号)
            it
            fakepar
        } else {
            set text(
                font: 标题字体设置.at(it.level - 1).字体, 
                size: 标题字体设置.at(it.level - 1).字号,
                weight: "regular")
            it
            fakepar
        }
    ]
    
    doc
}

#let title = "基于Typst排版的标题"
#genBigTitle(title)

#let abstract_content = "这是你的劲爆摘要"
#let keywords = ("排版", "Typst", "模板", "作业", "CUMT")
#genAbstract(abstract_content, keywords)