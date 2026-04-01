import Mdd154.LibNeg

macro_rules | `($x ∣ $y)   => `(@Dvd.dvd ℕ Nat.instDvd ($x : ℕ) ($y : ℕ))

lemma dvd_of_mul_left {R : Type*} [CommSemiring R] {a b c : R} (h : c = b*a) :
    @Dvd.dvd R _ b  c :=
  ⟨a, h⟩

lemma dvd_of_mul_right {R : Type*} [CommSemiring R] {a b c : R} (h : c = b*a) :
    @Dvd.dvd R _ a  c :=
  ⟨b, by rw [h, mul_comm]⟩

addAnonymousFactSplittingLemma dvd_of_mul_left
addAnonymousFactSplittingLemma dvd_of_mul_right
addAnonymousFactSplittingLemma divise_antisym
addAnonymousFactSplittingLemma dvd_of_eq

lemma foo (a b : ℕ) (ha : a ≠ 0) (h : a = a*b) : b = 1 :=
  (Nat.mul_eq_left ha).mp h.symm

lemma foo' (a b : ℕ) (ha : a ≠ 0) (h : a = b*a) : b = 1 :=
  (Nat.mul_eq_left ha).mp (mul_comm a b ▸ h.symm)

lemma bar (a b : ℕ) (ha : a ≠ 0) (h : a*b = a) : b = 1 :=
  (Nat.mul_eq_left ha).mp h

lemma bar' (a b : ℕ) (ha : a ≠ 0) (h : b*a = a) : b = 1 :=
  (Nat.mul_eq_left ha).mp (mul_comm a b ▸ h)

addAnonymousFactSplittingLemma foo
addAnonymousFactSplittingLemma foo'
addAnonymousFactSplittingLemma bar
addAnonymousFactSplittingLemma bar'

lemma ne_of_dvd_ne {a b : ℕ} (h : a ∣ b) (h' : b ≠ 0) : a ≠ 0 := by
  contrapose! h'
  simp_all

addAnonymousFactSplittingLemma ne_of_dvd_ne

axiom Ceil : ℝ → ℤ

notation "⌈" a "⌉" => Ceil a

axiom le_ceil (x) : x ≤ ⌈x⌉
addAnonymousFactSplittingLemma le_ceil
