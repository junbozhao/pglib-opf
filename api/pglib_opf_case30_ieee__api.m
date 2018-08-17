%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%                                                                  %%%%%
%%%%    IEEE PES Power Grid Library - Optimal Power Flow - v18.08     %%%%%
%%%%          (https://github.com/power-grid-lib/pglib-opf)           %%%%%
%%%%             Benchmark Group - Active Power Increase              %%%%%
%%%%                        08 - August - 2018                        %%%%%
%%%%                                                                  %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mpc = pglib_opf_case30_ieee__api
mpc.version = '2';
mpc.baseMVA = 100.0;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	 3	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	2	 2	 36.08	 12.70	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	3	 1	 3.99	 1.20	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	4	 1	 12.64	 1.60	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	5	 2	 156.64	 19.00	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	6	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	7	 1	 37.91	 10.90	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	8	 2	 49.89	 30.00	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	9	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 1.0	 1	    1.06000	    0.94000;
	10	 1	 9.64	 2.00	 0.0	 19.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	11	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 11.0	 1	    1.06000	    0.94000;
	12	 1	 18.62	 7.50	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	13	 2	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 11.0	 1	    1.06000	    0.94000;
	14	 1	 10.31	 1.60	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	15	 1	 13.64	 2.50	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	16	 1	 5.82	 1.80	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	17	 1	 14.97	 5.80	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	18	 1	 5.32	 0.90	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	19	 1	 15.80	 3.40	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	20	 1	 3.66	 0.70	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	21	 1	 29.10	 11.20	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	22	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	23	 1	 5.32	 1.60	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	24	 1	 14.47	 6.70	 0.0	 4.3	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	25	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	26	 1	 5.82	 2.30	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	27	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	28	 1	 0.0	 0.0	 0.0	 0.0	 1	    1.00000	    0.00000	 132.0	 1	    1.06000	    0.94000;
	29	 1	 3.99	 0.90	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
	30	 1	 17.63	 1.90	 0.0	 0.0	 1	    1.00000	    0.00000	 33.0	 1	    1.06000	    0.94000;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	 175.5	 0.0	 176.0	 -176.0	 1.06	 100.0	 1	 351	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	2	 171.0	 0.0	 171.0	 -171.0	 1.045	 100.0	 1	 342	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % NG
	5	 0.0	 0.0	 40.0	 -40.0	 1.01	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
	8	 0.0	 0.0	 230.4	 -230.4	 1.01	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
	11	 0.0	 3.0	 24.0	 -18.0	 1.082	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
	13	 0.0	 9.0	 24.0	 -6.0	 1.071	 100.0	 1	 0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0	 0.0; % SYNC
];

%% generator cost data
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	 0.0	 0.0	 3	   0.000000	  32.112559	   0.000000; % NG
	2	 0.0	 0.0	 3	   0.000000	  61.798693	   0.000000; % NG
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
	2	 0.0	 0.0	 3	   0.000000	   0.000000	   0.000000; % SYNC
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	 2	 0.0192	 0.0575	 0.0528	 138.0	 138.0	 138.0	 0.0	 0.0	 1	 -30.0	 30.0;
	1	 3	 0.0452	 0.1652	 0.0408	 152.0	 152.0	 152.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 4	 0.057	 0.1737	 0.0368	 139.0	 139.0	 139.0	 0.0	 0.0	 1	 -30.0	 30.0;
	3	 4	 0.0132	 0.0379	 0.0084	 135.0	 135.0	 135.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 5	 0.0472	 0.1983	 0.0418	 144.0	 144.0	 144.0	 0.0	 0.0	 1	 -30.0	 30.0;
	2	 6	 0.0581	 0.1763	 0.0374	 139.0	 139.0	 139.0	 0.0	 0.0	 1	 -30.0	 30.0;
	4	 6	 0.0119	 0.0414	 0.009	 148.0	 148.0	 148.0	 0.0	 0.0	 1	 -30.0	 30.0;
	5	 7	 0.046	 0.116	 0.0204	 127.0	 127.0	 127.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 7	 0.0267	 0.082	 0.017	 140.0	 140.0	 140.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 8	 0.012	 0.042	 0.009	 148.0	 148.0	 148.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 9	 0.0	 0.208	 0.0	 142.0	 142.0	 142.0	 0.978	 0.0	 1	 -30.0	 30.0;
	6	 10	 0.0	 0.556	 0.0	 53.0	 53.0	 53.0	 0.969	 0.0	 1	 -30.0	 30.0;
	9	 11	 0.0	 0.208	 0.0	 142.0	 142.0	 142.0	 1.0	 0.0	 1	 -30.0	 30.0;
	9	 10	 0.0	 0.11	 0.0	 267.0	 267.0	 267.0	 1.0	 0.0	 1	 -30.0	 30.0;
	4	 12	 0.0	 0.256	 0.0	 115.0	 115.0	 115.0	 0.932	 0.0	 1	 -30.0	 30.0;
	12	 13	 0.0	 0.14	 0.0	 210.0	 210.0	 210.0	 1.0	 0.0	 1	 -30.0	 30.0;
	12	 14	 0.1231	 0.2559	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -30.0	 30.0;
	12	 15	 0.0662	 0.1304	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -30.0	 30.0;
	12	 16	 0.0945	 0.1987	 0.0	 30.0	 30.0	 30.0	 0.0	 0.0	 1	 -30.0	 30.0;
	14	 15	 0.221	 0.1997	 0.0	 20.0	 20.0	 20.0	 0.0	 0.0	 1	 -30.0	 30.0;
	16	 17	 0.0524	 0.1923	 0.0	 38.0	 38.0	 38.0	 0.0	 0.0	 1	 -30.0	 30.0;
	15	 18	 0.1073	 0.2185	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -30.0	 30.0;
	18	 19	 0.0639	 0.1292	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -30.0	 30.0;
	19	 20	 0.034	 0.068	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -30.0	 30.0;
	10	 20	 0.0936	 0.209	 0.0	 30.0	 30.0	 30.0	 0.0	 0.0	 1	 -30.0	 30.0;
	10	 17	 0.0324	 0.0845	 0.0	 33.0	 33.0	 33.0	 0.0	 0.0	 1	 -30.0	 30.0;
	10	 21	 0.0348	 0.0749	 0.0	 30.0	 30.0	 30.0	 0.0	 0.0	 1	 -30.0	 30.0;
	10	 22	 0.0727	 0.1499	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -30.0	 30.0;
	21	 22	 0.0116	 0.0236	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -30.0	 30.0;
	15	 23	 0.1	 0.202	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -30.0	 30.0;
	22	 24	 0.115	 0.179	 0.0	 26.0	 26.0	 26.0	 0.0	 0.0	 1	 -30.0	 30.0;
	23	 24	 0.132	 0.27	 0.0	 29.0	 29.0	 29.0	 0.0	 0.0	 1	 -30.0	 30.0;
	24	 25	 0.1885	 0.3292	 0.0	 27.0	 27.0	 27.0	 0.0	 0.0	 1	 -30.0	 30.0;
	25	 26	 0.2544	 0.38	 0.0	 25.0	 25.0	 25.0	 0.0	 0.0	 1	 -30.0	 30.0;
	25	 27	 0.1093	 0.2087	 0.0	 28.0	 28.0	 28.0	 0.0	 0.0	 1	 -30.0	 30.0;
	28	 27	 0.0	 0.396	 0.0	 75.0	 75.0	 75.0	 0.968	 0.0	 1	 -30.0	 30.0;
	27	 29	 0.2198	 0.4153	 0.0	 28.0	 28.0	 28.0	 0.0	 0.0	 1	 -30.0	 30.0;
	27	 30	 0.3202	 0.6027	 0.0	 28.0	 28.0	 28.0	 0.0	 0.0	 1	 -30.0	 30.0;
	29	 30	 0.2399	 0.4533	 0.0	 28.0	 28.0	 28.0	 0.0	 0.0	 1	 -30.0	 30.0;
	8	 28	 0.0636	 0.2	 0.0428	 140.0	 140.0	 140.0	 0.0	 0.0	 1	 -30.0	 30.0;
	6	 28	 0.0169	 0.0599	 0.013	 149.0	 149.0	 149.0	 0.0	 0.0	 1	 -30.0	 30.0;
];

% INFO    : === Translation Options ===
% INFO    : Load Model:                  from file ./pglib_opf_case30_ieee.m.api.sol
% INFO    : Gen Active Capacity Model:   stat
% INFO    : Gen Reactive Capacity Model: al50ag
% INFO    : Gen Active Cost Model:       stat
% INFO    : 
% INFO    : === Load Replacement Notes ===
% INFO    : Bus 2	: Pd=21.7, Qd=12.7 -> Pd=36.08, Qd=12.70
% INFO    : Bus 3	: Pd=2.4, Qd=1.2 -> Pd=3.99, Qd=1.20
% INFO    : Bus 4	: Pd=7.6, Qd=1.6 -> Pd=12.64, Qd=1.60
% INFO    : Bus 5	: Pd=94.2, Qd=19.0 -> Pd=156.64, Qd=19.00
% INFO    : Bus 7	: Pd=22.8, Qd=10.9 -> Pd=37.91, Qd=10.90
% INFO    : Bus 8	: Pd=30.0, Qd=30.0 -> Pd=49.89, Qd=30.00
% INFO    : Bus 10	: Pd=5.8, Qd=2.0 -> Pd=9.64, Qd=2.00
% INFO    : Bus 12	: Pd=11.2, Qd=7.5 -> Pd=18.62, Qd=7.50
% INFO    : Bus 14	: Pd=6.2, Qd=1.6 -> Pd=10.31, Qd=1.60
% INFO    : Bus 15	: Pd=8.2, Qd=2.5 -> Pd=13.64, Qd=2.50
% INFO    : Bus 16	: Pd=3.5, Qd=1.8 -> Pd=5.82, Qd=1.80
% INFO    : Bus 17	: Pd=9.0, Qd=5.8 -> Pd=14.97, Qd=5.80
% INFO    : Bus 18	: Pd=3.2, Qd=0.9 -> Pd=5.32, Qd=0.90
% INFO    : Bus 19	: Pd=9.5, Qd=3.4 -> Pd=15.80, Qd=3.40
% INFO    : Bus 20	: Pd=2.2, Qd=0.7 -> Pd=3.66, Qd=0.70
% INFO    : Bus 21	: Pd=17.5, Qd=11.2 -> Pd=29.10, Qd=11.20
% INFO    : Bus 23	: Pd=3.2, Qd=1.6 -> Pd=5.32, Qd=1.60
% INFO    : Bus 24	: Pd=8.7, Qd=6.7 -> Pd=14.47, Qd=6.70
% INFO    : Bus 26	: Pd=3.5, Qd=2.3 -> Pd=5.82, Qd=2.30
% INFO    : Bus 29	: Pd=2.4, Qd=0.9 -> Pd=3.99, Qd=0.90
% INFO    : Bus 30	: Pd=10.6, Qd=1.9 -> Pd=17.63, Qd=1.90
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=135.5, Qg=5.0 -> Pg=254.0, Qg=49.0
% INFO    : Gen at bus 2	: Pg=46.0, Qg=3.0 -> Pg=261.0, Qg=-46.0
% INFO    : Gen at bus 5	: Pg=0.0, Qg=0.0 -> Pg=0.0, Qg=32.0
% INFO    : Gen at bus 8	: Pg=0.0, Qg=15.0 -> Pg=0.0, Qg=192.0
% INFO    : Gen at bus 11	: Pg=0.0, Qg=9.0 -> Pg=0.0, Qg=15.0
% INFO    : Gen at bus 13	: Pg=0.0, Qg=9.0 -> Pg=0.0, Qg=-1.0
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Setpoint Value Notes ===
% INFO    : Gen at bus 1	: Qg 49.0, Qmin 0.0, Qmax 10.0 -> Qmin -58.8, Qmax 58.8
% INFO    : Gen at bus 2	: Qg -46.0, Qmin -40.0, Qmax 46.0 -> Qmin -55.2, Qmax 46.0
% INFO    : Gen at bus 8	: Qg 192.0, Qmin -10.0, Qmax 40.0 -> Qmin -230.4, Qmax 230.4
% INFO    : Gen at bus 11	: Qg 15.0, Qmin -6.0, Qmax 24.0 -> Qmin -18.0, Qmax 24.0
% INFO    : 
% INFO    : === Generator Classification Notes ===
% INFO    : SYNC   4   -     0.00
% INFO    : NG     2   -   100.00
% INFO    : 
% INFO    : === Generator Active Capacity Stat Model Notes ===
% INFO    : Gen at bus 1 - NG	: Pg=254.0, Pmax=271.0 -> Pmax=351   samples: 5
% INFO    : Gen at bus 2 - NG	: Pg=261.0, Pmax=92.0 -> Pmax=342   samples: 12
% INFO    : Gen at bus 5 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : Gen at bus 8 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : Gen at bus 11 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : Gen at bus 13 - SYNC	: Pg=0.0, Pmax=0.0 -> Pmax=0   samples: 0
% INFO    : 
% INFO    : === Generator Active Capacity LB Model Notes ===
% INFO    : 
% INFO    : === Generator Reactive Capacity Atleast Max 50 Percent Active Model Notes ===
% INFO    : Gen at bus 1 - NG	: Pmax 351.0, Qmin -58.8, Qmax 58.8 -> Qmin -176.0, Qmax 176.0
% INFO    : Gen at bus 2 - NG	: Pmax 342.0, Qmin -55.2, Qmax 46.0 -> Qmin -171.0, Qmax 171.0
% INFO    : 
% INFO    : === Generator Setpoint Replacement Notes ===
% INFO    : Gen at bus 1	: Pg=254.0, Qg=49.0 -> Pg=175.5, Qg=0.0
% INFO    : Gen at bus 2	: Pg=261.0, Qg=-46.0 -> Pg=171.0, Qg=0.0
% INFO    : Gen at bus 5	: Pg=0.0, Qg=32.0 -> Pg=0.0, Qg=0.0
% INFO    : Gen at bus 8	: Pg=0.0, Qg=192.0 -> Pg=0.0, Qg=0.0
% INFO    : Gen at bus 11	: Pg=0.0, Qg=15.0 -> Pg=0.0, Qg=3.0
% INFO    : Gen at bus 13	: Pg=0.0, Qg=-1.0 -> Pg=0.0, Qg=9.0
% INFO    : 
% INFO    : === Writing Matpower Case File Notes ===
