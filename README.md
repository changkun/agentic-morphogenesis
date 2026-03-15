# Architectural Morphogenesis in Autonomous Agent Systems

This repository contains the paper, experiment code, and artifacts for our study on architectural evolution in autonomous agentic systems.

## Abstract

This paper develops a theoretical framework for understanding the architectural evolution of autonomous agentic systems. Drawing on a longitudinal case study in which an LLM-based agent pipeline operated without human intervention for seven days, we identify a recurring phenomenon we term *bottleneck migration*: resolving a performance constraint in one dimension reliably relocates it to another, rather than producing net improvement. We propose a *fission principle* that accounts for the observed pattern of role differentiation in multi-agent architectures, and we formalize the trust relationship between agents and human overseers as a Gaussian Process preference learning problem. The framework extends, in a more speculative register, to populations of agent instances, multi-principal preference aggregation, and co-evolutionary dynamics.

## Repository Structure

```
├── paper/            LaTeX source for the paper
│   ├── main.tex      Main document (ACM sigconf format)
│   └── figures/      External figures
├── experiments/      Experiment code and scripts
├── artifacts/        Data, logs, and intermediate outputs
├── build/            Compiled PDFs (generated, not tracked)
└── Makefile          Build automation
```

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
  year    = {2025}
}
```

## License

Copyright (c) 2025 Changkun Ou. All rights reserved.
