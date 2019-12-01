*NOTE: This is a clone of [Hachiko99/Project-527](https://github.com/Hachiko99/Project-527) which is a clone of the original repository [psosera/myth](https://github.com/psosera/myth.git) which is no longer available. I ([@awendland](https://github.com/awendland)) updated the README slightly to provide installation instructions that work (at least for me on macOS 10.15 in Dec 2019).*

# Myth: ML Synthesizer

Myth is a type-directed program synthesis tool for ML-like typed, functional programming languages.
Given a set of top-level declarations, a goal type, and a set of examples, Myth produces a program of the =appropriate type that satisfies those examples.
For more information about Myth, please check out the one-minute overview of our work:

    https://www.youtube.com/watch?v=5a2kRmCtEtM

For more details, please consule our PLDI 2015 paper:

    https://dl.acm.org/citation.cfm?id=2738007&CFID=520143291&CFTOKEN=37485843

Requirements

Ocaml > 4.01.0 *(does not work on newer versions, at least not on 4.02.3 and 4.08.1)*

Quick and Dirty Installation Instructions

    opam pin add myth https://github.com/awendland/myth.git

Example Execution

    >$ myth tests/pldi-2015-benchmarks/list_stutter.ml
    let stutter : list -> list =
      let rec f1 (l1:list) : list =
        match l1 with
          | Nil -> []
          | Cons (n1, l2) -> Cons (n1, Cons (n1, f1 l2))
      in
        f1
    ;;

Test Locations

    tests/pldi-2015-benchmarks
    tests/pldi-2015-extended
    tests/pldi-2015-contexts

Legend

* `.ml` files = test
* `.out` file = baseline output