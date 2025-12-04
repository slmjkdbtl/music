% 小华尔兹

\version "2.24.4"
\language "english"

\header {
	title = "Little Waltz"
	composer = "tga"
	tagline = ""
}

global = {
	\key g \major
	\numericTimeSignature
	\time 3/4
	\tempo 4 = 160
}

treble = {

	d'2 e'4 | fs'2 g'4 | fs'2. | r2. |
	f'2 d'4 | b2 g4 | b2. | r2. |
	b2 a4 | b2 c'4 | b2. | g2 d4 |
	g2. | r2 d4 | g2. | r2. |

	g'4 fs' d' | b2. | \grace { c'4 cs' } d'2. | fs2 g4 |
	a2 b4 | c'4 d'4 c'16 d' c'8 | b2. | r2. |
	g2 fs4 | g2 a4 | b2 d4 | d'2. |
	df'8 d'8 r2 | df'8 d'8 r2 | g2. | r2. |

}

bass = {
	\repeat unfold 2 {
		g4 <b d'>-. <b d'>-. |
		g4 <b d'>-. <b d'>-. |
		fs4 <b d'>-. <b d'>-. |
		fs4 <b d'>-. <b d'>-. |
		f4 <b d'>-. <b d'>-. |
		f4 <b d'>-. <b d'>-. |
		e4 <b d'>-. <b d'>-. |
		e4 <b d'>-. <b d'>-. |
		ef4 <a c'>-. <a c'>-. |
		ef4 <a c'>-. <a c'>-. |
		d4 <g b>-. <g b>-. |
		d4 <g b>-. <g b>-. |
		df4 <g b>-. <g b>-. |
		df4 <g b>-. <g b>-. |
		g4-. r2 |
		r2. |
	}
}

music = {
	<<
		\new Staff \with {
			midiInstrument = "clarinet"
		} \fixed c' {
			\clef treble
			\global
			\treble
		}
		\new Staff \with {
			midiInstrument = "accordion"
		} \fixed c {
			\clef bass
			\global
			\bass
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
