#set page(
  margin: (
    x: 1.5cm,
    y: 1cm,
  ),
  footer: [
    #set text(8pt)
    #show link: underline
    _Made with #link("https://typst.app")[typst]_
    #h(1fr)
    _This resume is on_
    #link("http://github.com/LeBulldoge/resume")[
      #box[#image("assets/github-142.svg", width: 6pt)]_github!_
    ]
  ],
  fill: rgb("fbfdf9")
)

#set text(font: "Times New Roman", size: 12pt, fill: rgb("191c1b"))
#set par(linebreaks: "optimized")

#let surface_1 = rgb("#dbe5df")
#let on_surface_text = rgb("#404944")

#let sub_heading(body) = {
  set text(16pt)
  set align(center)
  heading(level: 2)[
    #body
  ]
}

#let cell(icon, body) = {
  set text(10pt, fill: on_surface_text)
  set align(center)
  rect(
    inset: 6pt,
    fill: surface_1,
    width: 100%,
    radius: 6pt,
    stack(
      dir: ltr,
      spacing: 5%,
      image("assets/" + icon, width: 8pt),
      text[#body]
    )
  )
}

#align(center)[
  #text(30pt)[
    #block[
      #smallcaps[
       = Aleksei Lapikhin
      ]
    ]
  ]
]

#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  gutter: 3pt,
  cell("mail.svg")[
    #link("mailto:alexey13031@gmail.com")
  ],
  cell("phone-call.svg")[
    #link("tel:+1 236-464-2186")
  ],
  cell("home.svg")[
    Victoria, BC, Canada
  ],
  cell("github-142.svg")[
    #link("https://github.com/LeBulldoge")[
      GitHub.com/LeBulldoge
    ]
  ]
)
#line(length: 100%, stroke: (paint: rgb("#bfc9c3"), thickness: 1pt, cap: "round"))

#sub_heading[Experience]
=== Software Engineer
#text(10pt)[System Technologies, Kaliningrad, Russia - Remote#h(1fr)*October 2019 – October 2022*]
#par(justify: true)[
- Engineered a cross platform Android and iOS mobile application using C++, Qt framework, Java, and Objective-C on a 8 person agile team.
- Lead and created a cross platform mobile app installer in Kotlin, reducing the install size by ~100MBs leading to increased usage and engineering velocity due to separating the installer from the core app.
- Worked on an extension engine on top of the Chrome Javascript V8, creating wrappers and APIs to help facilitate frontend development helping unblock critical client specific needs.
- Utilized TDD and helped fill in any test coverage gaps, while also refactoring untestable code leading to a unit test coverage of ~98% from nearly ~50% coverage years prior.
- Refactored our tests to run asynchronously leading to a test runtime performance improvement from over 90 seconds down to 10, greatly increasing developer velocity.
]

=== System Administrator
#text(10pt)[Kindergarten “Zvezdochka”, Slobodskoy, Russia#h(1fr)*January 2014 – March 2015*]
#par(justify: true)[
- Managed and configured the company website to help provide file hosting and content distribution.
- Provided technical support to employees ranging from OS problems to hardware support.
- Installed and built company hardware such as computers and printers, distributed to employees.
]

#let project(repo, body) = {
  link("https://github.com/LeBulldoge/" + repo)[
  #heading(level: 3)[
    #body
    #h(1fr)
    #box[
      #image("assets/github-142.svg", width: 8pt)
    ]
  ]]
}

#let card(title, body) = {
  set text(fill: on_surface_text)
  rect(
    inset: 8pt,
    fill: surface_1,
    width: 100%,
    height: 100%,
    radius: 6pt,
  stack(
    spacing: 5pt,
    title,
    line(length: 100%, stroke: (paint: rgb("#bfc9c3"), thickness: 1pt, cap: "round")),
    text(11pt, body),
  ))
}

#sub_heading[Projects]
#par(justify: true)[
#grid(
  columns: (1fr, 1fr),
  rows: (70pt, 54pt),
  gutter: 6pt,
  card(project("N-Body-simulation")[OpenGL N-Body Problem Visualization])[
    OpenGL visualization of the n-body problem in C++ utilizing the Barnes-Hut algorithm to compute interactions between bodies.
  ],
  card(project("task-manager")[Task Manager])[
    A task management application, written to learn Typescript and web development. Utilizes frameworks such as Next.js, tRPC, Prisma, Tailwind and Zod.
  ],
  card(project("labee")[Labee])[
    A file labeling tool written in go, utilizing sqlite to manage files via labels/tags.
  ],
  card(project("gungus")[Gungus])[
    A discord bot, written in go, which (currently) allows creation of polls, achieving persistence via sqlite.
  ],
)]

#sub_heading[Education]
=== Specialist Degree in Software Development
#text(10pt)[College of Pedagogics and Social Relations, Slobodskoy, Russia#h(1fr)*September 2015 – October 2019*]

#sub_heading[Skills]
#grid(
  columns: (1fr, 1fr),
  gutter: 8pt,
  [
    === Languages & Frameworks
    #set text(10pt)
    C++, Java, Kotlin, Golang, SQL, Qt, Android, Objective-C, Typescript, React, Node.js, Next.js, Python, C\#
  ],
  [
    === Tools, Technologies & Skills
    #set text(10pt)
    Git, Docker, CMake, Systems Design & Architecture, CI, Azure, Android Studio, CLI
  ],
)
