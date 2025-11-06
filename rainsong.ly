% 雨天的歌

\version "2.24.4"
\language "english"

\header {
	title = "Rain Song"
	composer = "tga"
	tagline = ""
}

global = {
	\key f \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 84
}

pianoRight = {
	\repeat volta 4 {
		\repeat unfold 4 {
			c'8 d4 d4 d4 d8 |
		}
		\repeat unfold 4 {
			c'8 f4 f4 f4 f8 |
		}
		\repeat unfold 4 {
			c'8 g4 g4 g4 g8 |
		}
		\repeat unfold 4 {
			c'8 g4 g4 g4 g8 |
		}
	}
}

pianoLeft = {
	\repeat volta 4 {
		\repeat unfold 4 {
			bf,8 a4 a4 a4 a8 |
		}
		\repeat unfold 4 {
			g,8 g4 g4 g4 g8 |
		}
		\repeat unfold 4 {
			bf,8 a4 a4 a4 a8 |
		}
		\repeat unfold 4 {
			a,8 f4 f4 f4 f8 |
		}
	}
}

melody = {
	\repeat volta 4 {
		r1 | r1 | r1 | r1 |
		r1 | r1 | r1 | r4 r8 a16 bf c'8 bf a d8~ |
		d8 bf2..~ | bf1 | r1 | r2 r8 e4 f8 |
		g1~ | g1 | r1 | r1 |
	}
}

music = {
	<<
		\new Staff \with {
			midiInstrument = "clarinet"
		} \fixed c' {
			\clef treble
			\global
			\melody
		}
		\new Staff \with {
			midiInstrument = "xylophone"
		} \fixed c' {
			\clef treble
			\global
			\pianoRight
		}
		\new Staff \with {
			midiInstrument = "xylophone"
		} \fixed c {
			\clef bass
			\global
			\pianoLeft
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
