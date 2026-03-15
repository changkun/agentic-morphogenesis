# Architectural Morphogenesis in Autonomous Agent Systems

[[Paper (PDF)](paper/main.pdf)]

This repository contains the paper, experiment code, and artifacts for our study on architectural evolution in autonomous agentic systems.

## Abstract

This paper develops a theoretical framework for understanding the architectural evolution of autonomous agentic systems. Drawing on a longitudinal case study in which an LLM-based agent pipeline operated without human intervention for seven days, we identify a recurring phenomenon we term *bottleneck migration*: resolving a performance constraint in one dimension reliably relocates it to another, rather than producing net improvement. We propose a *fission principle* that accounts for the observed pattern of role differentiation in multi-agent architectures, and we formalize the trust relationship between agents and human overseers as a Gaussian Process preference learning problem. The framework extends, in a more speculative register, to populations of agent instances, multi-principal preference aggregation, and co-evolutionary dynamics.

## Repository Structure

```
├── paper/            LaTeX source for the paper
│   ├── main.tex      Main document (ACM sigconf format)
│   ├── sections/     Per-section .tex files
│   ├── references.bib BibTeX bibliography
│   └── figures/      External figures
├── experiments/      Experiment code and scripts
├── artifacts/        Data, logs, and intermediate outputs
├── build/            Compiled PDFs (generated, not tracked)
└── Makefile          Build automation
```

## Experiments

| Repository | Description |
|---|---|
| [ralph](https://github.com/changkun/ralph) | The Wallfacer agent pipeline (generator agent) |
| [cellular-automaton-simulator](https://github.com/changkun/cellular-automaton-simulator) | Cellular automaton simulator |
| [cellular-automaton-explorer](https://github.com/changkun/cellular-automaton-explorer) | Cellular automaton explorer |
| [cellular-automaton-sandbox](https://github.com/changkun/cellular-automaton-sandbox) | Cellular automaton sandbox |

All experiment repos are included as git submodules under `experiments/`.

## Building the Paper

Requires a TeX distribution with `latexmk` (e.g., TeX Live or MacTeX).

```sh
make paper    # compiles to build/main.pdf
make clean    # removes build artifacts
```

## Citation

```bibtex
@article{ou2025morphogenesis,
  title   = {Architectural Morphogenesis in Autonomous Agent Systems},
  author  = {Ou, Changkun},
  year    = {2026}
}
```

## License

Copyright (c) 2026 Changkun Ou. All rights reserved.
