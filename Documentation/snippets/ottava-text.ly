%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
  lsrtags = "pitches, text"

  texidoc = "
Internally, @code{\\ottava} sets the properties @code{ottavation} (for
example, to @code{8va} or @code{8vb}) and @code{middleCPosition}.  To
override the text of the bracket, set @code{ottavation} after invoking
@code{\\ottava}.

"
  doctitle = "Ottava text"
} % begin verbatim

{
  \ottava #1
  \set Staff.ottavation = #"8"
  c''1
  \ottava #0
  c'1
  \ottava #1
  \set Staff.ottavation = #"Text"
  c''1
}
