#set page(width: 16cm, height: 9cm, margin: 1cm)
#set text(font: "Fira Sans", size: 14pt)

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
  #image("assets/full_logo.svg", width: 58%, fit: "contain")
  #text(size: 40pt, weight: "bold")[MadLean]
  #linebreak()
  #text(size: 16pt)[*Lean into the Madness*]
]

#pagebreak()

= Who we are 
- We are *Madrileaños*. 🏙️
- Started as a space for friends to learn together. 🤝
- Bilingual meetup. 🌍

= Quiénes somos
- Somos *Madrileaños*. 🏙️
- Empezó como espacio de amigos para aprender juntos. 🤝
- Meetup bilingüe. 🌍

#pagebreak()

= Who we are not
- People who have all the answers! 🚫
  - We will reach the answers *together*. 🧠
  - We will make *mistakes* and that's ok. 🌱

= Quiénes no somos
- Personas que tienen todas las respuestas. 🚫
  - Lleguemos a las respuestas *juntos*. 🧠
  - Cometeremos *errores* y no pasa nada. 🌱

#pagebreak()

= How to get started? / ¿Cómo empezar?  (1/3)
#v(0.25cm)
#align(center)[
  To get an idea / Para hacerte una idea
  #image("assets/lean-game-server.png", width: 50%, fit: "contain")
  https://adam.math.hhu.de/
]

= How to get started? / ¿Cómo empezar (2/3)? 
#v(0.25cm)
#align(center)[
  Worldwide community / Comunidad mundial
  #image("assets/leanprover-zulip.png", width: 50%, fit: "contain")
  #set text(size: 12pt)
    https://leanprover.zulipchat.com/ 
    *\#Geographic locality -> Madrid, Spain*
]

= How to get started? / ¿Cómo empezar (3/3)? 
#v(0.25cm)
#align(center)[
  Our website / Nuestra web
  #image("assets/madlean-hub.png", width: 50%, fit: "contain")
  #set text(size: 12pt)
  https://madlean-hub.web.app/links
]

#pagebreak()
= What's the point of this then? 
Two *types* of knowledge:
  - The information (all online). 🌐
  - What to do with the info -- *socially transmitted*. 🗣️

= ¿Pues, cuál es el objetivo?
Dos *tipos* de conocimiento:
- La información (todo en la web). 🌐
- Qué hacer con la información -- *transmitido socialmente*. 🗣️
#set text(size: 14pt)

#pagebreak()

= Let's collaborate!
- Introduce yourself and what you'd like to work on! 🎤

= ¡Colaboremos!
¡Preséntate y cuéntanos en qué te gustaría trabajar! 🎤