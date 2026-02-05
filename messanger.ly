% 風の使者

\version "2.24.4"
\language "english"

\header {
	title = "Messenger of the Wind"
	composer = "tga"
	tagline = ""
}

global = {
	\key g \minor
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 112
}

rhythmA =
#(define-music-function
	(noteA noteB noteC)
	(ly:pitch? ly:pitch? ly:pitch?)
#{
	\repeat unfold 4 { $noteA 4 < $noteB $noteC > 4 }
#})

rhythmB =
#(define-music-function
	(noteA noteB noteC)
	(ly:pitch? ly:pitch? ly:pitch?)
#{
	\repeat unfold 2 { $noteA 4 < $noteB $noteC > 4 } $noteA 4 r2.
#})

melodyA = {
	a1~ | a4 g f ef | d1~ | d1 |
	g1~ | g4 f ef df | c1~ | c1 |
	bf1 | ef2 bf2 | af4 gf4 f4 gf4 | af2 r4 af4 |
	g1~ | g1 | \grace { a4 bf } b1~ | b4 r2. |
}

chordsA = {
	\rhythmA g bf d'
	\rhythmA a c' d'
	\rhythmA af c' d'
	\rhythmA f af c'
	\rhythmA gf bf ef'
	\rhythmA f af c'
	\rhythmA g bf d'
	\rhythmB g b d'
}

music = <<

	\new Staff \with {
		midiInstrument = "accordion"
	} \fixed c'' {

		\clef treble
		\global

		s1 * 4

		\repeat volta 2 \melodyA

		c'1~ | c'4 bf af gf | f1~ | f4 gf af bf |
		c'1~ | c'4 ef'2 df'4 | bf1~ | bf1 |
		d'1~ | d'4 f'2 ef'4 | d'2. c'4 | a2 r4 bf4 |
		c'1~ | c'4 bf2 af4 | g1~ | g4 r2. |

		\melodyA

	}

	\new Staff \with {
		midiInstrument = "accordion"
	} \fixed c {

		\clef bass
		\global

		\rhythmA g bf d'
		\rhythmA g bf d'

		\repeat volta 2 \chordsA

		\rhythmA f af c'
		\rhythmA gf bf ef'
		\rhythmA f af c'
		\rhythmA gf bf ef'
		\rhythmA g bf d'
		\rhythmA a c' d'
		\rhythmA af c' d'
		\rhythmB g bf d'

		\chordsA

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
