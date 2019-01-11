open Core

external perfmon : string -> int -> int  = "%perfmonint"

let rdtsc () = (perfmon "rdtsc" 0)
let rdpmc c = perfmon "rdpmc" c

type t = { mutable start:int; mutable stop:int }

let create () =
  { start = 0; stop = 0 }

let start t =
  t.start <- rdtsc ()

let stop t =
  t.stop <- rdtsc ()

let report t =
  (* try to detect if there was overflow.
     not accurate for long measurements if after overflow the count had
     time to increase past start again. *)
  (* another reason this isn't accurate is that it only uses 63 bits
     to represent the counter instead of the full 64 bit available with rdtsc. *)
  printf "start =%d\n" t.start;
  printf "stop  =%d\n" t.stop;
  if t.stop < t.start then
    printf "Overflow detected\n"
  else begin
    let diff = t.stop - t.start in
    printf "diff  =%d\n" diff;
    let span = Time_stamp_counter.Span.of_int_exn diff in
    let time = Time_stamp_counter.Span.to_ns span in
    let s = Int63.to_string_hum ~delimiter:',' time in
    printf "%sns\n" s
  end

