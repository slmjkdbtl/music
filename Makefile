SRC := $(wildcard *.ly)
OUT_DIR := output
PDF_TARGETS := $(patsubst %.ly, $(OUT_DIR)/%.pdf, $(SRC))
MIDI_TARGETS := $(patsubst %.ly, $(OUT_DIR)/%.midi, $(SRC))
AUDIO_TARGETS := $(patsubst %.ly, $(OUT_DIR)/%.ogg, $(SRC))
SCORE := racoon

.PHONY: all
all: $(PDF_TARGETS) $(MIDI_TARGETS) $(AUDIO_TARGETS)

.PHONY: play
play: $(OUT_DIR)/$(SCORE).ogg
	mpv $<

$(OUT_DIR)/%.pdf: %.ly
	lilypond --pdf -o $(OUT_DIR) $<

$(OUT_DIR)/%.midi: %.ly
	lilypond -dno-print-pages -o $(OUT_DIR) $<

$(OUT_DIR)/%.ogg: $(OUT_DIR)/%.midi
	timidity $<

.PHONY: clean
clean:
	rm -rf output
