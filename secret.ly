% 秘密

\version "2.24.4"
\language "english"

\header {
	title = "Secret"
	composer = "tga"
	tagline = ""
}

global = {
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 88
}

music = <<

	\new Staff \with {
		midiInstrument = "flute"
	} \fixed c' {

		\clef treble
		\global

		\key e \minor

		\repeat unfold 2 {
			r4. fs8 a b c' e' | fs'4 e'8 c' a4 c'4 |
			b4 a8 b8 g4 fs8 g8 | fs8 e2 r4. |
		}

		\key bf \major

		g'4 f'8 g' c'4 bf8 c' | g4 f8 g c4 r |
		d'4 c'8 d' a4 f8 g | d2 r2 |
		g'4 f'8 g' c'4 bf8 c' | g4 f8 g c4 r |
		r2 fs8 gs b d' | fs'2 r2 |

	}

	\new Staff \with {
		midiInstrument = "flute"
	} \fixed c {

		\clef bass
		\global

		\key e \minor

		\repeat unfold 2 {
			a8 c' e' r r2 | a8 c' e' r r2 |
			e8 g b r r2 | e8 g b r r2 |
		}

		\key bf \major

		ef8 g bf d' r2 | ef8 g bf d' r2 |
		d8 f a c' r2 | d8 f a c' r2 |
		ef8 g bf d' r2 | ef8 g bf d' r2 |
		e8 gs b d' r2 | r1 |

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
