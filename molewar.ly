% 鼹鼠合战

\version "2.24.4"
\language "english"

\header {
	title = "Mole War"
	composer = "tga"
	tagline = ""
}

global = {
	\key e \minor
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 90
}

music = <<

	\new Staff \with {
		midiInstrument = "accordion"
	} \fixed c' {

		\clef treble
		\global

		s1 * 2

		b2. r8 bf8 |
		b2. r4 |
		g2. r8 e8 |
		fs2. r4 |
		e4. fs8 g4 a4 |
		b2 r4 c4 |
		b,2. r4 |
		r1 |

		a2 r4. b8 |
		c'2 r2 |
		b2 r4. e8 |
		e'2 r2 |
		bf2 r4. df'8 |
		a'4. as'4 r4 b'16 c''16 |
		b'4 r2 g'8 gf'16 f'16 |
		e'4-. r2. |

		fs8 e c fs e c fs e |
		c fs e c g4 r4 |
		fs8 e b, fs e b, fs e |
		b, fs e b, bf,4 r4 |
		bf,8 df bf, b, d f e f |
		a8 bf b a bf4 r8 b16 c' |
		b4 r4 r4 g8 gf16 f16 |
		e4 r2. |

	}

	\new Staff \with {
		midiInstrument = "tuba"
	} \fixed c {

		\clef bass
		\global

		\repeat unfold 6 {
			e4-. b8-. b8-. b,4-. ef4-. |
		}
		e4-. b-. ef-. b-. d-. b-. df-. r4 |
		b,2. r4 |
		r2. c8. b,32 bf,32 |
		\repeat unfold 2 {
			\repeat unfold 4 { a,4-. e-. }
			\repeat unfold 4 { g,4-. d-. }
			\repeat unfold 4 { bf,4-. fs-. }
			e4-. b8-. b8-. b,4-. ef4-. |
			e4-. r2. |
		}

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
