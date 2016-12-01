%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
  lsrtags = "repeats, rhythms"

  texidoc = "
If a tremolo's total duration is less than a quarter-note, or exactly a
half-note, or between a half-note and a whole-note, it is normally
typeset with all beams touching the stems.  Certain engraving styles
typeset some of these beams as centered floating beams that do not
touch the stems.  The number of floating beams in this type of tremolo
is controlled with the @code{'gap-count } property of the @code{Beam}
object, and the size of the gaps between beams and stems is set with
the @code{'gap} property.



"
  doctitle = "Engraving tremolos with floating beams"
} % begin verbatim

\relative c'' {
  \repeat tremolo 8 { a32 f }
  \override Beam.gap-count = #1
  \repeat tremolo 8 { a32 f }
  \override Beam.gap-count = #2
  \repeat tremolo 8 { a32 f }
  \override Beam.gap-count = #3
  \repeat tremolo 8 { a32 f }

  \override Beam.gap-count = #3
  \override Beam.gap = #1.33
  \repeat tremolo 8 { a32 f }
  \override Beam.gap = #1
  \repeat tremolo 8 { a32 f }
  \override Beam.gap = #0.67
  \repeat tremolo 8 { a32 f }
  \override Beam.gap = #0.33
  \repeat tremolo 8 { a32 f }
}
