SRC := $(wildcard *.ly)
OUTDIR := output
PDF_TARGETS := $(patsubst %.ly, $(OUTDIR)/%.pdf, $(SRC))
MIDI_TARGETS := $(patsubst %.ly, $(OUTDIR)/%.midi, $(SRC))
AUDIO_TARGETS := $(patsubst %.ly, $(OUTDIR)/%.mp3, $(SRC))
SCORE ?= racoon

.PHONY: all
all: $(PDF_TARGETS) $(MIDI_TARGETS) $(AUDIO_TARGETS)

.PHONY: pdf
pdf: $(OUTDIR)/$(SCORE).pdf

.PHONY: mp3
mp3: $(OUTDIR)/$(SCORE).mp3

.PHONY: play
play: $(OUTDIR)/$(SCORE).mp3 $(OUTDIR)/$(SCORE).pdf
	open "$(word 2,$^)"
	mpv "$(word 1,$^)"

.PHONY: view
view: $(OUTDIR)/$(SCORE).pdf
	open $<

$(OUTDIR)/%.pdf $(OUTDIR)/%.midi: %.ly | $(OUTDIR)
	lilypond -dno-point-and-click -o $(OUTDIR) $<

$(OUTDIR)/%.mp3: $(OUTDIR)/%.midi
	timidity $< -Ow -o - | ffmpeg -i - -f wav -b:a 128k -y $@

$(OUTDIR):
	mkdir -p $@

.PHONY: clean
clean:
	rm -rf $(OUTDIR)
