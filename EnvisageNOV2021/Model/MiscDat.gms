set eu Energy units /
   toe      Tons of oil equivalent
   mtoe     Millions of tons of oil equivalent
   tj       Terajoules
   ej       Exajoules
   cal      Calories
   gCal     Giga calories
   kwh      Kilowatt hour
   mWh      Megawatt hour
   gWh      Gigawatt hour
   mBTU     Million BTU
   mbd      Million barrels of oil equivalent per day
   mb       Million barrels of oil equivalent
   bcm      Billion cubic meters
   mt       Million tons of coal equivalent
   tcf      Trillion of cubic feet
/

alias(eu, eup) ;

Table emat(eu, eup) Energy conversion matrix

*         TO:
                    TOE           MTOE             TJ              EJ            CAL            kWh            mWh            gWh          mBTU            gCal           mbd            mb              bcm             mt           tcf
*  FROM:    multiply by:
   TOE   1.00000000E+00 1.00000000E-06 4.18680000E-02  4.18680000E-08 1.00000000E+10 1.16309304E+04 1.16309304E+01 1.16309304E-02 3.96815468E+01 1.00000000E+01 2.09000000E-08 7.62850000E-06  1.21170000E-06 1.98140000E-06 4.27907817E-08
   MTOE  1.00000000E+06 1.00000000E+00 4.18680000E+04  4.18680000E-02 1.00000000E+16 1.16309304E+10 1.16309304E+07 1.16309304E+04 3.96815468E+07 1.00000000E+07 2.09000000E-02 7.62850000E+00  1.21170000E+00 1.98140000E+00 4.27907817E-02
   TJ    2.38845897E+01 2.38845897E-05 1.00000000E+00  1.00000000E-06 2.38845897E+11 2.77800000E+05 2.77800000E+02 2.77800000E-01 9.47777462E+02 2.38845897E+02 4.99187924E-07 1.82203592E-04  2.89409573E-05 4.73249260E-05 1.02204026E-06
   EJ    2.38845897E+07 2.38845897E+01 1.00000000E+06  1.00000000E+00 2.38845897E+17 2.77800000E+11 2.77800000E+08 2.77800000E+05 9.47777462E+08 2.38845897E+08 4.99187924E-01 1.82203592E+02  2.89409573E+01 4.73249260E+01 1.02204026E+00
   CAL   1.00000000E-10 1.00000000E-16 4.18680000E-12  4.18680000E-18 1.00000000E+00 1.16309304E-06 1.16309304E-09 1.16309304E-12 3.96815468E-09 1.00000000E-09 2.09000000E-18 7.62850000E-16  1.21170000E-16 1.98140000E-16 4.27907817E-18
   kWh   8.59776446E-05 8.59776446E-11 3.59971202E-06  3.59971202E-12 8.59776446E+05 1.00000000E+00 1.00000000E-03 1.00000000E-06 3.41172592E-03 8.59776446E-04 1.79693277E-12 6.55880461E-10  1.04179112E-10 1.70356105E-10 3.67905062E-12
   mWh   8.59776446E-02 8.59776446E-08 3.59971202E-03  3.59971202E-09 8.59776446E+08 1.00000000E+03 1.00000000E+00 1.00000000E-03 3.41172592E+00 8.59776446E-01 1.79693277E-09 6.55880461E-07  1.04179112E-07 1.70356105E-07 3.67905062E-09
   gWh   8.59776446E+01 8.59776446E-05 3.59971202E+00  3.59971202E-06 8.59776446E+11 1.00000000E+06 1.00000000E+03 1.00000000E+00 3.41172592E+03 8.59776446E+02 1.79693277E-06 6.55880461E-04  1.04179112E-04 1.70356105E-04 3.67905062E-06
   mBTU  2.52006306E-02 2.52006306E-08 1.05510000E-03  1.05510000E-09 2.52006306E+08 2.93106780E+02 2.93106780E-01 2.93106780E-04 1.00000000E+00 2.52006306E-01 5.26693179E-10 1.92243010E-07  3.05356040E-08 4.99325294E-08 1.07835468E-09
   Gcal  1.00000000E-01 1.00000000E-07 4.18680000E-03  4.18680000E-09 1.00000000E+09 1.16309304E+03 1.16309304E+00 1.16309304E-03 3.96815468E+00 1.00000000E+00 2.09000000E-09 7.62850000E-07  1.21170000E-07 1.98140000E-07 4.27907817E-09
   mbd   4.78468900E+07 4.78468900E+01 2.00325359E+06  2.00325359E+00 4.78468900E+17 5.56503847E+11 5.56503847E+08 5.56503847E+05 1.89863860E+09 4.78468900E+08 1.00000000E+00 3.65000000E+02  5.79760766E+01 9.48038278E+01 2.04740582E+00
   mb    1.31087370E+05 1.31087370E-01 5.48836600E+03  5.48836600E-03 1.31087370E+15 1.52466807E+09 1.52466807E+06 1.52466807E+03 5.20174959E+06 1.31087370E+06 2.73972603E-03 1.00000000E+00  1.58838566E-01 2.59736515E-01 5.60933103E-03
   bcm   8.25286787E+05 8.25286787E-01 3.45531072E+04  3.45531072E-02 8.25286787E+15 9.59885318E+09 9.59885318E+06 9.59885318E+03 3.27486562E+07 8.25286787E+06 1.72484939E-02 6.29570027E+00  1.00000000E+00 1.63522324E+00 3.53146667E-02
   mt    5.04693651E+05 5.04693651E-01 2.11305138E+04  2.11305138E-02 5.04693651E+15 5.87005673E+09 5.87005673E+06 5.87005673E+03 2.00270247E+07 5.04693651E+06 1.05480973E-02 3.85005551E+00  6.11537297E-01 1.00000000E+00 2.15962358E-02
   tcf   2.33695193E+07 2.33695193E+01 9.78435037E+05  9.78435037E-01 2.33695193E+17 2.71809253E+11 2.71809253E+08 2.71809253E+05 9.27338674E+08 2.33695193E+08 4.88422954E-01 1.78274378E+02 2.83168466E+01  4.63043656E+01 1.00000000E+00
;
