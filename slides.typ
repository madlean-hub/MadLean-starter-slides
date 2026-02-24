#let slide_progress() = context {
  let current = counter(page).get().first()
  let total = counter(page).final().first()
  let ratio = if total > 0 { calc.min(1, current / total) } else { 0 }

  align(center)[
    #box(width: 14cm, height: 0.12cm)[
      #rect(width: 14cm, height: 0.12cm, fill: luma(230), radius: 0cm)
      #place(top + left)[
        #rect(width: (14cm * ratio), height: 0.12cm, fill: luma(140), radius: 0cm)
      ]
    ]
  ]
}

#set page(width: 16cm, height: 9cm, margin: 1cm, footer: slide_progress())
#set text(font: "Fira Sans", size: 14pt)
#show heading: it => block(below: 0.65em)[#it]

#let ebullet(icon, body) = [
  #set list(marker: [#icon])
  - #body
]

#place(top + left)[
  #box(width: 100%, height: 100%)[
    #set text(font: "DejaVu Sans Mono", size: 7pt, fill: luma(220))
    #set par(leading: 0.75em)
    #align(top + left)[
      theorem exists_infinite_primes (n : ℕ) : ∃ p, n ≤ p ∧ Prime p := by
        let p := minFac (n ! + 1)
        have pp : Prime p := minFac_prime (by omega)
        have np : n ≤ p := by omega
        exact ⟨p, np, pp⟩

      theorem integral_sub_inv_of_mem_ball {c w : ℂ} {R : ℝ} :
          (∮ z in C(c, R), (z - w)⁻¹) = 2 * π * I := by
        simp

      theorem strong_law_ae (X : ℕ → Ω → E) :
          ∀ᵐ ω ∂μ, Tendsto (fun n ↦ (n : ℝ)⁻¹ • (∑ i ∈ range n, X i ω)) atTop (𝓝 μ[X 0]) := by
        admit

      theorem exists_infinite_primes (n : ℕ) : ∃ p, n ≤ p ∧ Prime p := by
        let p := minFac (n ! + 1)
        have pp : Prime p := minFac_prime (by omega)
        have np : n ≤ p := by omega
        exact ⟨p, np, pp⟩

      theorem integral_sub_inv_of_mem_ball {c w : ℂ} {R : ℝ} :
          (∮ z in C(c, R), (z - w)⁻¹) = 2 * π * I := by
        simp
    ]
  ]
]

#align(center + horizon)[
  #v(0.2cm)
  #align(center)[#image("assets/full_logo.svg", width: 58%, fit: "contain")]
  #text(size: 40pt, weight: "bold")[MadLean]
  #linebreak()
  #text(size: 16pt)[Lean into the Madness]
]

#pagebreak()

#set text(font: ("Avenir Next", "Futura", "Helvetica Neue", "Orbitron", "Fira Sans"), size: 14pt)

= Who we are 
#ebullet([🏙️])[We are *Madrileaños*.]
#ebullet([💖])[Started as a space for friends to learn together.]
#ebullet([🌍])[Bilingual meetup.]

#pagebreak()

= Quiénes somos
#ebullet([🏙️])[Somos *madrileaños*.]
#ebullet([💖])[Empezó como espacio de amigos para aprender juntos.]
#ebullet([🌍])[Meetup bilingüe.]

#pagebreak()

#set text(size: 14pt)
#set par(leading: 1em)
= Who we are not
#ebullet([🚫])[People who have all the answers!
  #ebullet([🧠])[We will reach the answers *together*.]
  #ebullet([🌱])[We will make *mistakes* and that's ok.]
]

#pagebreak()

= Quiénes no somos
#ebullet([🚫])[Personas que tienen todas las respuestas.
  #ebullet([🧠])[Lleguemos a las respuestas *juntos*.]
  #ebullet([🌱])[Cometeremos *errores* y no pasa nada.]
]
#set par(leading: 1em)
#set text(size: 14pt)

#pagebreak()

= How to get started? (1/3)
#v(0.25cm)
#align(center)[
  To get an idea
  #image("assets/lean-game-server.png", width: 50%, fit: "contain")
  https://adam.math.hhu.de/
]

#pagebreak()

= ¿Cómo empezar? (1/3)
#v(0.25cm)
#align(center)[
  Para hacerte una idea
  #image("assets/lean-game-server.png", width: 50%, fit: "contain")
  https://adam.math.hhu.de/
]

#pagebreak()

= How to get started? (2/3)
#v(0.25cm)
#align(center)[
  Worldwide community
  #image("assets/leanprover-zulip.png", width: 40%, fit: "contain")
  #set text(size: 12pt)
    https://leanprover.zulipchat.com/ 

    *\#Geographic locality -> Madrid, Spain*
]

#pagebreak()

= ¿Cómo empezar? (2/3)
#v(0.25cm)
#align(center)[
  Comunidad mundial
  #image("assets/leanprover-zulip.png", width: 40%, fit: "contain")
  #set text(size: 12pt)
    https://leanprover.zulipchat.com/ 

    *\#Geographic locality -> Madrid, Spain*
]

#pagebreak()

= How to get started? (3/3)
#v(0.25cm)
#align(center)[
  Our website
  #image("assets/madlean-hub.png", width: 50%, fit: "contain")
  #set text(size: 12pt)
  https://madlean-hub.web.app/links
]

#pagebreak()

= ¿Cómo empezar? (3/3)
#v(0.25cm)
#align(center)[
  Nuestra web
  #image("assets/madlean-hub.png", width: 50%, fit: "contain")
  #set text(size: 12pt)
  https://madlean-hub.web.app/links
]

#pagebreak()
#set par(leading: 1em)
= What's the point of this then? 
#ebullet([🇪🇸])[Build a community based in Madrid.]
#ebullet([🤝])[Learn together and collaborate.]
#ebullet([💅])[Not gatekeeping.]

#pagebreak()

= ¿Pues, cuál es el objetivo?
#ebullet([🇪🇸])[Construir una comunidad en Madrid.]
#ebullet([🤝])[Aprender juntos y colaborar.]
#ebullet([💅])[Sin gatekeeping.]
#set par(leading: 1em)
#set text(size: 14pt)

#pagebreak()

= Let's get to know each other!
#ebullet([🎤])[Introduce yourself and what you'd like to work on!]

Meeting is 90 minutes, divided into 30-30-30: 
  - First 30: introductions and subgrouping.
  - Second 30: free time for presentations/group work.
  - Third 30: more free time for presentations/group work.

#pagebreak()

= ¡Conozcámonos!
#ebullet([🎤])[¡Preséntate y cuéntanos en qué te gustaría trabajar!]

La reunión dura 90 minutos, divididos en 30-30-30:
  - Primeros 30: conocernos y formar subgrupos.
  - Segundos 30: presentaciones o trabajo grupal.
  - Últimos 30: más presentaciones o trabajo grupal.
