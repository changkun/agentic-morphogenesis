PAPER_DIR := paper
BUILD_DIR := build
MAIN      := main

.PHONY: paper clean analyze

paper:
	@mkdir -p $(BUILD_DIR)
	cd $(PAPER_DIR) && latexmk -pdf -interaction=nonstopmode \
		-outdir=../$(BUILD_DIR) $(MAIN).tex

analyze:
	uv run experiments/analyze.py

clean:
	rm -rf $(BUILD_DIR)/*
