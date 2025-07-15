% 小芳秒味旋转后空踢

\version "2.24.4"
\language "english"

\header {
	title = "Lil Fang Fantasy Spinning Backflip Kick"
	composer = "tga"
	tagline = ""
}

global = {
	\key f \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 54
}

clarinet = {

	s1^"improv" s1 * 3

	\repeat volta 2 {
		r16 f, g, a, bf, c d e f g a bf c' r8 e'16 |
		c'16 r16 r8 r4 r2 |
		r16 f, g, a, bf, c d e f g a bf c' r8 e'16 |
		a16 r16 r8 r4 r2 |
	}

	r4 g'8. f'16 e'8. d'16 e'8. c'16 | a8 r8 d'8. b16 c'8 r8 r16 g16 f e
	f4 r4 c'4 r8 b16 c'16 | a8 r8 r2.

	bf,8-. bf,-. bf,-. bf,-. c-. c-. c-. c-. |
	bf,8-. bf,-. bf,-. bf,-. c-. c-. c-. c-. |
	bf,8-. bf,-. bf,-. bf,-. c-. c-. c-. c-. |
	f,8-. r8 r2. |

}

trumpet = {

	s1 * 4
	\repeat volta 2 { r1 * 4 }

	c'8. d'16 c'8. d'16 c'8. bf16 a8 bf8 |
	c'8. d'16 c'8. d'16 c'8. bf16 a8 bf8 |
	c'8. d'16 c'8. d'16 c'8. bf16 a8 g16 f16 |
	e16 r16 r8 r4 r2 |

	c'16 bf a g a bf c' bf c' bf a g a bf c' r |
	c'16 bf a g a bf c' bf c' bf a g a bf e' r |
	c'16 bf a g a bf c' bf c' bf a g a r g f |
	e8 r8 r2. |

	% outro
	a8 r8 r4 g8 r8 r8 a8 | e8 r8 r4 c8 r4 d16 e16 |
	f8 r4 f8 c'8 r8 r8 b16 c'16 | a8 r8 r2. |

}

chordsA = {
	bf,8 <f a>8 r4 c8 <g bf>8 r4 |
	f,8 <c e>8 r4 f,8 <c e>8 r4 |
}

chordsB = {
	\repeat unfold 4 { <bf, f a>8-. }
	\repeat unfold 4 { <c g bf>8-. } |
}

keys = {

	\chordsA
	\chordsA
	\repeat volta 2 {
		\chordsA
		\chordsA
	}
	\chordsA
	\chordsA
	\chordsB
	\chordsB
	\chordsB
	f,8-. r8 r4 e4-. c4-. |

	% outro
	\chordsA
	bf,8 <f a>8 r4 c8 <g bf>8 r4 |
	f,4 r4 <c e>4 r4 |

}

music = {
	<<
		\new Staff \with {
			instrumentName = "trumpet"
			midiInstrument = "trumpet"
		} \fixed c' {
			\clef treble
			\global
			\trumpet
		}
		\new Staff \with {
			instrumentName = "clarinet"
			midiInstrument = "clarinet"
		} \fixed c' {
			\clef treble
			\global
			\clarinet
		}
		\new Staff \with {
			instrumentName = "keys"
			midiInstrument = "xylophone"
		} \fixed c' {
			\clef alto
			\global
			\keys
		}
	>>
}

\score {
	\music
	\layout {}
}

\score {
	\unfoldRepeats \music
	\midi {}
}
