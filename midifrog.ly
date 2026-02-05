% midi蛙声

\version "2.24.4"
\language "english"

\header {
	title = "MIDI Frog"
	composer = "tga"
	tagline = ""
}

global = {
	\key g \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 108
}

frogA = {
	<c e>4-. <c e>-. <c e>-. <c e>-. |
	<c e>-. <c e>-. <c e>-. <c e>8 <b, ef>8 |
}
frogB = {
	e4-. e-. e-. e-. |
	e-. e-. e-. e8 ef8 |
}

music = <<

	\new Staff \with {
		midiInstrument = "piccolo"
	} \fixed c' {

		\clef treble
		\global

		\repeat volta 4 {
			\frogA
		}
		\repeat volta 8 {
			\frogA
			\frogA
		}
		\repeat volta 4 {
			\frogA
			\frogA
		}
		\key c \major
		\repeat volta 4 {
			\frogB
			\frogB
		}
		\key g \major
		\repeat volta 4 {
			\frogA
			\frogA
		}

	}

	\new Staff \with {
		midiInstrument = "accordion"
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
		\repeat volta 4 {
			<c g>1~ |
			<c g>1 |
			<d fs>1~ |
			<d fs>1 |
		}
		\key c \major
		\repeat volta 4 {
			<f a c'>1~ |
			<f a c'>1 |
			<e g b>1~ |
			<e g b>1 |
		}
		\key g \major
		\repeat volta 4 {
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
