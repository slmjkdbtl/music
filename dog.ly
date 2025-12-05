% 小狗歌

\version "2.24.4"
\language "english"

\header {
	title = "Dog Song"
	composer = "tga"
	tagline = ""
}

global = {
	\key c \major
	\numericTimeSignature
}

music = <<

	\new Staff \with {
		midiInstrument = "piccolo"
	} \fixed c' {

		\clef treble
		\global

		\time 3/4
		\tempo 4 = 124
		d4 a4 r8 c'8( |
		e'4) r2 | r2. | r2. | e4 a4 r8 c'8(  |
		d'4) r2 | r2. | r2. | e4 a4 r8 f'8(  |
		e'4) r2 | r2. | r2. | e4 a4 r8 c'8(  |
		d'4) r2 | r2. | r2. | b4 c'4 r8 g8(  |
		a4) r2  | r2. | r2. | a4 b4 r8 c'8(  |
		d'4) r2 | r2. | r2. | b4 c'4 r8 d'8( |
		\tempo 4 = 134
		e'4) b g e f g a b c' g' f' e' |
		d' c' b c' d' b a b c' g a b |
		b c' e' b' a' e' b' a' e' a' g' e' |
		d' c' b c' d' b a b c' g e d |
		\time 4/4
		\tempo 4 = 40
		e4-. r8. e'16-. r4.. e'16-. |
		r4.. e'16-. r4.. e'16-. |
		r4.. e'16-. r4.. e'16-. |
		r4.. e'16-. r4. e'16-. a'16-. |
		\tempo 4 = 54
		\repeat volta 2 {
			a'4-. g'4-. f'8.-. e'16-. r8-. d'8-. |
			cs'16-. d'16-. e'16-. r16 r2 r16 c'16-. a16-. b16-. |
			c'16-. d'16-. a16-. r16 r2 r8 r16 g16-. |
			\alternative {
				\volta 1 { a16-. r16 r8 r2 r8 e'16-. a'16-. | }
				\volta 2 { a16-. r16 r8 r2 r4 | }
			}
		}
		\repeat volta 2 {
			a4 b4 c'4 r8 r16 a'16 |
			e'8 r8 r2. |
			a4 b4 c'4 r8 r16 d'16 |
			\alternative {
				\volta 1 { e'8 r8 r2. | }
				\volta 2 { e'8 r8 r2. | }
			}
		}

	}

	\new Staff \with {
		midiInstrument = "piccolo"
	} \fixed c {

		\clef bass
		\global

		r2. |
		\repeat unfold 3 {
			f4 <c' e'> <c' e'> f <c' e'> <c' e'> f r2 r2. |
			e4 <b d'> <b d'> e <b d'> <b d'> e r2 r2. |
		}
		\repeat unfold 2 {
			\repeat unfold 4 { f4 <c' e'> <c' e'> | }
			\repeat unfold 4 { e4 <b d'> <b d'> | }
		}
		\repeat unfold 2 {
			f4-. c'-. f-. c'-. |
			fs4-. cs'-. fs-. cs'-. |
		}
		\repeat volta 2 {
			f4-. c'-. f-. c'-. |
			fs4-. cs'-. fs-. cs'-. |
			f4-. c'-. f-. c'-. |
			\alternative {
				\volta 1 { fs4-. cs'-. fs-. cs'4-. | }
				\volta 2 { fs4-. cs'-. fs-. cs'4-. | }
			}
		}
		\repeat volta 2 {
			f4-. c'-. f-. c'-. |
			fs4-. cs'-. fs-. cs'-. |
			f4-. c'-. f-. c'-. |
			\alternative {
				\volta 1 { fs4-. cs'-. fs-. cs'-. | }
				\volta 2 { fs4-. cs'-. fs-. r | }
			}
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
