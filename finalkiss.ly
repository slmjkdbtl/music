% 地球最后之吻

\version "2.24.4"
\language "english"

\header {
	title = "Final Kiss"
	composer = "tga"
	tagline = ""
}

gOne = {
	\key c \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 60
}

gTwo = {
	\key af \major
	\numericTimeSignature
	\time 3/4
	\tempo 4 = 136
}

one = <<

	\new Staff \with {
		midiInstrument = "acoustic grand"
	} \fixed c' {

		\gOne
		\clef treble

		s1 * 2
		e'2 r4. d'8( |
		b2) r4.. a16( |
		b2) r4.. e'16( |
		b2) r4. d'16( e'16 |
		f'1) |
		g'2 r4.. a'16( |
		c'1) |
		r1 |
		f'2 ef'2 |
		af2 ef'2 |
		bf2 r2 |
		r2... ef16 |

		\repeat volta 4 {
			bf1 |
			r1 |
		}

	}

	\new Staff \with {
		midiInstrument = "acoustic grand"
	} \fixed c {

		\gOne
		\clef bass

		\repeat unfold 8 { f16 d' g' e' }
		\repeat unfold 8 { f16 d' g' e' }
		\repeat unfold 8 { e16 d' g' e' }
		\repeat unfold 8 { ef16 c' g' d' }
		\repeat unfold 8 { d16 bf f' c' }
		\repeat unfold 8 { df16 bf f' c' }
		\repeat unfold 8 { c16 af ef' bf }

		\repeat volta 4 {
			<df c'>1
			<ef c'>1
		}

	}

>>

two = <<

	\new Staff \with {
		midiInstrument = "acoustic grand"
	} \fixed c' {

		\gTwo
		\clef treble

		s2. * 8 |
		\repeat volta 4 {
			r4 c'8 df'8 c'4 | c'4 r4 df'4 | ef'4 r2 | r2. |
			r4 c'8 df'8 c'4 | c'4 r4 df'4 | ef'4 r2 | f4 g af |
			bf4 r2 | ef'4 r2 | c'4 r2 | f4 g af |
			af4 r2 |
			\alternative {
				\volta 1,2,3 { r4 bf4 af4 | ef4 r2 | r2. | }
				\volta 4 { r4 bf4 c'4 | bf4 r2 | r2 af4 | }
			}
		}
		af2.~ | af2. | r2. |

	}

	\new Staff \with {
		midiInstrument = "acoustic grand"
	} \fixed c {

		\gTwo
		\clef bass

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
			bf,4 f af |
			\alternative {
				\volta 1,2,3 { bf,4 r2 | ef4 g bf | ef r2 | }
				\volta 4 { bf,4 r2 | ef4 g bf | ef r2 | }
			}
		}
		af,4 c ef | c ef c | af, r2 |

	}

>>

\score {
	\one
	\layout {
		\context {
			\Staff
		}
	}
}

\score {
	\two
	\layout {
		\context {
			\Staff
		}
	}
}

\score {
	\unfoldRepeats { \one \two }
	\midi {}
}
