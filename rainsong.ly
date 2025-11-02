% 雨天的歌

\version "2.24.4"
\language "english"

\header {
	title = "Rain Song"
	composer = "tga"
	tagline = ""
}

global = {
	\key c \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 80
}

pianoRight = {
	\repeat volta 8 {
		\repeat unfold 2 {
			c'8 d4 d4 d4 d8 |
		}
		\repeat unfold 2 {
			c'8 f4 f4 f4 f8 |
		}
		\repeat unfold 2 {
			c'8 g4 g4 g4 g8 |
		}
		\repeat unfold 2 {
			c'8 g4 g4 g4 g8 |
		}
	}
}

pianoLeft = {
	\repeat volta 8 {
		\repeat unfold 2 {
			bf,8 a4 a4 a4 a8 |
		}
		\repeat unfold 2 {
			g,8 g4 g4 g4 g8 |
		}
		\repeat unfold 2 {
			bf,8 a4 a4 a4 a8 |
		}
		\repeat unfold 2 {
			a,8 f4 f4 f4 f8 |
		}
	}
}

music = {
	<<
		\new Staff \with {
			midiInstrument = "acoustic grand"
		} \fixed c' {
			\clef treble
			\global
			\pianoRight
		}
		\new Staff \with {
			midiInstrument = "acoustic grand"
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
