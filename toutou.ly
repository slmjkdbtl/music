% 偷偷

\version "2.24.4"
\language "english"

\header {
	title = "toutou"
	composer = "tga"
	tagline = ""
}

global = {
	\key c \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 104
}

melodyA = {
	e1 | d1 | b,1 | r1 |
	e1 | d1 | bf,1 | r1 |
}

melodyB = {
	f,1 | g,2 a,4 bf,4 | c1 | r1 |
}

melodyBreakA = {
	<e' c'>8-. <e' c'>8-. <d' bf>8-. c'8-. r8 a4-. bf4-. c'4-. f8-. a8-. bf8-. g4-. |
	<e' c'>8-. <e' c'>8-. <d' bf>8-. c'8-. r8 a4-. bf4-. c'4-. a,8-. bf,-. c-. d-. e-. |
}

melodyC = {

	ds1 |
	es |
	as,1 |
	bs,2 r8 gs,8 as,8 bs,8 |

	cs1 |
	ds2 r4. as8 |
	bs,1 |
	r2 r8 bs,8 fs8 gs8 |

	bs1 |
	ds1 |
	es'1 |
	as2 r8 bs8 as8 bs,8 |

	fs1 |
	gs2 r4. as8 |
	bs,1 |
	r1 |

}

treble = \fixed c' {

	\clef treble
	\global

	\melodyA
	\melodyB

	\melodyA
	\melodyB
	\melodyB

	\bar "||"
	\tempo 4 = 110

	\melodyBreakA

	f1 |
	g2 a4 bf4 |
	c'1 |
	r2 r8 g8 f8 c8 |

	\bar "||"
	\key cs \major

	\melodyC

	\bar "||"
	\key c \major

	\melodyBreakA

	f1 |
	g2 a4 bf4 |
	c'1 |
	r2 r8 g8 f8 c8 |

	\bar "||"
	\key cs \major

	\melodyC

	\bar "||"
	\key c \major

	\melodyBreakA

	f1 |
	g2 a4 bf4 |
	c'1 |
	r1 |

}

bassc = { c4-. g8-. g8-. c4-. g4-. | }
bassbf = { bf,4-. f8-. f8-. bf,4-. f4-. | }
bassfs = { fs4-. cs'8-. cs'8-. fs4-. cs'4-. | }
bassgs = { gs4-. ds'8-. ds'8-. gs4-. ds'4-. | }
bassfsl = { fs4-. cs'4-. fs4-. cs'4-. | }
bassgsl = { gs4-. ds'4-. gs4-. ds'4-. | }
bassBreak = { bf1-. | r1 | bf1-. | r1 | }

bassA = {
	\bassc
	\bassc
	\bassc
	\bassc
}

bassB = {
	\bassbf
	\bassbf
	\bassc
	\bassc
}

bassC = {

	\bassfs
	\bassfs
	\bassgs
	\bassgs

	\bassfs
	\bassfs
	\bassgs
	\bassgs

	\bassfs
	\bassfs
	\bassgs
	\bassgs

	\bassfs
	\bassfs
	\bassgs
	gs4-. r2. |

}

bass = \fixed c, {

	\clef bass
	\global

	\bassA
	\bassA
	\bassB

	\bassA
	\bassA
	\bassB

	\bassbf
	\bassbf
	\bassc
	c4-. g8-. g8-. c4 r4 |

	\bassBreak
	\bassB

	\key cs \major

	\bassC

	\key c \major

	\bassBreak
	\bassB

	\key cs \major

	\bassC

	\key c \major

	\bassBreak

	\bassbf
	\bassbf
	\bassc
	c1-. |

}

\score {
	<<
		\new Staff \with {
			midiInstrument = "xylophone"
		} \treble
		\new Staff \with {
			midiInstrument = "acoustic bass"
		} \bass
	>>
	\layout {}
	\midi {}
}
