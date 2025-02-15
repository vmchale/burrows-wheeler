NB. http://web.archive.org/web/20030105080431/https://www.hpl.hp.com/techreports/Compaq-DEC/SRC-RR-124.html
bw =: monad define
    S=.y
    N=.#y
    M=./:~ (i.N)|."0 1 S
    ({:"1 M);M i. S
)

NB. https://code.jsoftware.com/wiki/Essays/Progressive_Index-Of
oc=: [: ((] - {) /:@/:) i.~
pi=: #@[ ({. i.&(,.oc) }.) [ i.,

bw_d =: dyad define
    L=.x
    N=.#L
    I=.y
    T=.(/:~L) pi L
    NB. https://groups.google.com/a/jsoftware.com/g/forum/c/sQYAE0VzaOE/m/Ae2pj0bfAAAJ
    C=.,>C.T
    rot=.(C i. (I{T))+1
    ix=.rot|.C
    2 |. |. ix { L
)
