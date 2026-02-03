% 月亮力量

\version "2.24.4"
\language "english"

\header {
	title = "Moon Power"
	composer = "tga"
	tagline = ""
}

global = {
	\key g \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 60
}

music = <<

	\new Staff \with {
		midiInstrument = "trumpet"
	} \fixed c' {

		\clef treble
		\global

		s1 * 4
		e'1

	}

	\new Staff \with {
		midiInstrument = "acoustic grand"
	} \fixed c' {

		\clef treble
		\global

		\repeat unfold 32 {
			r8 <d' fs'>8-. <d' fs'>-. <a c'>-. <a c'>-. <g b>-. <g b>-. <g b>-. |
		}

	}

	\new Staff \with {
		midiInstrument = "acoustic grand"
	} \fixed c {

		\clef bass
		\global

		\repeat unfold 8 {
			c1 | b, | a, | g,
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

