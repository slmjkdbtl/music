% 太阳宫

\version "2.24.4"
\language "english"

\header {
	title = "Sun Palace"
	composer = "tga"
	tagline = ""
}

global = {
	\key f \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 70
}

motifMelody = {
	r4 c4( f4 a4 | bf4. a8 c4) r8 bf16( a |
	g8-.) a16( g8-.) a16( g4) r4 g16 a |
	c'4( bf a g)
}

trumpet = {
	a2 r4. f8 |
	e2 r4. d16 e16 |
	f2 r4. a16 f16 |
	e2 r4. e8 |
	f8-. g16 a8-. r16 d4 r4 e8 |
	f8-. g16 a8-. r16 a,4 r4 a8 |
	g8-. a16 g8-. a16 g8 r4. a8 |
	g8-. a16 g8-. a16 g8 r2 |
	\repeat unfold 4 {
		\motifMelody
	}
}

bass = {
	g4 r g r |
	a4 r a r |
	g4 r g r |
	a4 r a r |
	bf4 r bf r |
	f4 r f r |
	g4 g g g |
	c'4 c' c' c' |
	\repeat unfold 4 {
		f4 f f f |
		a4 a a a |
		bf4 bf bf bf |
		c'4 c' c' c' |
	}
}

chord = \chordmode {
	g1:m a:m g:m a:m bf:m7 f g:m c
	\repeat unfold 4 { f1 a:m bf c }
}

music = {
	<<
		\new Staff \with {
			instrumentName = "trumpet"
			midiInstrument = "trumpet"
		} \fixed c' {
			\clef treble
			\global
			\trumpet
		}
		\new Staff \with {
			instrumentName = "bass"
			midiInstrument = "acoustic bass"
		} \fixed c, {
			\clef bass
			\global
			\bass
		}
	>>
}

\score {
	<<
		\music
		\new ChordNames \chord
	>>
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
