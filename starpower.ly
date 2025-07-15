% 星星力量

\version "2.24.4"
\language "english"

\header {
	title = "Star Power"
	composer = "tga"
	tagline = ""
}

global = {
	\key c \major
	\numericTimeSignature
}

introRest = {
	s1 * 16
	r2. r2. r2. r2.
}

motifMelody = {
	r4 e8 f8 e8 f8 | e2. | r2. | c4 r4 d4 |
	e2 r4 | r2. | r2. | r2. |
	a2. | r2. | r2. | g4 r4 f4 |
	g2 r4 | r2. | r2. | r2. |
	c'2. | r2. | r2. | d'4 r4 c'4 |
	b2 r4 | r2 c'4 | g2 r4 | r2 e4
	a2. | r2. | r2. | a4 b4 c'4
	d'2. | r2. | r2. | r2.
}

trumpet = {
	\introRest
	\repeat volta 2 \motifMelody
}

introMelody = {
	\repeat unfold 2 {
		e4 r2 d8 c8 |
		g4 r4 r2 |
		a4 r2 g8 f8 |
		g4 r4 r2 |
		f4 r2 e8 d8 |
		g4 r4 r2 |
		f4 r2 g8 a8 |
		b4 r4 r2 |
	}
}

chordLoop = {
	\repeat unfold 4 { a4 <c' e'>4 <c' e'>4 | }
	\repeat unfold 4 { b4 <e' g'>4 <e' g'>4 | }
	\repeat unfold 4 { f4 <c' e'>4 <c' e'>4 | }
	\repeat unfold 4 { e4 <b d'>4 <b d'>4 | }
	\repeat unfold 4 { d4 <a c'>4 <a c'>4 | }
	\repeat unfold 4 { e4 <b d'>4 <b d'>4 | }
	\repeat unfold 4 { d4 <a c'>4 <a c'>4 | }
	c <g b>4 <g b>4 | c <g b>4 <g b>4 | c4 r2 | r2. |
}

chord = {

	\tempo 4 = 70
	\time 4/4

	a4 r4 e'4 r4 |
	b4 e'4 g'4 r4 |
	f4 r4 c'4 r4 |
	e4 b4 d'4 r4 |
	d4 a4 c'4 r4 |
	e4 b4 d'4 r4 |
	d4 a4 c'4 r4 |
	c4 r4 b4 r4 |

	a4 c'4 e'4 r4 |
	b4 e'4 g'4 r4 |
	f4 r4 c'4 r4 |
	e4 b4 d'4 r4 |
	d4 r4 c'4 r4 |
	e4 b4 d'4 r4 |
	d4 a4 c'4 r4 |
	c4 b4 g4 r4 |

	\bar "||"
	\tempo 4 = 160
	\time 3/4

	\repeat unfold 4 { a4 <c' e'>4 <c' e'>4 | }
	\repeat volta 2 \chordLoop

}

bassA = {
	a2. | r2 e4 | a2. | r4 e4 a4 |
	b2. | r2 c'4 | b2. | r4 a4 b4 |
	f2. | r2 c4 | f2. | r4 c4 f4 |
	e2. | r2. | e2. | r4 f4 e4 |
	d2. | r2 d4 | a2. | r4 a,4 d4 |
	e2. | r2 b,4 | e2. | r4 f4 e4 |
	d2. | r2 a4 | d2. | r4 e4 d4 |
	c2. | r2. | r2. | r2. |

}

bass = {
	\introRest
	\repeat volta 2 \bassA
}

music = {
	<<
		\new Staff \with {
			midiInstrument = "muted trumpet"
		} \fixed c' {
			\clef treble
			\global
			\trumpet
		}
		\new Staff \with {
			midiInstrument = "xylophone"
		} \fixed c'' {
			\clef treble
			\global
			\introMelody
		}
		\new Staff \with {
			midiInstrument = "xylophone"
		} \fixed c {
			\clef alto
			\global
			\chord
		}
		\new Staff \with {
			midiInstrument = "acoustic bass"
		} \fixed c, {
			\clef bass
			\global
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
