% 小芳秒味旋转后空踢

\version "2.24.4"
\language "english"

\header {
	title = "Lil Fang Fantasy Spin Back Kick"
	composer = "tga"
	tagline = ""
}

global = {
	\key f \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 100
}

clarinet = \fixed c' {

	\set Staff.instrumentName = "clarinet"
	\set Staff.midiInstrument = "clarinet"
	\clef treble
	\global

	r1 r1 r1 r1

	r8 f, g, a, bf, c d e |
	f g a bf c' r4 e'8 |
	c'8  r8 r4 r2 |
	r1 |

	r8 f, g, a, bf, c d e |
	f g a bf c' r4 e'8 |
	a8  r8 r4 r2 |
	r1 |

	r8 f, g, a, bf, c d e |
	f g a bf c' r4 e'8 |
	c'8  r8 r4 r2 |
	r1 |

	r8 f, g, a, bf, c d e |
	f g a bf c' r4 e'8 |
	a8  r8 r4 r2 |
	r1 |

	c'4. d'8 c'4. d'8 | c'4. bf8 a4 bf4 |
	c'4. d'8 c'4. d'8 | c'4. bf8 a4 bf4 |
	c'4. d'8 c'4. d'8 | c'4. bf8 a4 g8 f8 |
	e8 r8 r4 r2 | r1 |

}

chordloop = {
	bf,4 <f a>4 r2 |
	c4 <g bf>4 r2 |
	f,4 <c e>4 r2 |
	f,4 <c e>4 r2 |
}

piano = \fixed c' {

	\set Staff.instrumentName = "piano"
	\set Staff.midiInstrument = "acoustic grand"
	\clef bass
	\global

	\chordloop
	\chordloop

	\chordloop
	\chordloop

	\chordloop
	\chordloop

	\chordloop
	\chordloop

}

\score {
	<<
		\new Staff \clarinet
		\new Staff \piano
	>>
	\layout {}
	\midi {}
}
