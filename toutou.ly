% 偷偷

\version "2.24.4"
\language "english"

\header {
	title = "toutou"
	composer = "tga"
	tagline = ""
}

global = {
	\key f \major
	\numericTimeSignature
	\time 4/4
	\tempo 4 = 104
}

treble = \fixed c' {

	\clef treble
	\global

	e1 |
	d1 |
	b,1 |
	r1 |

	e1 |
	d1 |
	bf,1 |
	r1 |

	f,1 |
	g,2 a,4 bf,4 |
	c1 |
	r1 |

	f,1 |
	g,2 a,4 bf,4 |
	c1 |
	r1 |

	<e' c'>8-. <e' c'>8-. <d' bf>8-. c'8-. r8 a4-. bf4-. c'4-. f8-. a8-. bf8-. g4-. |
	<e' c'>8-. <e' c'>8-. <d' bf>8-. c'8-. r8 a4-. bf4-. c'4-. a,8-. bf,-. c-. d-. e-. |

	f1 |
	g2 a4 bf4 |
	c'1 |
	r2 r8 g8 f8 c8 |

	\key cs \major

	ds1 |
	f1 |
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

	% cs8 bs, cs ds es cs ds es
	% fs ds es gs bs2
	% bs,8 as, bs, cs ds bs, cs ds
	% es ds es fs as2

	% cs8 bs, cs ds es cs ds es
	% fs ds es gs bs4. cs'8
	% \key f \major
	% c'1
	% r2

	\key f \major

	<e' c'>8-. <e' c'>8-. <d' bf>8-. c'8-. r8 a4-. bf4-. c'4-. f8-. a8-. bf8-. g4-. |
	<e' c'>8-. <e' c'>8-. <d' bf>8-. c'8-. r8 a4-. bf4-. c'4-. a,8-. bf,-. c-. d-. e-. |

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

bass = \fixed c, {

	\clef bass
	\global

	\bassc
	\bassc
	\bassc
	\bassc

	\bassc
	\bassc
	\bassc
	\bassc

	\bassbf
	\bassbf
	\bassc
	\bassc

	\bassbf
	\bassbf
	\bassc
	\bassc

	bf,1-. |
	r1 |
	bf,1-. |
	r1 |

	\bassbf
	\bassbf
	\bassc
	\bassc

	\key cs \major

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
	\bassgs

	% \bassfsl
	% \bassfsl
	% \bassgsl
	% \bassgsl

	% \bassfsl
	% \bassfsl
	% \key f \major
	% \bassc
	% c1-.

	\key f \major

	bf,1-. |
	r1 |
	bf,1-. |
	r1 |

	\bassbf
	\bassbf
	\bassc
	c1-. |

}

\score {
	<<
		\new Staff \treble
		\new Staff \bass
	>>
	\layout {}
	\midi {}
}
