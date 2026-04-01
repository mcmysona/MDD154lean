import Mdd154.LibExam

setup_env

/-
# Exercices supplémentaires 2 : Résultats plus difficiles sur les suites et les fonctions
-/

/-
On rappelle qu’une fonction `f` de `ℝ` dans `ℝ` est continue si
`∀ x₀, ∀ ε > 0, ∃ δ > 0, ∀ x, |x - x₀| ≤ δ ⇒ |f x - f x₀| ≤ ε`.

Dans cet exercice, il est question d’une suite `f` de fonctions de `ℝ` dans `ℝ`.
Pour tout entier `n`, `f n` est donc une fonction de `ℝ` dans `ℝ`.
Pour tout entier `n` et tout réel `x`, `f n x` est la n-ième fonction de la suite appliquée
au réel x. Sur papier on écrirait `fₙ(x)`.

On dit qu’une telle suite `f` tend uniformément vers une fonction `g : ℝ → ℝ` si
`∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x, |f n x - g x| ≤ ε`.

On pourra utiliser que la justification `par calcul` et sa cousine la commande `On calcule`
connaissent l’inégalité quadrangulaire :

`∀ a b c d : ℝ, |a - b| ≤ |a - c| + |c - d| + |d - b|`

(qui s’obtient simplement en appliquant deux fois l’inégalité triangulaire).
-/

Exercice "Une limite uniforme de fonctions continues est continue."
  Données : (f : ℕ → ℝ → ℝ) (g : ℝ → ℝ)
  Hypothèses : (hf : ∀ n, f n est continue) (hfg : f tend uniformément vers g)
  Conclusion : g est continue
Démonstration :
  sorry
QED

/-

Soit `A` une partie de `ℝ` (autrement dit `A` est un ensemble de nombres réels,
ce que Lean note `A : 𝒫 ℝ`). On dit que `f : ℝ → ℝ` est continue dans `A` si
`∀ x₀, ∀ ε > 0, ∃ δ > 0, ∀ a ∈ A, |a - x₀| ≤ δ ⇒ |f a - f x₀| ≤ ε`.

Soit `A` une partie de `ℝ`. On dit que `A` est dense si
`∀ x, ∀ ε > 0, ∃ a ∈ A, |a - x| ≤ ε`.

Les définition précédentes font intervenir les abréviations
* `∀ a ∈ A, …` qui signifie `∀ a, a ∈ A ⇒ …`
* `∃ a ∈ A, …` qui signifie `∃ a, a ∈ A ∧ …`

Ainsi, en présence d’une hypothèse `h : ∀ a ∈ A, |a - x₀| ≤ δ ⇒ |f a - f x₀| ≤ ε`
et d’un réel `a₀` supposé appartenir à `A` et tel que `|a - x₀| ≤ δ`, on pourra écrire
`Comme ∀ a ∈ A, |a - x₀| ≤ δ ⇒ |f a - f x₀| ≤ ε, a ∈ A et |a - x₀| ≤ δ on obtient que |f a - f x₀| ≤ ε`.

De même, en présence d’une hypothèse `h : A est dense`, d’un réel `x₁` et d’un
réel `ε₁` supposé strictement positif, on pourra écrire
`Comme A est dense et ε₁ > 0 on obtient a₁ tel que a₁ ∈ A et |a₁ - x₁| ≤ ε₁`

L’ordinateur connait les propriétés suivantes de l’opération `min` :

Pour tous nombres `x`, `y` et `z` :
* `min x y ≤ x`
* `min x y ≤ y`
* `x ≤ min y z ⇒ x ≤ y`
* `x ≤ min y z ⇒ x ≤ z`
* `(x > z et y > z) ⇒ min x y > z`
-/

Exercice "Extension de continuité"
  Données : (f : ℝ → ℝ) (A : 𝒫 ℝ)
  Hypothèses : (hA : A est dense)
               (hf : f est continue dans A)
  Conclusion : f est continue
Démonstration :
  sorry
QED


