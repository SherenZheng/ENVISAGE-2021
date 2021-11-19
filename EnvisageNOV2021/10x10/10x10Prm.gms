*  Parameters contained in the parameter data file

set v0 / Old, New / ;

parameters

*  Production elasticities

   sigmaxp0(r,a,v0)        "CES between GHG and XP"
   sigmaNRS0(r,a,v0)       "CES between XPX and NRS"
   sigmap0(r,a,v0)         "CES between ND1 and VA"
   sigmav0(r,a,v0)         "CES between LAB1 and VA1 in crops and other, VA1 and VA2 in livestock"
   sigmav10(r,a,v0)        "CES between ND2 (fert) and VA2 in crops, LAB1 and KEF in livestock and land and KEF in other"
   sigmav20(r,a,v0)        "CES between land and KEF in crops, land and ND2 (feed) in livestock. Not used in other"
   sigmakef0(r,a,v0)       "CES between KF and NRG"
   sigmakf0(r,a,v0)        "CES between KSW and NRF"
   sigmakw0(r,a,v0)        "CES between KS and XWAT"
   sigmak0(r,a,v0)         "CES between LAB2 and K"
   sigmaul0(r,a)           "CES across unskilled labor"
   sigmasl0(r,a)           "CES across skilled labor"
   sigman10(r,a)           "CES across intermediate demand in ND1 bundle"
   sigman20(r,a)           "CES across intermediate demand in ND2 bundle"
   sigmawat0(r,a)          "CES across intermediate demand in WAT bundle"
   sigmae0(r,a,v0)         "CES between ELY and NELY in energy bundle"
   sigmanely0(r,a,v0)      "CES between COA and OLG in energy bundle"
   sigmaolg0(r,a,v0)       "CES between OIL and GAS in energy bundle"
   sigmaNRG0(r,a,NRG,v0)   "CES within each of the NRG bundles"

*  Make matrix elasticities (incl. power)

   omegas0(r,a)            "Make matrix transformation elasticities: one activity --> many commodities"
   sigmas0(r,i)            "Make matrix substitution elasticities: one commodity produced by many activities"
   sigmael0(r,elyc)        "Substitution between power and distribution and transmission"
   sigmapow0(r,elyc)       "Substitution across power bundles"
   sigmapb0(r,pb,elyc)     "Substitution across power activities within power bundles"

*  Final demand elasticities

   incElas0(k,r)           "Income elasticities"
   eh0(k,r)                "CDE expansion parameter"
   bh0(k,r)                "CDE substitution parameter"
   nu0(r,k,h)              "Elasticity of subsitution between energy and non-energy bundles in HH consumption"
   nunnrg0(r,k,h)          "Substitution elasticity across non-energy commodities in the non-energy bundle"
   nue0(r,k,h)             "Substitution elasticity between ELY and NELY bundle"
   nunely0(r,k,h)          "Substitution elasticity beteen COL and OLG bundle"
   nuolg0(r,k,h)           "Substitution elasticity between OIL and GAS bundle"
   nuNRG0(r,k,h,NRG)       "Substitution elasticity within NRG bundles"
   sigmafd0(r,fd)          "CES expenditure elasticity for other final demand"

*  Trade elasticities

   sigmamt0(r,i)           "Top level Armington elasticity"
   sigmaw0(r,i)            "Second level Armington elasticity"
   omegax0(r,i)            "Top level CET export elasticity"
   omegaw0(r,i)            "Second level CET export elasticity"
   sigmamg0(img)           "CES 'Make' elasticity for intl. trade and transport services"

*  Factor supply elasticities

   omegal0(r,l,z)          "ACET labor mobility elasticity"
   omegak0(r)              "CET capital mobility elasticity in comp. stat. model"
   etat0(r)                "Aggregate land supply elasticity"
   landMax00(r)            "Initial ratio of land maximum wrt to land use"
   omegat0(r)              "Land elasticity between intermed. land bundle and first land bundle"
   omeganlb0(r)            "Land elasticity across intermediate land bundles"
   omegalb0(r,lb)          "Land elasticity within land bundles"
*  !!!! TO BE FIXED
*  etanrs0(r,a)            "Natural resource supply elasticity"

   etaw0(r)                "Supply elasticity of aggregate water"
   H2OMax00(r)             "Maximum water supply"
   omegaw10(r)             "Top level water CET elasticity"
   omegaw20(r,wbnd)        "Second/third level water CET elasticities"
   epsh2obnd0(r,wbnd)      "Price elasticity of demand for water bundles"
   epsh2obnd0(r,wbnd)      "Price elasticity of demand for water bundles"
   etah2obnd0(r,wbnd)      "Water bundle demand scale elasticity"

   invElas0(r,a)           "Dis-investment elasticity"

   epsRor0(r,t)            "Elasticity of expected rate-of-return"

   grkMin0(r,t)            "Lower bound on investment growth"
   grkMax0(r,t)            "Upper bound on investment growth"
   grkTrend0(r,t)          "Long-term trend for investment growth"
   chigrK0(r,t)            "Elasticity parameter in growth of capital"
   RoRn0(r,t)              "Normal rate of return"

   omegam0(r,l)            "Elasticity of migration"

   etaODA0(r,t)            "Elasticity of ODA wrt to per capita income"

   sigmal10(r,a)           "Top level elasticity of labor substitution of Type 1"
   sigmal20(r,a)           "Top level elasticity of labor substitution of Type 2"
   sigmal0(r,wb,a)         "Second level elasticity of labor substitution"
;

*  Read in the base elasticities

execute_load "%BASENAME%Prm.gdx"
   sigmaxp0, sigmap0, sigman10, sigman20, sigmawat0,
   sigmav0, sigmav10, sigmav20,
   sigmakef0, sigmakf0, sigmakw0, sigmak0,
   sigmaul0, sigmasl0,
   sigmae0, sigmanely0, sigmaolg0, sigmaNRG0,
   omegas0, sigmas0,
   sigmael0, sigmapow0, sigmapb0,
   incElas0, eh0, bh0, nu0, nunnrg0, nue0, nunely0, nuolg0, nuNRG0, sigmafd0
   sigmamt0=sigmam0, sigmaw0, omegax0, omegaw0, sigmamg0
   omegak0, invElas0, etat0, landMax00,
   omegat0, omeganlb0, omegalb0,
*  !!!! TO BE FIXED
*  etanrs0, omegam0
   omegam0
;

sigmanrs0(r,a,v0) = sigmakf0(r,a,v0) ;

*  Overrides

sigmaxp0(r,a,v0)     = 0 ;
sigmap0(r,a,v0)      = 0 ;
sigmanrs0(r,a,v0)    = 0.25 ;
sigmav0(r,a,"Old")   = 0.12$(not aenergy(a)) + 0$aenergy(a) ;
sigmav0(r,a,"New")   = 1.01$(not aenergy(a)) + 0$aenergy(a) ;
sigmav10(r,a,"Old")  = 0.12$(not aenergy(a)) + 0$aenergy(a) ;
sigmav10(r,a,"New")  = 1.01$(not aenergy(a)) + 0$aenergy(a) ;
sigmav20(r,a,"Old")  = 0.12$(not aenergy(a)) + 0$aenergy(a) ;
sigmav20(r,a,"New")  = 1.01$(not aenergy(a)) + 0$aenergy(a) ;
sigmakef0(r,a,"Old") = 0.00$(not aenergy(a)) + 0$aenergy(a) ;
sigmakef0(r,a,"New") = 0.80$(not aenergy(a)) + 0$aenergy(a) ;
sigmakf0(r,a,"Old")  = 0.25$(not aenergy(a)) + 0.25$aenergy(a) ;
sigmakf0(r,a,"New")  = 0.25$(not aenergy(a)) + 0.25$aenergy(a) ;
sigmakw0(r,a,"Old")  = 0.1$(not aenergy(a)) + 0$aenergy(a) ;
sigmakw0(r,a,"New")  = 0.1$(not aenergy(a)) + 0$aenergy(a) ;
sigmak0(r,a,"Old")   = 0.12$(not aenergy(a)) + 0$aenergy(a) ;
sigmak0(r,a,"New")   = 1.01$(not aenergy(a)) + 0$aenergy(a) ;
sigmaul0(r,a)        = 0.5 ;
sigmasl0(r,a)      = 0.5 ;
sigman10(r,a)      = 0.0 ;
sigman20(r,a)      = 0.5 ;
sigmawat0(r,a)     = 0.0 ;
sigmae0(r,a,"Old") = 0.25$(not aenergy(a)) + 0$aenergy(a) ;
sigmae0(r,a,"New") = 2.00$(not aenergy(a)) + 0$aenergy(a) ;
sigmanely0(r,a,"Old") = 0.25$(not aenergy(a)) + 0$aenergy(a) ;
sigmanely0(r,a,"New") = 2.00$(not aenergy(a)) + 0$aenergy(a) ;
sigmaolg0(r,a,"Old") = 0.25$(not aenergy(a)) + 0$aenergy(a) ;
sigmaolg0(r,a,"New") = 2.00$(not aenergy(a)) + 0$aenergy(a) ;
sigmaNRG0(r,a,NRG,"Old") = 0.25$(not aenergy(a)) + 0$aenergy(a) ;
sigmaNRG0(r,a,NRG,"New") = 2.00$(not aenergy(a)) + 0$aenergy(a) ;

sigmael0(r,elyc) = 0 ;
sigmapow0(r,elyc) = 1.5 ;
sigmapb0(r,pb,elyc) = 3.0 ;

sigmal10(r,a)   = sigmaul0(r,a) ;
sigmal20(r,a)   = sigmasl0(r,a) ;
sigmal0(r,wb,a) = sigmaul0(r,a) ;

nue0(r,k,h) = 1.2 ;
nunely0(r,k,h) = 1.2 ;
nuolg0(r,k,h) = 1.2 ;
nuNRG0(r,k,h,NRG) = 1.2 ;

omegax0(r,i) = inf ;
omegaw0(r,i) = inf ;

omegax0(r,i) = 2 ;
omegaw0(r,i) = 4 ;

invElas0(r,a)$(invElas0(r,a) eq 0) = 0.1 ;

etaODA0(r,t) = 0 ;

Parameters
   esubd(i0,r)
   esubm(i0,r)
   incpar(i0,r)
   subpar(i0,r)
   etanrsx0(r,a0,lh)
;

execute_load "%BASENAME%PAR.gdx", esubd, esubm, incpar, subpar ;
*execute_load "%BASENAME%PRM.gdx", etanrs0 = etanrs0 ;

*  !!!! NEW WATER PARAMETERS NEED TO BE INCLUDED IN AGGREGATION

etaw0(r)         = 1 ;
H2OMax00(r)      = 2 ;
omegaw10(r)      = 1 ;
omegaw20(r,wbnd) = 2 ;
epsh2obnd0(r,wbnd) = 1 ;
etah2obnd0(r,wbnd) = 1 ;

* !!!! Let's make natural resources quite elastic

Table etanrsx0(r,a0,lh)

                            lo   hi

Oceania     .extraction      4    2
EastAsia    .extraction      4    2
SEAsia      .extraction      4    2
SouthAsia   .extraction      2    1
NAmerica    .extraction      4    2
LatinAmer   .extraction      6    3
EU_28       .extraction      2    1
MENA        .extraction      8    4
SSA         .extraction      6    3
RestofWorld .extraction      2    1
;

etanrsx0(r,a0,lh) = 2 ;

$ontext
Table etanrsovr(r,a0)

           frs       fsh        coa       oil       gas       omn

CHN        0.5       0.25      4.00      1.00      1.00      3.00
HYA        0.5       0.25      4.00      1.00      1.00      3.00
XEA        0.5       0.25      4.00      1.00      1.00      3.00
SAS        0.5       0.25      4.00      1.00      1.00      3.00
USA        0.5       0.25      4.00      2.00      2.00      3.00
XNA        0.5       0.25      2.00      2.50      2.50      3.00
LAC        0.5       0.25      2.00      2.50      2.50      3.00
WEU        0.5       0.25      2.00      1.50      1.50      3.00
ECA        0.5       0.25      4.00      2.00      2.00      3.00
MNA        0.5       0.25      2.00      4.00      4.00      3.00
SSA        0.5       0.25      2.00      2.00      2.00      3.00
;

etanrs0(r,a0) = etanrsovr(r,a0) ;
$offtext

epsRor0(r,t) = 10 ;

Table kGrowthData0(r,*)
              Min     Max  Trend     Elas        RoRn

Oceania       -0.07  0.10   0.04   7.727272      0.05
EastAsia      -0.07  0.10   0.04   7.727272      0.05
SEAsia        -0.07  0.10   0.04   7.727272      0.05
SouthAsia     -0.07  0.10   0.04   7.727272      0.05
NAmerica      -0.07  0.10   0.04   7.727272      0.05
LatinAmer     -0.07  0.10   0.04   7.727272      0.05
EU_28         -0.07  0.10   0.04   7.727272      0.05
MENA          -0.07  0.10   0.04   7.727272      0.05
SSA           -0.07  0.10   0.04   7.727272      0.05
RestofWorld   -0.07  0.10   0.04   7.727272      0.05
;

grKMin0(r,t)   = kGrowthData0(r,"Min") ;
grKMax0(r,t)   = kGrowthData0(r,"Max") ;
grKTrend0(r,t) = kGrowthData0(r,"Trend") ;
chigrK0(r,t)   = kGrowthData0(r,"Elas") ;
RoRn0(r,t)     = kGrowthData0(r,"RoRn") ;

*  Declare model parameters

parameters

*  Production elasticities

   sigmaxp(r,a,v)          "CES between GHG and XP"
   sigmanrs(r,a,v)         "CES between XPX and NRS"
   sigmap(r,a,v)           "CES between ND1 and VA"
   sigmav(r,a,v)           "CES between LAB1 and VA1 in crops and other, VA1 and VA2 in livestock"
   sigmav1(r,a,v)          "CES between ND2 (fert) and VA2 in crops, LAB1 and KEF in livestock and land and KEF in other"
   sigmav2(r,a,v)          "CES between land and KEF in crops, land and ND2 (feed) in livestock. Not used in other"
   sigmakef(r,a,v)         "CES between KF and NRG"
   sigmakf(r,a,v)          "CES between KSW and NRF"
   sigmakw(r,a,v)          "CES between KS and XWAT"
   sigmak(r,a,v)           "CES between LAB2 and K"
   sigmal1(r,a)            "CES across Type 1 labor"
   sigmal2(r,a)            "CES across Type 2 labor"
   sigmal(r,wb,a)          "Second level labor elasticities"
   sigman1(r,a)            "CES across intermediate demand in ND1 bundle"
   sigman2(r,a)            "CES across intermediate demand in ND2 bundle"
   sigmawat(r,a)           "CES across intermediate demand in XWAT bundle"
   sigmae(r,a,v)           "CES between ELY and NELY in energy bundle"
   sigmanely(r,a,v)        "CES between COA and OLG in energy bundle"
   sigmaolg(r,a,v)         "CES between OIL and GAS in energy bundle"
   sigmaNRG(r,a,NRG,v)     "CES within each of the NRG bundles"

*  Make matrix elasticities (incl. power)

   omegas(r,a)             "Make matrix transformation elasticities: one activity --> many commodities"
   sigmas(r,i)             "Make matrix substitution elasticities: one commodity produced by many activities"
   sigmael(r,elyc)         "Substitution between power and distribution and transmission"
   sigmapow(r,elyc)        "Substitution across power bundles"
   sigmapb(r,pb,elyc)      "Substitution across power activities within power bundles"

*  Final demand elasticities

   incElas(k,r)            "Income elasticities"
   nu(r,k,h)               "Elasticity of subsitution between energy and non-energy bundles in HH consumption"
   nunnrg(r,k,h)           "Substitution elasticity across non-energy commodities in the non-energy bundle"
   nue(r,k,h)              "Substitution elasticity between ELY and NELY bundle"
   nunely(r,k,h)           "Substitution elasticity beteen COL and OLG bundle"
   nuolg(r,k,h)            "Substitution elasticity between OIL and GAS bundle"
   nuNRG(r,k,h,NRG)        "Substitution elasticity within NRG bundles"
   sigmafd(r,fd)           "CES expenditure elasticity for other final demand"

*  Trade elasticities

   sigmamt(r,i)            "Top level Armington elasticity"
   sigmam(r,i,aa)          "Top level Armington elasticity by agent"
*  Used for MRIO model
   sigmawa(r,i,aa)         "Agent-specific second level Armington CES elasticity"
   sigmaw(r,i)             "Second level Armington elasticity"
   omegax(r,i)             "Top level CET export elasticity"
   omegaw(r,i)             "Second level CET export elasticity"
   sigmamg(img)            "CES 'Make' elasticity for intl. trade and transport services"

*  Factor supply elasticities

   omegal(r,l,z)           "ACET labor mobility elasticity"
   omegak(r)               "CET capital mobility elasticity in comp. stat. model"
   etat(r)                 "Aggregate land supply elasticity"
   landMax0(r)             "Initial ratio of land maximum wrt to land use"
   omegat(r)               "Land elasticity between intermed. land bundle and first land bundle"
   omeganlb(r)             "Land elasticity across intermediate land bundles"
   omegalb(r,lb)           "Land elasticity within land bundles"

   etaw(r)                 "Supply elasticity of aggregate water"
   H2OMax0(r)              "Maximum water supply"
   omegaw1(r)              "Top level water CET elasticity"
   omegaw2(r,wbnd)         "Second/third level water CET elasticities"
   epsh2obnd(r,wbnd)       "Price elasticity of demand for water bundles"
   etah2obnd(r,wbnd)       "Water bundle demand scale elasticity"

   invElas(r,a)            "Dis-investment elasticity"

   epsRor(r,t)             "Elasticity of expected rate of return"

   grkMin(r,t)             "Lower bound on investment growth"
   grkMax(r,t)             "Upper bound on investment growth"
   grkTrend(r,t)           "Long-term trend for investment growth"
   chigrK(r,t)             "Elasticity parameter in growth of capital"
   RoRn(r,t)               "Normal rate of return"

   omegam(r,l)             "Elasticity of migration"

   etaODA(r,t)             "Elasticity of ODA wrt to per capita income"
   etaAPS(r,h)             "Savings elasticity with respect to r-o-r"

   epsw(t)                 "Social welfare elasticity"
   welfWgt(r,t)            "Welfare weights for sw"
   welftWgt(r,t)           "Welfare weights for swt"
;

*  User set parameters

Parameter
   wgt(v,v0)     Weight matrix
;

if(ifvint,

   wgt(v,v0)$(ord(v) eq ord(v0)) = 1 ;

else

*  For comp stat model, weigh the 'Old' and 'New' elasticities

   wgt("Old","Old") = 0.8 ;
   wgt("Old","New") = 0.2 ;

) ;

sigmaxp(r,a,v)       = sum(v0, wgt(v,v0)*sigmaxp0(r,a,v0)) ;
sigmanrs(r,a,v)      = sum(v0, wgt(v,v0)*sigmanrs0(r,a,v0)) ;
sigmap(r,a,v)        = sum(v0, wgt(v,v0)*sigmap0(r,a,v0)) ;
sigmav(r,a,v)        = sum(v0, wgt(v,v0)*sigmav0(r,a,v0)) ;
sigmav1(r,a,v)       = sum(v0, wgt(v,v0)*sigmav10(r,a,v0)) ;
sigmav2(r,a,v)       = sum(v0, wgt(v,v0)*sigmav20(r,a,v0)) ;
sigmakef(r,a,v)      = sum(v0, wgt(v,v0)*sigmakef0(r,a,v0)) ;
sigmakf(r,a,v)       = sum(v0, wgt(v,v0)*sigmakf0(r,a,v0)) ;
sigmakw(r,a,v)       = sum(v0, wgt(v,v0)*sigmakw0(r,a,v0)) ;
sigmak(r,a,v)        = sum(v0, wgt(v,v0)*sigmak0(r,a,v0)) ;
sigmal1(r,a)         = sigmal10(r,a) ;
sigmal2(r,a)         = sigmal20(r,a) ;
sigmal(r,wb,a)       = sigmal0(r,wb,a) ;
sigman1(r,a)         = sigman10(r,a) ;
sigman2(r,a)         = sigman20(r,a) ;
sigmawat(r,a)        = sigmawat0(r,a) ;
sigmae(r,a,v)        = sum(v0, wgt(v,v0)*sigmae0(r,a,v0)) ;
sigmanely(r,a,v)     = sum(v0, wgt(v,v0)*sigmanely0(r,a,v0)) ;
sigmaolg(r,a,v)      = sum(v0, wgt(v,v0)*sigmaolg0(r,a,v0)) ;
sigmaNRG(r,a,NRG,v)  = sum(v0, wgt(v,v0)*sigmaNRG0(r,a,NRG,v0)) ;

omegas(r,a)          = omegas0(r,a) ;
sigmas(r,i)          = sigmas0(r,i) ;
sigmael(r,elyc)      = sigmael0(r,elyc) ;
sigmapow(r,elyc)     = sigmapow0(r,elyc) ;
sigmapb(r,pb,elyc)   = sigmapb0(r,pb,elyc) ;

incElas(k,r)         = incElas0(k,r) ;
nu(r,k,h)            = nu0(r,k,h) ;
nunnrg(r,k,h)        = nunnrg0(r,k,h) ;
nue(r,k,h)           = nue0(r,k,h) ;
nunely(r,k,h)        = nunely0(r,k,h) ;
nuolg(r,k,h)         = nuolg0(r,k,h) ;
nuNRG(r,k,h,NRG)     = nuNRG0(r,k,h,NRG) ;
sigmafd(r,fd)        = sigmafd0(r,fd) ;

sigmamt(r,i)         = sigmamt0(r,i) ;
sigmam(r,i,aa)       = sigmamt0(r,i) ;
sigmaw(r,i)          = sigmaw0(r,i) ;
sigmawa(r,i,aa)      = sigmaw(r,i) ;
omegax(r,i)          = omegax0(r,i) ;
omegaw(r,i)          = omegaw0(r,i) ;
sigmamg(img)         = sigmamg0(img) ;

omegal(r,l,z)        = inf ;
omegak(r)            = omegak0(r) ;
etat(r)              = etat0(r) ;
landMax0(r)          = landMax00(r) ;
omegat(r)            = omegat0(r) ;
omeganlb(r)          = omeganlb0(r) ;
omegalb(r,lb)        = omegalb0(r,lb) ;
*  !!!! TO BE FIXED
*etanrs(r,a)          = etanrs0(r,a) ;

etaw(r)              = etaw0(r) ;
H2OMax0(r)           = H2OMax00(r) ;
omegaw1(r)           = omegaw10(r) ;
omegaw2(r,wbnd)      = omegaw20(r,wbnd) ;
epsh2obnd(r,wbnd)    = epsh2obnd0(r,wbnd) ;
etah2obnd(r,wbnd)    = etah2obnd0(r,wbnd) ;

invElas(r,a)         = invElas0(r,a) ;
omegam(r,l)          = omegam0(r,l) ;

epsRor(r,t)          = epsRor0(r,t) ;

grKMin(r,t)   = grKMin0(r,t)   ;
grKMax(r,t)   = grKMax0(r,t)   ;
grKTrend(r,t) = grKTrend0(r,t) ;
chigrK(r,t)   = chigrK0(r,t)   ;
RoRn(r,t)     = RoRn0(r,t)   ;

etaODA(r,t)   = etaODA0(r,t) ;
etaAPS(r,h)   = 0 ;

Parameters
   alphawc(r,i,h)       "Waste share of consumption"
   sigmaac(r,i,h)       "Substitution elasticity"
;

alphawc(r,i,h) = 0 ;
sigmaac(r,i,h) = 2 ;

*  Overrides

set uev / omegam, migr0, uezrur0, uezurb0, ueminzrur0, ueminzurb0, reswagerur0, reswageurb0,
   omegarwg, omegarwue, omegarwp, ueFlagRur0, ueFlagUrb0 / ;

parameter
   labHyp(r,l,uev)      "Initial labor market assumptions"
   chil(r,l,z,t)        "Medium-term adjustment factor for labor market deviations for Monash UE"
   etal(r,l,z)          "Long-term adjustment factor for labor market deviations for Monash UE"
   ifLSeg(r,l)          "Labor market segmentation flag"
   uez0(r,l,z)          "Initial level of unemployment by zone"
   migr0(r,l)           "Ratio of rural to urban migration as a share of base year rural labor supply"
;

*  Make everyone have flex wages

if(1,
   labHyp(r,l,"Omegam")      = inf ;
   labHyp(r,l,"migr0")       = 1 ;
   labHyp(r,l,"uezRur0")     = 0 ;
   labHyp(r,l,"ueMinzRur0")  = 0 ;
   labHyp(r,l,"uezUrb0")     = 0 ;
   labHyp(r,l,"ueMinzUrb0")  = 0 ;
   labHyp(r,l,"resWageRur0") = na ;
   labHyp(r,l,"resWageUrb0") = 1 ;
   labHyp(r,l,"omegarwg")    = 0 ;
   labHyp(r,l,"omegarwue")   = 0 ;
   labHyp(r,l,"omegarwp")    = 1 ;
   labHyp(r,l,"ueFlagRur0")  = 0 ;
   labHyp(r,l,"ueFlagUrb0")  = 0 ;
else
   labHyp(r,l,"Omegam")      = inf ;
   labHyp(r,l,"migr0")       = 1 ;
   labHyp(r,l,"uezRur0")     = 0 ;
   labHyp(r,l,"ueMinzRur0")  = 0 ;
   labHyp(r,l,"uezUrb0")     = 0 ;
   labHyp(r,l,"ueMinzUrb0")  = 0 ;
   labHyp(r,l,"resWageRur0") = na ;
   labHyp(r,l,"resWageUrb0") = 1 ;
   labHyp(r,l,"omegarwg")    = 0 ;
   labHyp(r,l,"omegarwue")   = 0 ;
   labHyp(r,l,"omegarwp")    = 1 ;
   labHyp(r,l,"ueFlagRur0")  = 1 ;
   labHyp(r,l,"ueFlagUrb0")  = 1 ;
   chil(r,l,"nsg",t)         = 1.2 ;
   etal(r,l,"nsg")           = 0 ;
) ;

*display labHyp ;

omegam(r,l) = labHyp(r,l,"Omegam") ;
ifLSeg(r,l) = 0 ;
ifLSeg(r,l)$(omegam(r,l) ne inf) = 1 ;

sigmapow(r,elyc)     = 1.2 ;
sigmapb(r,pb,elyc)   = 1.2 ;

*  Overrides

parameter cap_out_Ratio0(r) /
Oceania      1
EU_28        1
NAmerica     1
EastAsia     1
SEAsia       1
SouthAsia    1
MENA         1
SSA          1
LatinAmer    1
RestofWorld  1
/ ;


Parameter deprT(r,t) ;
deprT(r,t) = 0.04 ;
deprT(r,t)$mapr("lmy",r) = 0.05$(years(t) le 2030) + 0.05$(years(t) gt 2030) ;
deprT(r,t)$(sameas(r,"EastAsia") or sameas(r,"SEASia"))
          = 0.06$(years(t) le 2030)
          + 0.06$(years(t) gt 2030 and years(t) le 2040)
          + 0.06$(years(t) gt 2040)
          ;

Parameters
   twt1(r,i,t)          "Twist parameter for top level national sourcing"
   tw1(r,i,aa,t)        "Twist parameter for top level agent sourcing"
   tw2(r,i,t)           "Twist parameter for second level sourcing wrt to targetted countries"
;

*  Introduce twist assumptions

twt1(r,i,t)   = 0 ;
tw1(r,i,aa,t) = 0 ;
tw2(r,i,t)    = 0 ;

set rtwtgt(rp,r)  "Targets for twist exporters (rp) for region r" ;
rtwtgt(rp,r) = no ;

*  Dangerous, this should be in the opt file
*twt1("EastAsia",i,t)$(years(t) ge 2012) = 0.02 ;
*tw1("EastAsia",i,aa,t)$(years(t) ge 2012) = 0.02 ;
*tw2("EastAsia",i,t)$(years(t) ge 2012)  = 0.02 ;
*rtwtgt("Oceania", "EastAsia") = yes ;
*rtwtgt("RestofWorld", "EastAsia") = yes ;

*  Social welfare elasticity

epsw(t)       = 0 ;
welfWgt(r,t)  = 1 ;
welftWgt(r,t) = 1 ;

* --------------------------------------------------------------------------------------------------
*
*  Knowledge module assumptions
*
*
*  delta:      Delta parameter in gamma function
*  lambda:     Lambda parameter in gamma function
*  N:          Number of years in gamma function
*  g0:         Initial steady-state growth parameter
*  depr:       Knowledge depreciation rate
*  rd0:        Initial steady state level of research expenditure wrt to GDP
*  gammar:     Sectoral productivity shifter
*  epsr:       Sectoral productivity elasticity
*
* --------------------------------------------------------------------------------------------------

$ontext
scalar ifR_D / 1 / ;

table KnowledgeData0(r,*)
               delta    lambda         N        g0      depr       rd0    gammar      epsr
Oceania         0.70      0.80        35       2.0       1.0       2.0       1.0       0.3
EU_28           0.60      0.85        25       1.5       1.0       2.0       1.0       0.3
NAmerica        0.70      0.90        50       2.0       1.0       2.0       1.0       0.3
EastAsia        0.50      0.80        15       5.0       1.0       2.0       1.0       0.3
SEAsia          0.50      0.80        15       4.0       1.0       2.0       1.0       0.3
SouthAsia       0.50      0.80        15       4.0       1.0       2.0       1.0       0.3
MENA            0.50      0.80        15       3.0       1.0       2.0       1.0       0.3
SSA             0.50      0.80        15       3.0       1.0       2.0       1.0       0.3
LatinAmer       0.70      0.90        25       2.5       1.0       2.0       1.0       0.3
RestofWorld     0.40      0.80        15       2.5       1.0       2.0       1.0       0.3
;
$offtext

* --------------------------------------------------------------------------------------------------
*
*  GHG price assumption
*
* --------------------------------------------------------------------------------------------------

*  Defined using 'modeled' activities

Parameter
   pcarb0(r,em,a)       "Initial price of process emissions--$ per trillion ton of CO2"
   sigmaProcEmi(r,a,v)  "Inter-GHG substitution for process emissions"
;

pcarb0(r,ghg,a)     = 0.0 ;
sigmaProcEmi(r,a,v) = 0.0 ;

$ontext
* --------------------------------------------------------------------------------------------------
*
*  Depletion module assumptions
*
* --------------------------------------------------------------------------------------------------

set nrgScen / EIA2015 / ;

*  Could make this region specific

table ptrend00(nrgScen,a,pt)

                     lo       ref        hi

EIA2015.coa-a       1.0       1.0       1.0
EIA2015.oil-a   0.98562   1.00714   1.02744
EIA2015.gas-a   0.98562   1.00714   1.02744
;

parameter ptrend0(nrgScen,r,a,pt) ;
ptrend0(nrgScen,r,a,pt) = ptrend00(nrgScen,a,pt) ;

*  Could make this region specific

table omegard00(a,pt)   "Elasticity of discovery wrt to price"
             lo        hi
oil-a       2.0       1.0
gas-a       2.0       1.0
coa-a       2.0       1.0
;

parameter omegard0(r,a,pt) ;
omegard0(r,a,pt) = omegard00(r,a,pt) ;

*  Could make this region specific

Parameter omegae00(a)   "Elasticity of extraction wrt to price" /
oil-a       1.3
gas-a       1.3
coa-a       1.3
/ ;

parameter omegard0(r,a,pt) ;
omegard0(r,a,pt) = omegard00(r,a,pt) ;

*  Could make this region specific

table dscRate00(a,pt) "Initial discovery rate assumptions in percent"

             lo       ref        hi
oil-a       3.5       5.0       6.5
gas-a       1.0       2.0       4.0
;

parameter dscRate0(r,a,pt) ;
dscRate0(r,a,pt) = dscRate00(r,a,pt) ;

table extRate00(a,pt) "Initial extraction rate assumptions in percent"

             lo       ref        hi
oil-a       3.5       5.0       6.5
gas-a       1.0       2.0       4.0
coa-a      0.01       1.0       3.5
;

parameter extRate0(r,a,pt) ;
extRate0(r,a,pt) = extRate00(r,a,pt) ;
$offtext
