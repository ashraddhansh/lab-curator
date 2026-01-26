// #let user = json(bytes(sys.inputs.user))
#let user = yaml(bytes(sys.inputs.user))
#let name = user.name
#let enrollment-no = user.enrollment-no
#let roll-no = user.roll-no
#let course = user.course
#let subject = user.subject
#let paper-name = user.paper-name
#let semester = user.semester
#let subject-faculty = user.subject-faculty

#set text(
  size: 14pt
)

#align(center)[
#image("logo.png", width: 20%)
]
#align(center, text(28pt)[
  *Khwaja Moinuddin Chishti Language University, Lucknow*
])
#align(center, text(20pt)[
  #underline[*Practical File of Data Science Lab*]

  *Session: 2025-26*
])
#align(left, text(16pt)[
  *Name:* #name

  *Enrollment No:* #enrollment-no

  *Roll No:* #roll-no

  *Course:* #course

  *Subject:* #subject

  *Paper Name:* #paper-name

  *Semester:* #semester#super[th]
  #v(30pt)

  *Submitted To*
  #h(170pt)
  *Submitted By*

  #subject-faculty
  #h(164pt)
  #name

])
