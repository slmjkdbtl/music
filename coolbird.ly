% 无敌帅鸟大冒险

\version "2.24.4"
\language "english"

\header {
	title = "Adventure of the Amazing Cool Bird"
	composer = "tga"
	tagline = ""
}

global = {
	\key g \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 120
}

birdA = {
	d4-. d4-. d4-. d4-. | d4-. d8.-. e16-. d2-. |
	d4-. d4-. d4-. d4-. | d4-. d8.-. e16-. d2-. |
	d4-. d4-. d2-.      | d4-. d4-. d2-.        |
	e4-. e4-. e4-. e4-. | d4-. d8.-. e16-. d2-. |
}

chordsA = {
	<g b d'>4-. <g b d'>4-. <g b d'>4-. <g b d'>4-. |
	<gf bf d'>4-. <gf bf d'>8.-. <gf bf d'>16-. <gf bf d'>2-. |
	<g b d'>4-. <g b d'>4-. <g b d'>4-. <g b d'>4-. |
	<gf bf d'>4-. <gf bf d'>8.-. <gf bf d'>16-. <gf bf d'>2-. |
	<c' e' g'>4-. <c' e' g'>4-. <c' e' g'>2-. |
	<b d' fs'>4-. <b d' fs'>4-. <b d' fs'>2-. |
	<a c' e'>4-. <a c' e'>4-. <a c' e'>4-. <a c' e'>4-. |
	<d' fs' a'>4-. <d' fs' a'>8.-. <d' fs' a'>16-. <d' fs' a'>2-. |
}

music = <<

	\new Staff \with {
		midiInstrument = "blown bottle"
	} \fixed c'' {

		\clef treble
		\global

		\birdA
		d1 | d1 |
		d1 | d1 |
		d1 | d1 |
		d1 | d1 |
		\birdA
		d1 |

	}

	\new Staff \with {
		midiInstrument = "accordion"
	} \fixed c {

		\clef bass
		\global

		\chordsA
		g8 b d' b d' b d' b | gf bf d' bf d'2 |
		f8 bf d' bf d' bf d' bf | e bf d' bf d'2 |
		f8 af c' af c' af c' af | e af c' af c'2 |
		ef8 af c' af c' af c' af | d e fs g a4 b4 |
		\chordsA
		<d g b>1 |

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
