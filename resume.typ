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
  ]
)

#set text(font: "Times New Roman", size: 12pt)
#set par(linebreaks: "optimized")

#let sub_heading(body) = {
  set text(18pt)
  set align(center)
  heading(level: 2)[
    #body
  ]
}

#let cell(icon, body) = {
  set text(10pt)
  set align(center)
  rect(
    inset: 6pt,
    fill: rgb("e4e5ea"),
    width: 100%,
    radius: 6pt,
    [
      #box[#image("assets/" + icon, width: 8pt, fit: "contain")]
      #text[#body]
    ]
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
#line(length: 100%, stroke: (paint: olive, thickness: 1pt, cap: "round"))

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

#sub_heading[Projects]
#par(justify: true)[
#grid(
  columns: (1fr, 1fr),
  rows: 2,
  gutter: 10pt,
  [
    #project("N-Body-simulation")[OpenGL N-Body Problem Visualization]
    #set text(10pt)
    OpenGL visualization of the n-body problem in C++ utilizing the Barnes-Hut algorithm to compute interactions between bodies. Wrote performant C++ able to compute and visualize over 25,000 bodies while maintaining a stable 30fps.
  ],
  [
    #project("task-manager")[Task Manager]
    #set text(10pt)
    A task management application, written to learn Typescript and web development. Utilizes frameworks such as Next.js, tRPC, Prisma, Tailwind and Zod.
  ],
  [
    #project("labee")[Labee]
    #set text(10pt)
    A file labeling tool written in go, utilizing sqlite to manage files via labels/tags.
  ],
  [
    #project("gungus")[Gungus]
    #set text(10pt)
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
