% 完能歌

\version "2.24.4"
\language "english"

\header {
	title = "Racoon Song"
	composer = "tga"
	tagline = ""
}

global = {
	\key bf \major
	\numericTimeSignature
}

intro = {
	\time 4/4
	\tempo 4 = 70
}

rally = {
	\time 3/4
	\tempo 4 = 94
	\mark "rally"
}

flute = {

	\intro

	r2. d8-. c8-. |

	\repeat volta 2 {

		d4-. g,-. g,-. d8-. c8-. |
		d4-. f,-. f,-. d8-. c8-. |
		d4-. g,-. g,8-. a,8-. bf,8-. c-. |
		d4-. d-. d-. d8-. c8-. |

		d4-. g,-. g,-. d8-. c8-. |
		d4-. f,-. f,-. d8-. c8-. |
		d4-. g,-. g,8-. a,8-. bf,8-. c-. |

		d4-. f-. f-.

		\alternative {
			\volta 1 { d8-. c8-. }
			\volta 2 { f,8.-. f,16 }
		} |

	}

	\rally

	\repeat volta 2 {

		g,4-. bf,4..-. d16-. |
		f4 r f,8.-. f,16-. |
		g,4-. bf,4..-. d16-. |
		f4 r f,8.-. f,16-. |
		g,4-. bf,-. d-. |
		f4-. ef-. d8.-. ef16-. |
		d4-. c4..-. bf,16-. |
		c4-. r f,8.-. f,16-. |

		g,4-. bf,4..-. d16-. |
		f4 r f,8.-. f,16-. |
		g,4-. bf,4..-. d16-. |
		f4 r f,8.-. f,16-. |
		g,4-. bf,-. d-. |
		f4-. ef-. d8.-. ef16-. |
		d'4-. c'4..-. bf16-. |
		a4-. r f,8.-. f,16-. |

	}

	g,4 bf,4. d8 |
	f4 r f,8. f,16 |
	g,4 bf,4. d8 |
	f4 r f,8. f,16 |
	g,4 bf,4 d4 |
	f4 ef d8. ef16 |
	d4-. c4.-. a,8-. |
	bf,2. |

}

keys = {

	\intro

	s1 |

	\repeat volta 2 {
		\repeat unfold 3 {
			ef4-. r <bf d'>-. r |
			bf,4-. r <bf d'>-. r |
		}
		ef4-. r <bf d'>-. r |
		bf,4-. r <bf d'>-.
		\alternative {
			\volta 1 { r }
			\volta 2 { r }
		} |
	}

	\rally

	\repeat volta 2 {
		\repeat unfold 2 {
			ef4-. <bf d'>-. <bf d'>-. |
			bf,4-. <bf d'>-. <bf d'>-. |
			ef4-. <bf d'>-. <bf d'>-. |
			bf,4-. <bf d'>-. <bf d'>-. |
			ef4-. <bf d'>-. <bf d'>-. |
			bf,4-. <bf d'>-. <bf d'>-. |
			c4-. <g bf>-. <g bf>-. |
			f4-. <a c'>-. <a c'>-. |
		}
	}

	<ef bf d'>2. |
	<bf, f a>2. |
	<ef bf d'>2. |
	<bf, f a>2. |
	<ef bf d'>2. |
	<bf, f a>2. |
	c4-. <g bf>-. <g bf>-. |
	<bf, f a>2. |

}

tuba = {

	\intro

	s1 |

	\repeat volta 2 {
		s1 * 7
		s4 * 3
		\alternative {
			\volta 1 { s4 }
			\volta 2 { s4 }
		}
	}

	\rally

	\repeat volta 2 {
		\repeat unfold 2 {
			ef4 r2 |
			bf,4 r2 |
			ef4 r2 |
			bf,4 r2 |
			ef4 r2 |
			bf,4 r2 |
			c4 r2 |
			f4 r2 |
		}
	}

	ef2 r4 |
	bf,2 r4 |
	ef2 r4 |
	bf,2 r4 |
	ef2 r4 |
	bf,2 r4 |
	c4 r2 |
	bf,2 r4 |

}

music = {
	<<
		\new Staff \with {
			instrumentName = "flute"
			midiInstrument = "flute"
		} \fixed c'' {
			\clef treble
			\global
			\flute
		}
		\new Staff \with {
			instrumentName = "keys"
			midiInstrument = "xylophone"
		} \fixed c {
			\clef bass
			\global
			\keys
		}
		\new Staff \with {
			instrumentName = "tuba"
			midiInstrument = "tuba"
		} \fixed c, {
			\clef bass
			\global
			\tuba
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
