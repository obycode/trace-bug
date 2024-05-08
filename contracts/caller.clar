(define-trait my-trait
  ((do-example (uint) (response uint uint))))

(define-private (call (contract <my-trait>) (a uint))
  (contract-call? contract do-example a)
)

(define-public (call-latest (a uint))
  (let ((latest (unwrap-panic (contract-call? .oracle get-contract))))
    (call latest a)
  )
)