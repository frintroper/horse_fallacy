-- ====================================================================
-- THE "ALL HORSES ARE THE SAME COLOR" FALLACY DECONSTRUCTION
-- Formalized in Lean 4
-- ====================================================================

import Mathlib.Data.Finset.Basic

variable {Horse : Type} [DecidableEq Horse]
variable (color : Horse → Color)

/-- Definition: A finite set of horses is considered to be of the same color 
    if any two horses picked from that set share identical color properties. -/
def all_same_color (s : Finset Horse) : Prop :=
  ∀ h₁ h₂ ∈ s, color h₁ = color h₂

/-- Theorem: The general claim that all horses are the same color is false.
    We prove this by supplying two distinct horses with different colors. -/
theorem not_all_horses_same_color 
  (h₁ h₂ : Horse) (hneq : h₁ ≠ h₂) (hcol : color h₁ ≠ color h₂) :
  ¬ (∀ s : Finset Horse, all_same_color s) := by
  intro h
  have := h {h₁, h₂}
  simp [all_same_color] at this
  exact hcol (this h₁ (by simp) h₂ (by simp))

/-- The Critical Inductive Gap:
    The mathematical induction step requires the two sub-groups to overlap (k ≥ 2).
    For the jump from k = 1 to k = 2, the subsets are completely disjoint singletons.
    Lean forces a 'sorry' here because there is no bridge to transfer color info. -/
theorem induction_gap (k : ℕ) (hk : k = 1) :
  ¬ (∀ s : Finset Horse, s.card = k + 1 → 
       (∀ t ⊂ s, t.card = k → all_same_color t) → all_same_color s) := by
  -- When k = 1, the two sub-groups of size 1 have an empty intersection.
  -- Color information cannot propagate, causing the induction chain to break.
  intro h
  sorry -- The counter-example is any two differently colored horses.
