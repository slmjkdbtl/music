% 进行曲

\version "2.24.4"
\language "english"

\header {
	title = "Marching Song"
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
		midiInstrument = "clarinet"
	} \fixed c' {

		\clef treble
		\global

		s1 * 2

	}

	\new Staff \with {
		midiInstrument = "tuba"
	} \fixed c {

		\clef bass
		\global

		e4-. b8-. b8-. b,4-. ef4 |
		e4-. b8-. b8-. b,4-. ef4 |

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
