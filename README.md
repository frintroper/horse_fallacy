# 🐴 The "All Horses Are the Same Color" Fallacy – Lean & LaTeX Formalization

[![License: MIT](https://shields.io)](https://opensource.org)
[![Lean: v4](https://shields.io)](https://github.io)
[![Compiler: pdfLaTeX](https://shields.io)](https://latex-project.org)

This repository contains the **noob-friendly, compile-ready LaTeX documentation** that unmasks and deconstructs the famous mathematical trick-proof claiming that *all horses in the world are the same color*. 

Using a strict, type-checked formalization in **Lean Prover**, this setup exposes the exact step where the logic tower crumbles: the jump from **1 to 2**, where disjunct singletons fail to overlap.

---

## 🎯 Features

* **Zero Unicode Crashes:** Optimized for standard `pdfLaTeX` engines using render-time ASCII-to-Math mapping (`literate`).
* **Lean Formalization:** Highlighting the explicit `induction_gap` and the mandatory `sorry` that breaks the fallacy.
* **Noob-Friendly Explanations:** Complex inductive step overlaps explained using everyday analogies.

---

## 🚀 Quick Start & Compilation

You can compile the document in less than 60 seconds using either a local LaTeX distribution or an online editor.

### Option A: Overleaf (Fastest)
1. Copy the full source code from the `horse_fallacy.tex` file in this repository.
2. Go to [Overleaf](https://overleaf.com) and create a new blank project.
3. Paste the code into your `main.tex` and hit **Recompile**.

### Option B: Local Compiler (Texmaker, TeXstudio, VS Code)
Ensure your engine is set to **pdfLaTeX** (default on most setups). 

```bash
# Clone the repository
git clone https://github.com

# Move into the folder
cd YOUR_REPO_NAME

# Compile via command line (optional)
pdflatex horse_fallacy.tex
```

---

## 🛠️ Repository Structure

```text
├── README.md               # You are here (Setup & Instructions)
├── horse_fallacy.tex       # Complete, compile-ready LaTeX document
└── lean_source/
    └── horse_fallacy.lean  # Raw Lean Prover file for code verifiers
```

---

## 💡 The Core Mathematical Catch

Mathematical induction behaves like a chain of dominos. While the **Base Case ($k=1$)** holds perfectly true (a single horse is always the same color as itself), the **Inductive Step ($k \rightarrow k+1$)** assumes that any two groups of size $k$ overlap.

When moving from **1 to 2**, you are dealing with two separate, completely isolated horses. Because there is **no middle horse** acting as a color bridge, information cannot propagate, and the whole logic tower collapses.

---

## 📜 License

This project is open-source and licensed under the **MIT License**. Feel free to share it, fork it, and use it to school your math-obsessed friends.
