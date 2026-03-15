PAPER_DIR := paper
BUILD_DIR := build
MAIN      := main

.PHONY: paper clean analyze

paper:
	@mkdir -p $(BUILD_DIR)
	cd $(PAPER_DIR) && \
		pdflatex -output-directory=../$(BUILD_DIR) -interaction=nonstopmode $(MAIN).tex
	cd $(BUILD_DIR) && BIBINPUTS=../$(PAPER_DIR): bibtex $(MAIN)
	cd $(PAPER_DIR) && \
		pdflatex -output-directory=../$(BUILD_DIR) -interaction=nonstopmode $(MAIN).tex && \
		pdflatex -output-directory=../$(BUILD_DIR) -interaction=nonstopmode $(MAIN).tex

analyze:
	uv run experiments/analyze.py

clean:
	rm -rf $(BUILD_DIR)/*
