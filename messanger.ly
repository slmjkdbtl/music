% 風の使者

\version "2.24.4"
\language "english"

\header {
	title = "Messenger of the Wind"
	composer = "tga"
	tagline = ""
}

global = {
	\key g \minor
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 110
}

music = <<

	\new Staff \with {
		midiInstrument = "accordion"
	} \fixed c'' {

		\clef treble
		\global

		s1 * 4

		\repeat volta 2 {
			a1~ | a4 g f ef | d1~ | d1 |
			g1~ | g4 f ef df | c1~ | c1 |
			bf1 | ef2 bf2 | af4 gf4 f4 gf4 | af2. af4 |
			g1~ | g1 | \grace { a4 bf } b1 | r1 |
		}

		c'1~ | c'4 bf af gf | f1~ | f4 gf af bf |
		c'1~ | c'4 ef'2 df'4 | bf1~ | bf1 |

	}

	\new Staff \with {
		midiInstrument = "accordion"
	} \fixed c {

		\clef bass
		\global

		\repeat unfold 4 { g4 <bf d'>4 } |
		\repeat unfold 4 { g4 <bf d'>4 } |

		\repeat volta 2 {
			\repeat unfold 4 { g4 <bf d'>4 } |
			\repeat unfold 4 { a4 <c' d'>4 } |
			\repeat unfold 4 { af4 <c' d'>4 } |
			\repeat unfold 4 { f4 <af c'>4 } |
			\repeat unfold 4 { gf4 <bf ds'>4 } |
			\repeat unfold 4 { f4 <af c'>4 } |
			\repeat unfold 4 { g4 <bf d'>4 } |
			\repeat unfold 2 { g4 <b d'>4 } | g4 r2. |
		}

		\repeat unfold 4 { f4 <af c'>4 } |
		\repeat unfold 4 { gf4 <bf ds'>4 } |
		\repeat unfold 4 { f4 <af c'>4 } |
		\repeat unfold 4 { gf4 <bf ds'>4 } |

	}

>>

\score {
	\music
	\layout {
		\context {
			\Staff
			\RemoveAllEmptyStaves
		}
	}
}

\score {
	\unfoldRepeats \music
	\midi {}
}
