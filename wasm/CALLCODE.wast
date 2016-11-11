;; generated by ./wasm/generateInterface.js
(import $callCode "ethereum" "callCode" (param i32 i32 i32 i32 i32 i32 i32 i32) (result i32))
(func $CALLCODE 
  (param $sp i32)
  (param $callback i32)(local $offset0 i32)(local $length0 i32)(local $offset1 i32)(local $length1 i32)(local $memstart i32) (set_local $memstart (i32.const 33832)) (set_local $offset0 
    (call $check_overflow
      (i64.load (i32.add (get_local $sp) (i32.const -96)))
      (i64.load (i32.add (get_local $sp) (i32.const -88)))
      (i64.load (i32.add (get_local $sp) (i32.const -80)))
      (i64.load (i32.add (get_local $sp) (i32.const -72)))))(set_local $length0 
    (call $check_overflow 
      (i64.load (i32.add (get_local $sp) (i32.const -128)))
      (i64.load (i32.add (get_local $sp) (i32.const -120)))
      (i64.load (i32.add (get_local $sp) (i32.const -112)))
      (i64.load (i32.add (get_local $sp) (i32.const -104)))))

    (call $memusegas (get_local $offset0) (get_local $length0))
    (set_local $offset0 (i32.add (get_local $memstart) (get_local $offset0)))(set_local $offset1 
    (call $check_overflow
      (i64.load (i32.add (get_local $sp) (i32.const -160)))
      (i64.load (i32.add (get_local $sp) (i32.const -152)))
      (i64.load (i32.add (get_local $sp) (i32.const -144)))
      (i64.load (i32.add (get_local $sp) (i32.const -136)))))(set_local $length1 
    (call $check_overflow 
      (i64.load (i32.add (get_local $sp) (i32.const -192)))
      (i64.load (i32.add (get_local $sp) (i32.const -184)))
      (i64.load (i32.add (get_local $sp) (i32.const -176)))
      (i64.load (i32.add (get_local $sp) (i32.const -168)))))

    (call $memusegas (get_local $offset1) (get_local $length1))
    (set_local $offset1 (i32.add (get_local $memstart) (get_local $offset1)))(call $memset 
    (get_local $offset1) 
    (i32.const 0)
    (get_local $length1)) (i64.store
    (i32.add (get_local $sp) (i32.const -192))
    (i64.extend_u/i32
      (call_import $callCode(call $check_overflow
           (i64.load (i32.add (get_local $sp) (i32.const 0)))
           (i64.load (i32.add (get_local $sp) (i32.const 8)))
           (i64.load (i32.add (get_local $sp) (i32.const 16)))
           (i64.load (i32.add (get_local $sp) (i32.const 24))))(call $bswap_m256 (i32.add (get_local $sp) (i32.const -32)))(call $bswap_m256 (i32.add (get_local $sp) (i32.const -64)))(get_local $offset0)(get_local $length0)(get_local $offset1)(get_local $length1)(get_local $callback))))

    ;; zero out mem
    (i64.store (i32.add (get_local $sp) (i32.const -168)) (i64.const 0))
    (i64.store (i32.add (get_local $sp) (i32.const -176)) (i64.const 0))
    (i64.store (i32.add (get_local $sp) (i32.const -184)) (i64.const 0)))