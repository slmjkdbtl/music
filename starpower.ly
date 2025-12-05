% 星星力量

\version "2.24.4"
\language "english"

\header {
	title = "Star Power"
	composer = "tga"
	tagline = ""
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

gOne = {
	\key c \major
	\numericTimeSignature
	\tempo 4 = 70
	\time 4/4
}

gTwo = {
	\key c \major
	\numericTimeSignature
	\tempo 4 = 164
	\time 3/4
}

one = <<

	\new Staff \with {
		midiInstrument = "xylophone"
	} \fixed c'' {

		\gOne
		\clef treble

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

	\new Staff \with {
		midiInstrument = "xylophone"
	} \fixed c {

		\gOne
		\clef bass

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

	}

>>

two = <<

	\new Staff \with {
		instrumentName = "trumpet"
		midiInstrument = "trumpet"
	} \fixed c' {

		\gTwo
		\clef treble

		s2. * 4
		\repeat volta 2 {
			r4 e8( f8 e8 f8 | e2.) | r2. | c4 r4 d4( |
			e2.) | r2. | r2. | r2. |
			a2.~ | a2. | r2. | g4 r4 f4( |
			g2.~) | g2. | r2. | r2. |
			c'2.~ | c'2. | r2. | d'4 r4 c'4( |
			b2.) | r2 c'4 | g2. | r2 e4( |
			a2.~) | a2. | r2. | a4( b4 c'4 |
			d'2.~) | d'2. | r2. | r2. |
		}
		% TODO
		\repeat volta 2 { s2. * 32 }

	}

	\new Staff \with {
		instrumentName = "clarinet"
		midiInstrument = "clarinet"
	} \fixed c'' {

		\gTwo
		\clef treble

		s2. * 4

		\repeat volta 2 { s2. * 32 }
		\repeat volta 2 {
			e2.~ | e2.~ | e2. | g2 f4 |
			e2.~ | e2.~ | e2. | r2. |
			a2.~ | a2.~ | a2 r4 | g2 f4 |
			g2.~ | g2.~ | g2. | r2. |
			d2.~ | d4 r4 d4 | a2.~ | a2 d4 |
			e2.~ | e2. | g2.~ | g2. |
			d2.~ | d2.~ | d2. | r4 d4 c4 |
			d2.~ | d2. | r2. | r2. |
		}

	}

	\new Staff \with {
		instrumentName = "keys"
		midiInstrument = "xylophone"
	} \fixed c {

		\gTwo
		\clef bass

		\repeat unfold 4 { a4 <c' e'>4 <c' e'>4 | }
		\repeat volta 2 \chordLoop
		\repeat volta 2 \chordLoop

	}

	\new Staff \with {
		instrumentName = "bass"
		midiInstrument = "acoustic bass"
	} \fixed c, {

		\gTwo
		\clef bass

		s2. * 4

		\repeat volta 2 {
			a2. | r2 e4 | a2. | r4 e4 a4 |
			b2. | r2 c'4 | b2. | r4 a4 b4 |
			f2. | r2 c4 | f2. | r4 c4 f4 |
			e2. | r2. | e2. | r4 f4 e4 |
			d2. | r2 d4 | a2. | r4 a,4 d4 |
			e2. | r2 b,4 | e2. | r4 f4 e4 |
			d2. | r2 a4 | d2. | r4 e4 d4 |
			c2. | r2. | r2. | r2. |
		}

		\repeat volta 2 {
			a2. | a2 e4 | a2. | a2 e4 |
			b2. | b2 c'4 | b2. | a4 b c' |
			f2. | f2. | f4 a c' | e' f' e' |
			e'2. | e'2 b4 | e2. | r4 f4 e4 |
			d2 d4 | a2 a4 | d2. | a4 d4 ds4 |
			e2 e4 | b2 b4 | e2. | b2 e4 |
			d2. | d2. | d2. | d4 e4 d4 |
			c2. | r2. | r2. | r2. |
		}

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
