#use "src/core.ml";;

let expect condition = if not condition then failwith "fixture mismatch";;
let signal_case_1 = { demand = 86; capacity = 85; latency = 14; risk = 6; weight = 6 };;
expect (score signal_case_1 = 197);;
expect (classify signal_case_1 = "accept");;
let signal_case_2 = { demand = 91; capacity = 94; latency = 14; risk = 12; weight = 12 };;
expect (score signal_case_2 = 198);;
expect (classify signal_case_2 = "accept");;
let signal_case_3 = { demand = 68; capacity = 71; latency = 18; risk = 25; weight = 4 };;
expect (score signal_case_3 = -6);;
expect (classify signal_case_3 = "review");;
