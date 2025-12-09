% 无敌帅鸟

\version "2.24.4"
\language "english"

\header {
	title = "Amazing Cool Bird"
	composer = "tga"
	tagline = ""
}

global = {
	\key g \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 120
}

music = <<

	\new Staff \with {
		midiInstrument = "blown bottle"
	} \fixed c'' {

		\clef treble
		\global

		d4-. d4-. d4-. d4-. | d4-. d8.-. e16-. d2-. |
		d4-. d4-. d4-. d4-. | d4-. d8.-. e16-. d2-. |
		d4-. d4-. d2-.      | d4-. d4-. d2-.        |
		e4-. e4-. e4-. e4-. | d4-. d8.-. e16-. d2-. |

	}

	\new Staff \with {
		midiInstrument = "accordion"
	} \fixed c {

		\clef bass
		\global

		<g b d'>4-. <g b d'>4-. <g b d'>4-. <g b d'>4-. |
		<gf bf d'>4-. <gf bf d'>8.-. <gf bf d'>16-. <gf bf d'>2-. |
		<g b d'>4-. <g b d'>4-. <g b d'>4-. <g b d'>4-. |
		<gf bf d'>4-. <gf bf d'>8.-. <gf bf d'>16-. <gf bf d'>2-. |
		<c' e' g'>4-. <c' e' g'>4-. <c' e' g'>2-. |
		<b d' fs'>4-. <b d' fs'>4-. <b d' fs'>2-. |
		<a c' e'>4-. <a c' e'>4-. <a c' e'>4-. <a c' e'>4-. |
		<d' fs' a'>4-. <d' fs' a'>8.-. <d' fs' a'>16-. <d' fs' a'>2-. |

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
