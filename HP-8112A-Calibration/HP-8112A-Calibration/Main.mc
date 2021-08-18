Kallab                                                      MET/CAL Procedure
=============================================================================
INSTRUMENT:            HP 8112A Pulse Generator Verification
DATE:                  2021-08-18 16:32:36
AUTHOR:                Antti Harala
REVISION:
ADJUSTMENT THRESHOLD:  70%
NUMBER OF TESTS:       54
NUMBER OF LINES:       362
=============================================================================
 STEP    FSC    RANGE NOMINAL        TOLERANCE     MOD1        MOD2  3  4 CON
  1.001  MEM2         This procedure uses a digital oscillscope as a
  1.001  MEM2         manual standard. Please type in the model and
  1.001  MEM2         F-number of the manual standard using format
  1.001  MEM2         Manufacturer Model (F-Number):

  1.002  RSLT         =Measurement standard [MEM2]

  1.003  DISP         The pictures presented in the procedure are
  1.003  DISP         for general guidelines. All measurements are
  1.003  DISP         done with the digital oscilloscope.

  1.004  DISP         Pay close attention to the units (ms,us,mV,V...)
  1.004  DISP         requested by the user prompt. In some cases the
  1.004  DISP         oscilloscope might display, for example, 980 us
  1.004  DISP         but the program requests the result in ms.

  1.005  CALL         Sub Preamble

  1.006  IEEE         [SRQ OFF]
  1.007  IEEE         [SDC]
  1.008  IEEE         [TERM 13][TERM 10]

  1.009  HEAD         Period Performance Check
  1.010  RSLT         =Period Performance Check
  1.011  PIC          1.jpg
  1.012  IEEE         M1,CT0,W1,DTY 50 %,HIL 1 V,LOL -1 V[13][10]

  1.013  IEEE         PER 20 NS, D0[13][10]
  1.014  MEMI         Nominal: 20 ms
  1.014  MEMI         Enter UUT's measured period in ns:
  1.015  MEMC         20.0ms         3.0U
  2.001  IEEE         PER 10 US, D0[13][10]
  2.002  MEMI         Nominal: 10 us
  2.002  MEMI         Enter UUT's measured period in us:
  2.003  MEMC         10.0us         0.5U
  3.001  IEEE         PER 10 MS, D0[13][10]
  3.002  MEMI         Nominal: 10 ms
  3.002  MEMI         Enter UUT's measured period in ms:
  3.003  MEMC         10.0ms         0.5U
  4.001  IEEE         PER 950 MS, D0[13][10]
  4.002  MEMI         Nominal: 950 ms
  4.002  MEMI         Enter UUT's measured period in ms:
  4.003  MEMC         950.0ms        47.5U

  5.001  IEEE         D1[13][10]

  5.002  HEAD         Delay Performance Check
  5.003  RSLT         =Delay Performance Check
  5.004  IEEE         [SDC]
  5.005  PIC          2.jpg
  5.006  IEEE         M1,CT0,W1,DTY 50 %,HIL 2.4 V,LOL 0 V[13][10]

  5.007  DISP         Measure the delay from rising edge to rising edge (Ch1 -> Ch2)

  5.008  IEEE         DEL 75 NS,PER 95 NS, D0[13][10]
  5.009  MEMI         Nominal: 75 ns
  5.009  MEMI         Enter UUT's measured delay in ns:
  5.010  TOL          +100% -8.75U
  5.011  MEMC         75.0ns         TOL
  6.001  IEEE         DEL 50 US,PER 95 US, D0[13][10]
  6.002  MEMI         Nominal: 50 us
  6.002  MEMI         Enter UUT's measured delay in us:
  6.003  MEMC         50.0us         2.50U
  7.001  IEEE         DEL 10 MS,PER 95 MS, D0[13][10]
  7.002  MEMI         Nominal: 10 ms
  7.002  MEMI         Enter UUT's measured delay in ms:
  7.003  MEMC         10.0ms         0.5U
  8.001  IEEE         DEL 900 MS,PER 950 MS, D0[13][10]
  8.002  MEMI         Nominal: 900 ms
  8.002  MEMI         Enter UUT's measured delay in ms:
  8.003  MEMC         900.0ms        45.0U
  9.001  IEEE         D1[13][10]

  9.002  HEAD         Double Pulse Performance Check
  9.003  RSLT         =Double Pulse Performance Check
  9.004  IEEE         [SDC]
  9.005  PIC          3.jpg
  9.006  DISP         The DBL Measurement is described as the time interval
  9.006  DISP         between the two leading edges of the double pulse,
  9.006  DISP         recorded at 50% amplitude.
  9.007  IEEE         M1,CT0,W1,DEL 65 NS,HIL 1 V,LOL -1 V[13][10]

  9.008  IEEE         PER 100NS, DBL 20NS, WID 10NS, D0[13][10]
  9.009  MEMI         Nominal: 20 ns
  9.009  MEMI         Enter time interval between double pulses in ns:
  9.010  MEMC         20.0ns         3.0U

 10.001  IEEE         PER 100US, DBL 20US, WID 10US, D0[13][10]
 10.002  MEMI         Nominal: 20 us
 10.002  MEMI         Enter time interval between double pulses in us:
 10.003  MEMC         20.0us         1.0U

 11.001  DISP         Attention! In the next two tests you must
 11.001  DISP         press MAN to output the double pulse.
 11.001  DISP         Set scope to trigger once.

 11.002  IEEE         M2, DBL 20MS, WID 10MS, D0[13][10]
 11.003  IEEE         [GTL]
 11.004  MEMI         Nominal: 20 ms
 11.004  MEMI         Press MAN on UUT to output a double pulse. Adjust scope
 11.004  MEMI         trigger level to capture the double pulse.
 11.004  MEMI
 11.004  MEMI         Enter time interval between double pulses in ms:
 11.005  MEMC         20.0ms         1.0U

 12.001  IEEE         M2, DBL 800MS, WID 50MS, D0[13][10]
 12.002  IEEE         [GTL]
 12.003  MEMI         Nominal: 800 ms
 12.003  MEMI         Press MAN on UUT to output a double pulse. Adjust scope
 12.003  MEMI         trigger level to capture the double pulse.
 12.003  MEMI
 12.003  MEMI         Enter time interval between double pulses in ms:
 12.004  MEMC         800.0ms        40.0U
 13.001  IEEE         D1[13][10]

 13.002  HEAD         Pulse Width Performance Test
 13.003  RSLT         =Pulse Width Performance Test
 13.004  IEEE         [SDC]
 13.005  DISP         Pulse width is measured at 50% of pulse amplitude.
 13.006  IEEE         M1,CT0,W1,DEL 65NS,HIL 1 V,LOL -1 V[13][10]

 13.007  IEEE         PER 100NS, WID 10NS, D0[13][10]
 13.008  MEMI         Nominal: 10 ns
 13.008  MEMI         Enter the pulse width in ns:
 13.009  MEMC         10ns           2.5U

 14.001  IEEE         PER 200US, WID 40US, D0[13][10]
 14.002  MEMI         Nominal: 40 us
 14.002  MEMI         Enter the pulse width in us:
 14.003  MEMC         40us           2.0U

 15.001  IEEE         PER 5MS, WID 1MS, D0[13][10]
 15.002  MEMI         Nominal: 1 ms
 15.002  MEMI         Enter the pulse width in ms:
 15.003  MEMC         1ms            0.5U

 16.001  IEEE         PER 999MS, WID 950MS, D0[13][10]
 16.002  MEMI         Nominal: 950 ms
 16.002  MEMI         Enter the pulse width in ms:
 16.003  MEMC         950ms          47.5U

 17.001  IEEE         D1[13][10]

 17.002  HEAD         Constant Duty Cycle Performance Test
 17.003  RSLT         =Constant Duty Cycle Performance Test
 17.004  IEEE         [SDC]
 17.005  IEEE         M1,CT0,W1,PER 100US, DEL 65NS, HIL 1 V,LOL -1 V[13][10]

 17.006  IEEE         DTY 1%, D0[13][10]
 17.007  MEMI         Nominal: 1%
 17.007  MEMI         Enter UUT duty cycle in %:
 17.008  MEMC         1.0            0.1U

 18.001  IEEE         DTY 10%, D0[13][10]
 18.002  MEMI         Nominal: 10%
 18.002  MEMI         Enter UUT duty cycle in %:
 18.003  MEMC         10.0           1.0U

 19.001  IEEE         DTY 50%, D0[13][10]
 19.002  MEMI         Nominal: 50%
 19.002  MEMI         Enter UUT duty cycle in %:
 19.003  MEMC         50.0           5.0U

 20.001  IEEE         DTY 90%, D0[13][10]
 20.002  MEMI         Nominal: 90%
 20.002  MEMI         Enter UUT duty cycle in %:
 20.003  MEMC         90.0           9.0U

 21.001  IEEE         DTY 95%, D0[13][10]
 21.002  OPBR         Check UUT's duty cycle from scope display.
 21.002  OPBR
 21.002  OPBR         Is the UUT's duty cycle more than 89.1% ?

 21.003  JMPL         DC_ENOUGH MEM1 == 1

 21.004  IEEE         [GTL]
 21.005  OPBR         Use UUT's VERNIER controls to adjust duty cycle upwards
 21.005  OPBR         until it is at least 89.1% on scope display.
 21.005  OPBR
 21.005  OPBR         Can you adjust the UUT duty cycle to 89.1% or higher?

 21.006  LABEL        DC_ENOUGH
 21.007  EVAL   -e MEM1 == 1 : Duty cycle > 89.1%

 22.001  IEEE         D1[13][10]

 22.002  HEAD         Output Levels Performance Test
 22.003  RSLT         =Output Levels Performance Test
 22.004  IEEE         [SDC]
 22.005  DISP         Connect UUT OUTPUT to oscilloscope with 50 ohm termination.
 22.006  IEEE         M1,CT0,W1,PER 100MS, DEL 6.5MS, DTY 50%, HIL 0.1 V,LOL 0 V, D0[13][10]
 22.007  MEMI         Enter the signal's top voltage level in VOLTS:
 22.008  MEMC         0.1V           0.044U

 23.001  IEEE         HIL 0.5 V, D0[13][10]
 23.002  MEMI         Enter the signal's top voltage level in VOLTS:
 23.003  MEMC         0.5V           0.06U

 24.001  IEEE         HIL 1.0 V, D0[13][10]
 24.002  MEMI         Enter the signal's top voltage level in VOLTS:
 24.003  MEMC         1.0V           0.08U

 25.001  IEEE         HIL 5 V, D0[13][10]
 25.002  MEMI         Enter the signal's top voltage level in VOLTS:
 25.003  MEMC         5.0V           0.24U

 26.001  IEEE         HIL 8 V, D0[13][10]
 26.002  MEMI         Enter the signal's top voltage level in VOLTS:
 26.003  MEMC         8.0V           0.36U

 27.001  IEEE         M1,CT0,W1,PER 100MS, DEL 65NS, DTY 50%, HIL 0 V,LOL -0.1 V, D0[13][10]
 27.002  MEMI         Enter the signal's bottom voltage level in VOLTS:
 27.003  MEMC         -0.1V          0.044U

 28.001  IEEE         LOL -0.5 V, D0[13][10]
 28.002  MEMI         Enter the signal's bottom voltage level in VOLTS:
 28.003  MEMC         -0.5V          0.06U

 29.001  IEEE         LOL -1.0 V, D0[13][10]
 29.002  MEMI         Enter the signal's bottom voltage level in VOLTS:
 29.003  MEMC         -1.0V          0.08U

 30.001  IEEE         LOL -5 V, D0[13][10]
 30.002  MEMI         Enter the signal's bottom voltage level in VOLTS:
 30.003  MEMC         -5.0V          0.24U

 31.001  IEEE         LOL -8 V, D0[13][10]
 31.002  MEMI         Enter the signal's bottom voltage level in VOLTS:
 31.003  MEMC         -8.0V          0.36U

 32.001  IEEE         D1[13][10]

 32.002  HEAD         Transition Time Performance Test
 32.003  RSLT         =Transition Time Performance Test
 32.004  IEEE         [SDC]
 32.005  IEEE         M1,CT0,W1,PER 100NS, DEL 65NS, DTY 50%, HIL 1 V,LOL 0 V, D0[13][10]
 32.006  MEMI         Enter the signal's leading edge rise time in ns:
 32.007  MATH         MEM2 = "Fast fixed transition leading edge (" & MEM & " ns < 5.0 ns)."
 32.008  EVAL   -e MEM <= 5.0 : [MEM2]
 33.001  MEMI         Enter the signal's trailing edge fall time in ns:
 33.002  MATH         MEM2 = "Fast fixed transition trailing edge (" & MEM & " ns < 5.0 ns)."
 33.003  EVAL   -e MEM <= 5.0 : [MEM2]

 34.001  IEEE         M1,CT0,W2,PER 100NS, DEL 65NS, DTY 50%, HIL 1 V,LOL 0 V, D0[13][10]
 34.002  IEEE         LEE 5.5NS, TRE 6.5NS[13][10]
 34.003  MEMI         Enter the signal's leading edge rise time in ns:
 34.004  MATH         MEM2 = "Fast linear transition leading edge (" & MEM & " ns < 8.825 ns)."
 34.005  EVAL   -e MEM <= 8.825 : [MEM2]

 35.001  MEMI         Enter the signal's trailing edge fall time in ns:
 35.002  MATH         MEM2 = "Fast linear transition trailing edge (" & MEM & " ns < 8.825 ns)."
 35.003  EVAL   -e MEM <= 8.825 : [MEM2]

 36.001  IEEE         M1,CT0,W2,PER 2US, DEL 65NS, DTY 50%, HIL 5 V,LOL 0 V, D0[13][10]
 36.002  IEEE         LEE 500NS, TRE 500NS[13][10]

 36.003  MEMI         Enter the signal's leading edge rise time in ns:
 36.004  MATH         MEM2 = "Slow linear transition leading edge (473 < " & MEM & " < 527 ns)."
 36.005  EVAL   -e MEM <= 527 && MEM >= 473 : [MEM2]

 37.001  MEMI         Enter the signal's trailing edge fall time in ns:
 37.002  MATH         MEM2 = "Slow linear transition trailing edge (473 < " & MEM & " < 527 ns)."
 37.003  EVAL   -e MEM <= 527 && MEM >= 473 : [MEM2]

 38.001  IEEE         PER 500US, LEE 100US, TRE 100US[13][10]

 38.002  MEMI         Enter the signal's leading edge rise time in us:
 38.003  MATH         MEM2 = "Slow linear transition leading edge (95 < " & MEM & " < 105 us)."
 38.004  EVAL   -e MEM <= 105 && MEM >= 95 : [MEM2]

 39.001  MEMI         Enter the signal's trailing edge fall time in us:
 39.002  MATH         MEM2 = "Slow linear transition trailing edge (95 < " & MEM & " < 105 us)."
 39.003  EVAL   -e MEM <= 105 && MEM >= 95 : [MEM2]

 40.001  IEEE         PER 2MS, LEE 500US, TRE 500US[13][10]

 40.002  MEMI         Enter the signal's leading edge rise time in us:
 40.003  MATH         MEM2 = "Slow linear transition leading edge (475 < " & MEM & " < 525 us)."
 40.004  EVAL   -e MEM <= 525 && MEM >= 475 : [MEM2]

 41.001  MEMI         Enter the signal's trailing edge fall time in us:
 41.002  MATH         MEM2 = "Slow linear transition trailing edge (475 < " & MEM & " < 525 us)."
 41.003  EVAL   -e MEM <= 525 && MEM >= 475 : [MEM2]

 42.001  IEEE         PER 5MS, LEE 999US, TRE 999US[13][10]

 42.002  MEMI         Enter the signal's leading edge rise time in us:
 42.003  MATH         MEM2 = "Slow linear transition leading edge (949 < " & MEM & " < 1049 us)."
 42.004  EVAL   -e MEM <= 1049 && MEM >= 949 : [MEM2]

 43.001  MEMI         Enter the signal's trailing edge fall time in us:
 43.002  MATH         MEM2 = "Slow linear transition trailing edge (949 < " & MEM & " < 1049 us)."
 43.003  EVAL   -e MEM <= 1049 && MEM >= 949 : [MEM2]

 44.001  IEEE         PER 5MS, LEE 1MS, TRE 1MS[13][10]

 44.002  MEMI         Enter the signal's leading edge rise time in ms:
 44.003  MATH         MEM2 = "Slow linear transition leading edge (0.95 < " & MEM & " < 1.05 ms)."
 44.004  EVAL   -e MEM <= 1.05 && MEM >= 0.95 : [MEM2]

 45.001  MEMI         Enter the signal's trailing edge fall time in ms:
 45.002  MATH         MEM2 = "Slow linear transition trailing edge (0.95 < " & MEM & " < 1.05 ms)."
 45.003  EVAL   -e MEM <= 1.05 && MEM >= 0.95  : [MEM2]

 46.001  IEEE         PER 50MS, LEE 10MS, TRE 10MS[13][10]

 46.002  MEMI         Enter the signal's leading edge rise time in ms:
 46.003  MATH         MEM2 = "Slow linear transition leading edge (9.5 < " & MEM & " < 10.5 ms)."
 46.004  EVAL   -e MEM <= 10.5 && MEM >= 9.5 : [MEM2]

 47.001  MEMI         Enter the signal's trailing edge fall time in ms:
 47.002  MATH         MEM2 = "Slow linear transition trailing edge (9.5 < " & MEM & " < 10.5 ms)."
 47.003  EVAL   -e MEM <= 10.5 && MEM >= 9.5 : [MEM2]

 48.001  IEEE         D1[13][10]

 48.002  HEAD         Pulse Performance Test
 48.003  RSLT         =Pulse Performance Test
 48.004  IEEE         [SDC]
 48.005  DISP         Connect UUT OUTPUT to oscilloscope using 20dB attenuator / 10x termination.
 48.006  PIC          4.jpg
 48.007  IEEE         M1,CT0,W1,PER 500NS, DEL 65NS, DTY 50%, HIL 1 V,LOL 0 V, D0[13][10]

 48.008  MATH         MEM2 = "Is the preshoot < 10% of amplitude ± 10mV?"
 48.009  MATH         S[1] = "Fixed transition preshoot < 10% of amplitude ± 10mV"
 48.010  EVAL   -s S[1] : [MEM2]

 49.001  MATH         MEM2 = "Is the overshoot < 10% of amplitude ± 10mV?"
 49.002  MATH         S[1] = "Fixed transition overshoot < 10% of amplitude ± 10mV"
 49.003  EVAL   -s S[1] : [MEM2]

 50.001  MATH         MEM2 = "Is the settling time < 105ns?"
 50.002  MATH         S[1] = "Fixed transition settling time < 105ns"
 50.003  EVAL   -s S[1] : [MEM2]

 51.001  IEEE         W2, LEE 6.5NS, TRE 6.5NS, D0[13][10]
 51.002  MATH         MEM2 = "Is the preshoot < 5% of amplitude ± 10mV?"
 51.003  MATH         S[1] = "Linear transistion preshoot < 5% of amplitude ± 10mV"
 51.004  EVAL   -s S[1] : [MEM2]

 52.001  MATH         MEM2 = "Is the overshoot < 5% of amplitude ± 10mV?"
 52.002  MATH         S[1] = "Linear transition overshoot < 5% of amplitude ± 10mV"
 52.003  EVAL   -s S[1] : [MEM2]

 53.001  MATH         MEM2 = "Is the settling time < 107ns?"
 53.002  MATH         S[1] = "Linear transition settling time < 107ns"
 53.003  EVAL   -s S[1] : [MEM2]

 54.001  IEEE         D1[13][10]

 54.002  END
