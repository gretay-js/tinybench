external int_clz : int -> int = "%clzint"

module TP = Tinyperfmon

let iterations = 10_000_000

let[@inline never] opaque x = Sys.opaque_identity x

let () =
  let min = 0 in
  let max = iterations in
  let e = ref 0 in
  let t = TP.create () in
  TP.start t;
  for i = min to max do
    e := int_clz i
  done;
  TP.stop t;
  ignore (opaque !e);
  TP.report t;
  ()


