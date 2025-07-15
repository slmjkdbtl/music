% 太阳宫

\version "2.24.4"
\language "english"

\header {
	title = "Sun Palace"
	composer = "tga"
	tagline = ""
}

global = {
	\key f \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 110
}

trumpet = {
	% TODO
}

guitar = {
	% TODO
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
			instrumentName = "guitar"
			midiInstrument = "acoustic guitar (nylon)"
		} \fixed c {
			\clef treble
			\global
			\guitar
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
