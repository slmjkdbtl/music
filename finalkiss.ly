% 地球最后之吻

\version "2.24.4"
\language "english"

\header {
	title = "Final Kiss"
	composer = "tga"
	tagline = ""
}

partOne = {
	\key c \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 70
}

partTwo = {
	\key af \major
	\numericTimeSignature
	\time 3/4
	\tempo 4 = 144
}

treble = {

	\partOne
	r1 * 2
	e'2 r4.. d'16 |
	b2 r4.. a16 |
	b2 r4.. e'16 |
	b2 r4. d'16 e'16 |
	f'1 |
	g'2 r4.. a'16 |
	c'1 |
	r1 |
	f'2 ef'2 |
	af2 ef'2 |
	bf2 r2 |
	r1 |
	% bf1 |
	% r1 |

	\partTwo
	r2. * 8 |
	\repeat volta 4 {
		r4 c'8 df'8 c'4 | c'4 r4 df'4 | ef'4 r2 | r2. |
		r4 c'8 df'8 c'4 | c'4 r4 df'4 | ef'4 r2 | f4 g af |
		bf4 r2 | ef'4 r2 | c'4 r2 | f4 g af |
		af4 r2 | r4 bf c' | ef4 r2 | r2. |
	}

}

bass = {

	\partOne
	\repeat unfold 8 { f16 d' g' e' }
	\repeat unfold 8 { f16 d' g' e' }
	\repeat unfold 8 { e16 d' g' e' }
	\repeat unfold 8 { ef16 c' g' d' }
	\repeat unfold 8 { d16 bf f' c' }
	\repeat unfold 8 { df16 bf f' c' }
	\repeat unfold 8 { c16 af ef' bf }
	% \repeat unfold 8 { df16 af ef' bf }

	\partTwo

	df4 af c' | df r2 |
	ef4 af c' | ef r2 |
	df4 af c' | df r2 |
	ef4 af c' | ef r2 |

	\repeat volta 4 {
		df4 af c' | df r2 |
		ef4 af c' | ef r2 |
		df4 af c' | df r2 |
		ef4 af c' | ef r2 |
		c4 g bf | c r2 |
		f4 af c' | f r2 |
		bf,4 f af | bf,4 r2 |
		ef4 g bf | ef r2 |
	}

}

music = {
	<<
		\new Staff \with {
			midiInstrument = "acoustic grand"
		} \fixed c' {
			\clef treble
			\treble
		}
		\new Staff \with {
			midiInstrument = "acoustic grand"
		} \fixed c {
			\clef bass
			\bass
		}
	>>
}

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
