\version "2.24.4"
\language "english"

\header {
	title = "racoon song"
	composer = "tga"
	tagline = ""
}

global = {
	\key bf \major
	\time 4/4
	\tempo 4 = 70
}

flute = \relative c'' {

	\global
	\set Staff.midiInstrument = #"flute"
	\clef treble

	r r r d8-. c-.

	d4-. g,-. g-. d'8-. c-.
	d4-. f,-. f-. d'8-. c-.
	d4-. g,-. g8-. a-. bf-. c-.
	d4-. d-. d-. d8-. c-.

	d4-. g,-. g-. d'8-. c-.
	d4-. f,-. f-. d'8-. c-.
	d4-. g,-. g8-. a-. bf-. c-.
	d4-. f-. f-. r-.

}

piano = \relative c' {

	\global
	\set Staff.midiInstrument = #"piano"
	\clef bass

	r1

	ef,4-. r <bf' d>-. r
	bf,-.  r <bf' d>-. r
	ef,-.  r <bf' d>-. r
	bf,-.  r <bf' d>-. r

	ef,4-. r <bf' d>-. r
	bf,-.  r <bf' d>-. r
	ef,-.  r <bf' d>-. r
	bf,-.  r <bf' d>-. r

}

\score {
	<<
		\new Staff \flute
		\new Staff \piano
	>>
	\layout {}
	\midi {}
}
