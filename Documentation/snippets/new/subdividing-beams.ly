\version "2.19.40"

\header {
  lsrtags = "rhythms"

  texidoc = "
The beams of consecutive 16th (or shorter) notes are, by default, not
subdivided.  That is, the three (or more) beams stretch unbroken over
entire groups of notes.  This behavior can be modified to subdivide the
beams into sub-groups by setting the property @code{subdivideBeams}.
When set, multiple beams will be subdivided at intervals defined by the
current value of @code{baseMoment} by reducing the multiple beams to
the number of beams that indicates the metric value of the subdivision.
If the group following the division is shorter than the current metric
value (usually because the beam is incomplete) the number of beams
reflects the longest possible subdivision group.  However, if there is
only one note left after the division this restriction isn't applied.
Note that @code{baseMoment} defaults to one over the denominator of the
current time signature if not set explicitly. It must be set to a
fraction giving the duration of the beam sub-group using the
@code{ly:make-moment} function, as shown in this snippet. Also, when
@code{baseMoment} is changed, @code{beatStructure} should also be
changed to match the new @code{baseMoment}:

"
  doctitle = "Subdividing beams"
}

\relative c'' {
  c32[ c c c c c c c]
  \set subdivideBeams = ##t
  c32[ c c c c c c c]

  % Set beam sub-group length to an eighth note
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = 2,2,2,2
  c32[ c c c c c c c]

  % Set beam sub-group length to a sixteenth note
  \set baseMoment = #(ly:make-moment 1/16)
  \set beatStructure = 4,4,4,4
  c32[ c c c c c c c]

  % Shorten beam by 1/32
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = 2,2,2,2
  c32[ c c c c c c] r32

  % Shorten beam by 3/32
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = 2,2,2,2
  c32[ c c c c] r16.
  r2
}
