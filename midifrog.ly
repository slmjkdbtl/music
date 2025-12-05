% midi蛙声

\version "2.24.4"
\language "english"

\header {
	title = "MIDI Frog"
	composer = "tga"
	tagline = ""
}

global = {
	\key c \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 90
}

music = <<

	\new Staff \with {
		midiInstrument = "piccolo"
	} \fixed c' {

		\clef treble
		\global

		\repeat volta 4 {
			<e c>4-. <e c>-. <e c>-. <e c>-. |
			<e c>-. <e c>-. <e c>-. <e c>8 <ef b,>8 |
		}
		\repeat volta 8 {
			<e c>4-. <e c>-. <e c>-. <e c>-. |
			<e c>-. <e c>-. <e c>-. <e c>8 <ef b,>8 |
			<e c>4-. <e c>-. <e c>-. <e c>-. |
			<e c>-. <e c>-. <e c>-. <e c>8 <ef b,>8 |
		}

	}

	\new Staff \with {
		midiInstrument = "tuba"
	} \fixed c {

		\clef bass
		\global

		\repeat volta 4 {
			s1 |
			s1 |
		}
		\repeat volta 8 {
			c1~ |
			c1 |
			d1~ |
			d1 |
		}

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
