# Comparative Analysis: Three Cellular Automaton Repos

## Basic Stats

| | **explorer** (C) | **sandbox** (Python) | **simulator** (Python) |
|---|---|---|---|
| Language | C99 | Python 3 + curses | Python 3 + curses |
| Final size | 10,876 lines | 14,727 lines | 12,336 lines |
| Commits | 72 | 50 | 46 |
| Rounds | 42 | 42 | 33 |
| Dependencies | 0 (just `-lm`) | 0 (stdlib only) | 0 required (NumPy optional) |
| Architecture | single file (`life.c`) | single file (`game_of_life.py`) | single file (`life.py`) |

All three share the same structural DNA: single-file monolith, zero dependencies, additive-only growth, no refactoring.

## Simulation Modes — Overlap Matrix

### Shared between sandbox and simulator (not in explorer)

| Mode | sandbox | simulator |
|---|---|---|
| Wolfram Elementary CA (256 rules) | ✓ | ✓ |
| Lenia (continuous CA) | ✓ | ✓ |
| Langton's Ant / Turmites | ✓ | ✓ |
| Wa-Tor Predator-Prey | ✓ | ✓ |
| Falling Sand | ✓ | ✓ |
| Physarum Slime Mold | ✓ | ✓ |
| Reaction-Diffusion (Gray-Scott) | ✓ | ✓ |
| Particle Life | ✓ | ✓ |
| Lattice Boltzmann Fluid | ✓ | ✓ |
| Ising Model | ✓ | ✓ |
| Boids Flocking | ✓ | ✓ |
| Wave Function Collapse | ✓ | ✓ |
| Abelian Sandpile | ✓ | ✓ |
| DLA Fractal Growth | ✓ | ✓ |
| Forest Fire | ✓ | ✓ |

All three repos share Conway's Game of Life with multiple rulesets as the base mode.

### Unique to sandbox only

| Mode | Notes |
|---|---|
| Brian's Brain / Wireworld (multi-state) | — |
| Neural Cellular Automata | learned update rules |
| Hydraulic Erosion | terrain simulation |
| Electromagnetic Particles | Lorentz force |
| N-Body Gravity | gravitational sim |
| Epidemic SIR | disease spread |
| Maze Generator + A* Solver | pathfinding |
| Mandelbrot/Julia Fractals | interactive zoom |
| Strange Attractors (Lorenz, Rossler) | chaos visualization |
| Double Pendulum | chaos physics |
| 3D Ray Caster | first-person maze walker |

### Unique to simulator only

| Mode | Notes |
|---|---|
| Wireworld | 4-state logic circuits |
| Cyclic CA | spiral waves |
| Chimera Grid | multi-rule coexistence zones |
| 2D Wave Equation | damped membrane |
| SPH Fluid | Lagrangian particle hydro |
| HashLife engine | quadtree-memoized exponential speedup |

### Unique to explorer only

The explorer has no additional simulation modes beyond Game of Life. Instead, it went deep on 16 scientific analysis overlays that neither other repo has:

| Analysis Overlay | Domain |
|---|---|
| Shannon entropy heatmap | Information theory |
| Lyapunov sensitivity map | Chaos theory |
| 2D Fourier spectrum | Signal processing |
| Box-counting fractal dimension | Fractal geometry |
| Wolfram class detector (I/II/III/IV) | Automata theory |
| Information flow field (transfer entropy) | Causal inference |
| Phase-space attractor (Takens embedding) | Dynamical systems |
| Causal light cone | Relativistic CA theory |
| Prediction surprisal | Information theory |
| Mutual information network | Network science |
| Composite complexity index | Complexity science |
| Topological features (Betti numbers) | Algebraic topology |
| Renormalization group flow | Statistical physics |
| Kolmogorov complexity (LZ77) | Algorithmic information theory |
| Stochastic temperature field | Statistical mechanics |
| Population dynamics dashboard | Statistics |

## Feature Comparison

| Feature | explorer | sandbox | simulator |
|---|---|---|---|
| **Core Interaction** | | | |
| Mouse/cursor painting | ✓ | ✓ | ✓ |
| Brush sizes/shapes | — | ✓ | — |
| Pattern stamping (presets) | ✓ (20 patterns) | ✓ | ✓ |
| Zoom/pan viewport | ✓ (1x/2x/4x) | — | — |
| Minimap | ✓ | — | — |
| Kaleidoscope symmetry drawing | ✓ (2/4/8-fold) | — | — |
| **Persistence** | | | |
| Save/load | ✓ (binary `.life`) | ✓ (JSON) | ✓ (`.cells`) |
| RLE import/export | ✓ | ✓ | ✓ |
| Screenshot/image export | ✓ (PPM) | — | ✓ (PNG, pure Python) |
| GIF export | — | — | ✓ (pure Python LZW) |
| **Time** | | | |
| Time-travel / rewind | ✓ (256-frame ring) | ✓ (history timeline) | ✓ (10,000 gen buffer) |
| **Rendering** | | | |
| Cell age coloring | ✓ (heatmap) | ✓ (color-coded) | ✓ (gradient) |
| Ghost trails | ✓ | — | — |
| Braille ultra-density mode | ✓ (8x zoom) | — | ✓ |
| Half-block rendering | ✓ | — | — |
| Heatmap visualization | ✓ | ✓ | — |
| **Topology** | | | |
| Toroidal wrapping | ✓ | ✓ | ✓ |
| Klein bottle | ✓ | — | ✓ |
| Möbius strip | ✓ | — | ✓ |
| Projective plane | ✓ | — | — |
| **Analysis** | | | |
| Population sparkline | ✓ | ✓ | ✓ (scrolling graph) |
| Pattern recognition/census | ✓ (bitmask matching) | ✓ (still lifes, oscillators) | ✓ (D4 symmetry) |
| Spaceship/glider detection | ✓ (motion tracking) | — | — |
| Frequency/oscillation analysis | ✓ | — | — |
| Signal tracer | ✓ | — | — |
| 16 scientific overlays | ✓ | — | — |
| **Advanced** | | | |
| Genetic algorithm rule discovery | ✓ | ✓ | ✓ |
| Multi-rule zones (per-cell) | ✓ | — | ✓ (Chimera Grid) |
| Emitters & absorbers | ✓ | — | — |
| Wormhole portals (non-local coupling) | ✓ | — | — |
| Dual-species ecosystem | ✓ | — | — |
| Split-screen comparison | — | ✓ | ✓ |
| Multiplayer / networking | — | — | ✓ (P2P TCP) |
| Scripting engine | — | — | ✓ (Python sandbox API) |
| Sound synthesis | — | — | ✓ |
| HashLife acceleration | — | — | ✓ |
| Demo/tour mode | ✓ | ✓ | ✓ |
| Cell probe inspector | ✓ | — | — |
| Interactive rule editor | ✓ (clickable B/S grid) | — | — |
| Mode picker menu | — | ✓ | — |

## Summary of Divergent Trajectories

The three repos started from the same seed (Conway's Game of Life) but evolved in fundamentally different directions:

1. **explorer** (C) — went **deep**: stayed with one simulation model but added 16 layers of scientific analysis (information theory, chaos theory, topology, statistical physics). It is a research instrument for studying a single CA.

2. **sandbox** (Python) — went **wide + exotic**: accumulated 27 simulation modes including unusual ones (3D ray caster, fractals, strange attractors, double pendulum). It is a simulation zoo optimized for visual spectacle.

3. **simulator** (Python) — went **wide + engineered**: accumulated 28 modes similar to sandbox, but also added unique infrastructure (multiplayer networking, scripting engine, HashLife, sound synthesis, GIF encoder). It is a simulation platform with extensibility features.

The sandbox and simulator followed nearly parallel paths (sharing ~16 modes), while the explorer is the outlier — the only one that chose depth over breadth.
