pspam
=====

a simple phone spam system


ideas
=====

A number of ideas (heuristics) come to mind when determining if a
phone call will be spam. Keeping a running list here:


1. Has `caller` called `callee` some N (some threshold) number of
   times before? If so, does the median duration, or the duration of
   some N number of the phone calls pass a particular threshold? If a
   `caller` has multiple calls made to the same `callee` (like me
   calling my mom), would probably indicate the call is _not_ spam.

2. Are the number of calls made from a `caller` number (e.g.: if we're
   using a bipartite graph, it's degree) past some threshold? One
   `caller` calling many numbers (e.g.: 10's, 100's, 1000's?) may
   indicate a spammer.

3. Assocated/in conjunction with 2, if the number of the calls made by
   said high degree `caller` have short durations (again, possibly set by
   some threshold) might also indicate a spammer.

4. Spammers buy lists of numbers of `callees`. There might be a overlap of
   numbers between `callers` which could indicate a spammer.



Fuzzier ideas:

- knn clustering to identify spammers by similar patterns?
- building a unidirected graph of calls. Assign 'spammyness' and propopate to identify spammers?
