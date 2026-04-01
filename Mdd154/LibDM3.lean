import Mdd154.Lib

axiom extraction_sup {φ : ℕ → ℕ} (h : φ est une extraction) : ∀ N N', ∃ n ≥ N', φ n ≥ N

axiom val_proche_adh {u : ℕ → ℝ} {a : ℝ} (hyp : a est valeur d'adhérence de u) :
    ∀ ε > 0, ∀ N, ∃ n ≥ N, |u n - a| ≤ ε

axiom lim_extr_si_lim {u : ℕ → ℝ} {φ : ℕ → ℕ} {l : ℝ} (h : u tend vers l) (hφ : φ est une extraction) :  u ∘ φ tend vers l

axiom val_adh_lim {u : ℕ → ℝ} {l a : ℝ} (hl : u tend vers l) (ha : a est valeur d'adhérence de u) : a = l

axiom cauchy_si_converge {u : ℕ → ℝ} : (∃ l, u tend vers l) → u est de Cauchy

addAnonymousFactSplittingLemma extraction_sup
addAnonymousFactSplittingLemma val_proche_adh
addAnonymousFactSplittingLemma lim_extr_si_lim
addAnonymousFactSplittingLemma val_adh_lim
addAnonymousFactSplittingLemma cauchy_si_converge




