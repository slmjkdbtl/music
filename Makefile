SRC := $(wildcard *.ly)
OUTDIR := output
PDF_TARGETS := $(patsubst %.ly, $(OUTDIR)/%.pdf, $(SRC))
MIDI_TARGETS := $(patsubst %.ly, $(OUTDIR)/%.midi, $(SRC))
AUDIO_TARGETS := $(patsubst %.ly, $(OUTDIR)/%.ogg, $(SRC))
SCORE := racoon

.PHONY: all
all: $(PDF_TARGETS) $(MIDI_TARGETS) $(AUDIO_TARGETS)

.PHONY: play
play: $(OUTDIR)/$(SCORE).ogg $(OUTDIR)/$(SCORE).pdf
	open $(word 2,$^)
	mpv $(word 1,$^)

$(OUTDIR)/%.pdf: %.ly
	lilypond --pdf -o $(OUTDIR) $<

$(OUTDIR)/%.midi: %.ly
	lilypond -dno-print-pages -o $(OUTDIR) $<

$(OUTDIR)/%.ogg: $(OUTDIR)/%.midi
	timidity $<

$(PDF_TARGETS): | $(OUTDIR)
$(MIDI_TARGETS): | $(OUTDIR)
$(AUDIO_TARGETS): | $(OUTDIR)

$(OUTDIR):
	mkdir -p $@

.PHONY: clean
clean:
	rm -rf output
