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

rhythmA =
#(define-music-function
	(noteA noteB noteC)
	(ly:pitch? ly:pitch? ly:pitch?)
#{
	$noteA 4 < $noteB $noteC > 4-. r8 < $noteB $noteC > 8
	$noteA 4 < $noteB $noteC > 4-. r8 < $noteB $noteC > 8
	$noteA 4 < $noteB $noteC > 4-. r8 < $noteB $noteC > 8
	$noteA 4 < $noteB $noteC > 4-. r4
#})

rhythmB =
#(define-music-function
	(noteA noteB noteC)
	(ly:pitch? ly:pitch? ly:pitch?)
#{
	$noteA 4 < $noteB $noteC > 4-. r8 < $noteB $noteC > 8
	$noteA 4 < $noteB $noteC > 4-. r8 < $noteB $noteC > 8
	$noteA 4 r2
	r2.
#})

trebleMotif = {
	\repeat volta 2 {
		e2.~ | e2. | r2 e4 | e4 f4 g4 |
		e2.~ | e2. | r2. | e4 f4 g4 |
		a2.~ | a2. | r2. | c'2 b4 |
		g2.~ | g2. | r2. | r2. |
	}
}

bassMotif = {
	\repeat volta 2 {
		\repeat unfold 2 {
			\rhythmA f c' e'
			\rhythmA e b d'
		}
	}
}

music = <<

	\new Staff \with {
		midiInstrument = "recorder"
	} \fixed c'' {

		\clef treble
		\global

		\trebleMotif

		a2. | bf2. | c'2. | d'2. |
		f2.~ | f2. | r2. | r2. |
		c'2. | bf2. | ef2. | f2. |
		g2.~ | g2 f8 ef8 | d2.~ | d2 c4 |
		\key af \major
		df4 c4 bf,8 c8 | df2 f4 | af2. | r4 af4 f4 |
		g2 af4 | g2 f4 | c2. | r2 c4 |
		df4 c4 bf,8 c8 | df2 f4 | af2. | c'2 bf4 |
		ef2.~ | ef2. | r2. | r2. |
		f2.~ | f4 r4 g4 | af2.~ | af4 r2 |
		c2 df4 | c2 df4 | ef2. | r2. |
		f2.~ | f4 r4 g4 | af2. | r4 f4 g4 |
		af2.~ | af4 r4 bf4 | b2. | r2. |

		\key c \major
		\trebleMotif

	}

	\new Staff \with {
		midiInstrument = "accordion"
	} \fixed c {

		\clef bass
		\global

		\bassMotif

		\rhythmA ef bf d'
		\rhythmA d a c'
		\rhythmA df af c'
		\rhythmA c g bf
		\key af \major
		\repeat unfold 3 {
			\rhythmA df af c'
			\rhythmA c g bf
		}
		\rhythmA df af c'
		\rhythmB e af b

		\key c \major
		\bassMotif

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
