(local {: any} (require :thirdparty.fun))
(local stdlib {})

(lambda stdlib.nil? [el]
  "Returns `true` if the given element is nil, `false` otherwise.
  Arguments:
  * `el`: a value to be checked against
  Example:
  ```fennel
  (assert (= (nil? nil) true))
  (assert (= (nil? :hello) false))
  ```"
  (= nil x))

(lambda stdlib.str? [el]
  "Returns `true` if the given element is a string, `false` otherwise.
  Arguments:
  * `el`: a value to be checked against
  Example:
  ```fennel
  (assert (= (str? 1) false))
  (assert (= (str? :fennel-lang) true))
  ```"
  (= :string (type el)))

(lambda stdlib.fn? [el]
  "Returns `true` if the given element is a function, `false` otherwise.
  Arguments:
  * `el`: a value to be checked against
  Example:
  ```fennel
  (local my-func (fn [] \"hello!\"))
  (assert (= (fn? 1) false))
  (assert (= (fn? my-func) true))
  ```"
  (= :function (type el)))

(lambda stdlib.contains? [xs el]
  "Returns `true` if `xs` contains the element `el`, `false` otherwise.
  Arguments:
  * `xs`: a list to be checked against
  * `el`: the value to search for 
  Example:
  ```fennel
  (assert (= (contains? [1, 2, 3] 4) false))
  (assert (= (contains? [1, 2, 3] 2) true))
  ```"
  (any #(= el $) xs))

(lambda stdlib.empty? [xs]
  "Returns `true` if the given list is empty, `false` otherwise.
  Arguments:
  * `xs`: a list to be checked against
  Example:
  ```fennel
  (assert (= (empty? []) true))
  (assert (= (empty? [1, 2, 3]) false))
  ```"
  (= 0 (length xs)))

(lambda stdlib.->bool [el]
  "Converts the given value to a boolean.
  Arguments:
  * `el`: the value to be converted
  Example:
  ```fennel
  (assert (= (->bool 1) true))
  (assert (= (->bool 0) false))
  (assert (= (->bool :hello) true))
  (assert (= (->bool "") false))
  ```"
  (if el true false))

(lambda stdlib.matches? [str pattern]
  "Returns `true` if the string `str` matches the given `pattern`, `false` otherwise.
  Arguments:
  * `str`: the string to be checked
  * `pattern`: the pattern to be matched against the string
  Example:
  ```fennel
  (assert (= (matches? :hello-world \"^hello-\") true))
  ```"
  (stdlib.->bool (str:match pattern)))

stdlib
