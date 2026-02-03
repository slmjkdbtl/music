% 太阳力量

\version "2.24.4"
\language "english"

\header {
	title = "Sun Power"
	composer = "tga"
	tagline = ""
}

gA = {
	\key bf \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 70
}

gB = {
	\key bf \major
	\numericTimeSignature
	\time 3/4
	\tempo 4 = 210
}

music = <<

	\new Staff \with {
		midiInstrument = "acoustic grand"
	} \fixed c' {

		\clef treble
		\gA

		\repeat volta 2 {
			\repeat unfold 4 {
				bf8-. g-. bf-. c'-. d'-. r8-. d''4-. |
			}
		}

		\gB

		\grace { d'4 ef' } f'2. | ef'2. | d'2. | c'2. |
		f2. | r2. * 3 |
		g2. | r2. * 2 | r2 g4 |
		f2. | r2. * 3 |
		% d'2. | r2. | r2 c'4 | d'4 r4 g'4 | f'2. | r2. | c'2. | r4 g4 a4 |
		% bf4-. bf-. bf-. | bf-. bf-. bf-. | bf4-. r2 | r4 bf4-. bf-. |
		% bf4-. bf-. bf-. | bf-. bf-. bf-. | bf4-. r2 | r2. |
		g2. | r2 f4 | g4 bf2 | g2 d4 | f2. | d2 c4 | bf,2. | r2. |
		d2. | r2. | r2. | r2. | f2. | r2. | r2. | r2. |

	}

	\new Staff \with {
		midiInstrument = "acoustic grand"
	} \fixed c {

		\clef bass
		\gA

		\repeat volta 2 {
			<ef g bf>4 r2. |
			<d f a>4 r2. |
			<ef g bf>4 r2. |
			<f a c'>4 r2. |
		}

		\gB

		\repeat unfold 4 { ef4 <g bf>-. <g bf>-. }
		\repeat unfold 4 { d <f a>-. <f a>-. }
		\repeat unfold 4 { ef4 <g bf>-. <g bf>-. }
		\repeat unfold 4 { d <f a>-. <f a>-. }
		\repeat unfold 4 { g <bf d'>-. <bf d'>-. }
		\repeat unfold 4 { a <d' f'>-. <d' f'>-. }
		<af c' ef'>4-. <af c' ef'>-. <af c' ef'>-. |
		<af c' ef'>4-. <af c' ef'>-. <af c' ef'>-. |
		<af c' ef'>4-. r2 | r2. |
		<gf bf df'>4-. <gf bf df'>-. <gf bf df'>-. |
		<gf bf df'>4-. <gf bf df'>-. <gf bf df'>-. |
		<gf bf df'>4-. r2 | r2. |

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
