\version "2.19.21"

\header {
  lsrtags = "contemporary-notation, pitches, really-cool, staff-notation, version-specific"

  texidoc = "
The commonly used @code{\\key} command sets the @code{keyAlterations}
property, in the @code{Staff} context.

To create non-standard key signatures, set this property directly. The
format of this command is a list:

@code{ \\set Staff.keyAlterations = #`(((octave . step) . alter) ((octave
. step) . alter) ...) } where, for each element in the list,
@code{octave} specifies the octave (0 being the octave from middle C to
the B above), @code{step} specifies the note within the octave (0 means
C and 6 means B), and @code{alter} is @code{,SHARP ,FLAT ,DOUBLE-SHARP}
etc. (Note the leading comma.)


Alternatively, for each item in the list, using the more concise format
@code{(step . alter)} specifies that the same alteration should hold in
all octaves.


For microtonal scales where a @qq{sharp} is not 100 cents, @code{alter}
refers to the alteration as a proportion of a 200-cent whole tone.


Here is an example of a possible key signature for generating a
whole-tone scale:

"
  doctitle = "Non-traditional key signatures"
}


\relative {
  \set Staff.keyAlterations = #`((6 . ,FLAT)
                                 (5 . ,FLAT)
                                 (3 . ,SHARP))
  c'4 d e fis
  aes4 bes c2
}
