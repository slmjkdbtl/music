\version "2.24.4"
\language "english"

\header {
	title = "racoon song"
	composer = "tga"
	tagline = ""
}

global = {
	\key bf \major
	\numericTimeSignature
}

intro = {
	\time 4/4
	\tempo 4 = 70
}

rally = {
	\time 3/4
	\tempo 4 = 90
}

flute = \fixed c'' {

	\set Staff.instrumentName = "flute"
	\set Staff.midiInstrument = "flute"
	\clef treble
	\global

	\intro

	r r r d8-. c-.

	d4-. g,-. g,-. d8-. c8-.
	d4-. f,-. f,-. d8-. c8-.
	d4-. g,-. g,8-. a,8-. bf,8-. c-.
	d4-. d-. d-. d8-. c8-.

	d4-. g,-. g,-. d8-. c8-.
	d4-. f,-. f,-. d8-. c8-.
	d4-. g,-. g,8-. a,8-. bf,8-. c-.
	d4-. f-. f-. f,8.-. f,16

	\rally

	g,4-. bf,4..-. d16-.
	f4 r f,8.-. f,16-.
	g,4-. bf,4..-. d16-.
	f4 r f,8.-. f,16-.
	g,4-. bf,-. d-.
	f4-. ef-. d8.-. ef16-.
	d4-. c4..-. bf,16-.
	c4-. r f,8.-. f,16-.

	g,4-. bf,4..-. d16-.
	f4 r f,8.-. f,16-.
	g,4-. bf,4..-. g16-.
	f4 r f,8.-. f,16-.
	g,4-. bf,-. d-.
	f4-. ef-. d8.-. ef16-.
	d'4-. c'4..-. bf16-.
	a4-. r f,8.-. f,16-.

	g,4 bf,4. d8
	f4 r f,8. f,16
	g,4 bf,4. d8
	f4 r f,8. f,16
	g,4 bf,4 d4
	f4 ef d8. ef16
	d4-. c4.-. a,8-.
	bf,1

}

piano = \fixed c {

	\set Staff.instrumentName = "piano"
	\set Staff.midiInstrument = "acoustic grand"
	\clef bass
	\global

	\intro

	r1

	ef4-. r <bf d'>-. r
	bf,4-. r <bf d'>-. r
	ef4-. r <bf d'>-. r
	bf,4-. r <bf d'>-. r

	ef4-. r <bf d'>-. r
	bf,4-. r <bf d'>-. r
	ef4-. r <bf d'>-. r
	bf,4-. r <bf d'>-. r

	\rally

	ef4-. <bf d'>-. <bf d'>-.
	bf,4-. <bf d'>-. <bf d'>-.
	ef4-. <bf d'>-. <bf d'>-.
	bf,4-. <bf d'>-. <bf d'>-.
	ef4-. <bf d'>-. <bf d'>-.
	bf,4-. <bf d'>-. <bf d'>-.
	c4-. <g bf>-. <g bf>-.
	f4-. <a c'>-. <a c'>-.

	ef4-. <bf d'>-. <bf d'>-.
	bf,4-. <bf d'>-. <bf d'>-.
	ef4-. <bf d'>-. <bf d'>-.
	bf,4-. <bf d'>-. <bf d'>-.
	ef4-. <bf d'>-. <bf d'>-.
	bf,4-. <bf d'>-. <bf d'>-.
	c4-. <g bf>-. <g bf>-.
	f4-. <a c'>-. <a c'>-.

	<ef bf d'>2.
	<bf, f a>2.
	<ef bf d'>2.
	<bf, f a>2.
	<ef bf d'>2.
	<bf, f a>2.
	c4-. <g bf>-. <g bf>-.
	<bf, f a>2.

}

\score {
	<<
		\new Staff \flute
		\new Staff \piano
	>>
	\layout {}
	\midi {}
}
