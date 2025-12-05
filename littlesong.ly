% 小歌曲

\version "2.24.4"
\language "english"

\header {
	title = "Little Song"
	composer = "tga"
	tagline = ""
}

global = {
	\key c \major
	\numericTimeSignature
	\time 3/4
	\tempo 4 = 120
}

music = <<

	\new Staff \with {
		midiInstrument = "recorder"
	} \fixed c'' {

		\clef treble
		\global

		\repeat volta 2 {
			e2.~ | e2. | r2 e4 | e4 f4 g4 |
			e2.~ | e2. | r2. | e4 f4 g4 |
			a2.~ | a2. | r2. | c'2 b4 |
			g2.~ | g2. | r2. | r2. |
		}

		a2. | bf2. | c'2. | d'2. |
		f2.~ | f2. | r2. | r2. |
		c'2. | bf2. | ef2. | f2. |
		g2.~ | g2. | r2. | r2. |

	}

	\new Staff \with {
		midiInstrument = "voice oohs"
	} \fixed c {

		\clef bass
		\global

		\repeat volta 2 {
			\repeat unfold 2 {
				f4 <c' e'>4-. r8 <c' e'>8 |
				f4 <c' e'>4-. r8 <c' e'>8 |
				f4 <c' e'>4-. r8 <c' e'>8 |
				f4 <c' e'>4-. r4 |
				e4 <b d'>4-. r8 <b d'>8 |
				e4 <b d'>4-. r8 <b d'>8 |
				e4 <b d'>4-. r8 <b d'>8 |
				e4 <b d'>4-. r4 |
			}
		}
		ef4 <bf d'>4-. r8 <bf d'>8 |
		ef4 <bf d'>4-. r8 <bf d'>8 |
		ef4 <bf d'>4-. r8 <bf d'>8 |
		ef4 <bf d'>4-. r4 |
		d4 <a c'>4-. r8 <a c'>8 |
		d4 <a c'>4-. r8 <a c'>8 |
		d4 <a c'>4-. r8 <a c'>8 |
		d4 <a c'>4-. r4 |
		\repeat volta 3 {
			df4 <af c'>4-. r8 <af c'>8 |
			df4 <af c'>4-. r8 <af c'>8 |
			df4 <af c'>4-. r8 <af c'>8 |
			df4 <af c'>4-. r4 |
			c4 <g bf>4-. r8 <g bf>8 |
			c4 <g bf>4-. r8 <g bf>8 |
			c4 <g bf>4-. r8 <g bf>8 |
			c4 <g bf>4-. r4 |
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
