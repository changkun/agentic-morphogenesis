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

## Explaining the Divergence: Orchestrator Prompt Differences

The three repos were driven by different versions of the Ralph orchestrator. The explorer used a modified Ralph with an explore/exploit steering mechanism, while sandbox and simulator used the stock version. This single variable substantially explains the divergent trajectories.

### Thinker Prompt Comparison

| Aspect | **explorer** (modified Ralph) | **sandbox / simulator** (stock Ralph) |
|---|---|---|
| Thinker system prompt | "You are a creative technical strategist. Look at this project and its `.ralph/` history of previous rounds." | *(empty — no system prompt)* |
| Round awareness | `This is round {{.Round}}` — knows its position in the sequence | No round awareness |
| Explore/exploit signal | `explore={{.ExplorePercent}}%` + score-based steering: "Lean toward exploration" / "Lean toward exploitation" / "Balance" | None — just "Be creative and strategic if needed" |
| Worker system prompt | "You are an autonomous software engineer." | "Implement the following goal." (inline, no role framing) |

### Explore Score Mechanism

The explorer's explore/exploit signal is not adaptive or learned — it is a deterministic sine wave with random jitter:

```go
func ExploreScore(round int) float64 {
    wave := (math.Sin(float64(round)*2*math.Pi/6-math.Pi/2) + 1) / 2
    jitter := (rand.Float64() - 0.5) * 0.4
    return max(0, min(1, wave+jitter))
}
```

This produces a **~6-round cycle** oscillating between 0 (full exploitation) and 1 (full exploration), with ±0.2 random jitter. The score is converted to a percentage (`explore=73%`) and bucketed into three steering phrases:

- Score > 0.8 → "Lean toward exploration"
- Score < 0.2 → "Lean toward exploitation"
- Otherwise → "Balance exploration and exploitation"

The periodicity means the explorer alternated between phases of adding new capabilities (exploration) and deepening existing ones (exploitation) in roughly 3-round half-cycles. This rhythm prevented the "always add a new mode" attractor that the other two repos fell into.

### How This Explains the Trajectories

The explore/exploit knob is why the explorer went deep while sandbox and simulator went wide.

- The explorer's thinker was told to **balance exploration and exploitation**, and was given a score that sometimes pushed it toward **exploitation** — meaning "deepen what you already have." This produced the trajectory of staying on one simulation model (Game of Life) and layering increasingly sophisticated analysis on top of it (Shannon entropy, Lyapunov maps, Fourier spectra, Betti numbers, renormalization group). Each analytical overlay *exploits* the existing simulation engine rather than replacing it.

- The sandbox and simulator thinkers had **no exploitation signal at all**. Their only guidance was "propose ONE goal, be creative." With no pressure to deepen existing features, the default creative strategy was always to **add something new** — a new simulation mode. This explains the near-parallel trajectories of sandbox and simulator: both agents, running the same prompt, converged on the same "add another mode" pattern and even chose many of the same modes (Lenia, Wa-Tor, Boids, Lattice Boltzmann, etc.).

### Conclusion

- **Same prompt → same strategy**: sandbox and simulator both defaulted to breadth-first exploration (27-28 modes each, ~16 shared).
- **Explore/exploit steering → depth**: explorer was periodically nudged toward exploitation, producing a single deep vertical stack instead.

The divergence in architectural trajectory across the three repos is substantially explained by a single prompt variable: the presence or absence of an explore/exploit score.
