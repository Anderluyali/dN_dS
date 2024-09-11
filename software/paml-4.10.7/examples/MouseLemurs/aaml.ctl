      seqfile = MouseLemurs.aa
     treefile = MouseLemurs.trees

      outfile = mlc           * main result file name
        noisy = 3  * 0,1,2,3,9: how much rubbish on the screen
      verbose = 1  * 0: concise; 1: detailed, 2: too much
      runmode = 0  * 0: user tree;  1: semi-automatic;  2: automatic
                   * 3: StepwiseAddition; (4,5):PerturbationNNI; -2: pairwise

      seqtype = 2  * 1:codons; 2:AAs; 3:codons-->AAs
   aaRatefile = mtmam.dat * only used for aa seqs with model=empirical(_F)
                   * dayhoff.dat, jones.dat, wag.dat, mtmam.dat, or your own

        model = 0
                   * models for AAs or codon-translated AAs:
                      * 0:poisson, 1:proportional, 2:Empirical, 3:Empirical+F
                      * 6:FromCodon, 7:AAClasses, 8:REVaa_0, 9:REVaa(nr=189)
        Mgene = 0
                   * AA: 0:rates, 1:separate

        clock = 0  * 0:no clock, 1:global clock; 2:local clock
    fix_alpha = 1  * 0: estimate gamma shape parameter; 1: fix it at alpha
        alpha = 0.  * initial or fixed alpha, 0:infinity (constant rate)
       Malpha = 0  * different alphas for genes
        ncatG = 5  * # of categories in dG of NSsites models

        getSE = 1  * 0: don't want them, 1: want S.E.s of estimates
 RateAncestor = 0  * (0,1,2): rates (alpha>0) or ancestral states (1 or 2)

   Small_Diff = 1e-6
    cleandata = 0  * remove sites with ambiguity data (1:yes, 0:no)?
*  fix_blength = 0  * 0: ignore, -1: random, 1: initial, 2: fixed
        method = 1   * 0: simultaneous; 1: one branch at a time
