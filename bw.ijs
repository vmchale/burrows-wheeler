NB. http://web.archive.org/web/20030105080431/https://www.hpl.hp.com/techreports/Compaq-DEC/SRC-RR-124.html
bw =: monad define
    S=.y
    N=.#y
    M=./:~ (i.N)|."0 1 y
    ({:"1 M);M i. y
)

NB. https://code.jsoftware.com/wiki/Essays/Progressive_Index-Of
oc=: [: ((] - {) /:@/:) i.~
pi=: #@[ ({. i.&(,.oc) }.) [ i.,

bw_d =: dyad define
    L=:x
    N=.#L
    I=:y
    T=:(/:~L) pi L
    Ti=.{{ I{ T{ ^:y L }}
    |. (Ti"0 i.N)
)
