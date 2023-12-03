;; [nfnl-macro]

(local macros {})

(lambda set! [prop ?value]
  "Set a Neovim option using the vim.opt.<prop> API.
  Arguments:
  * `name`: must be a symbol. Accepted patterns:
    `^\+(.*)`: appends to the current value
    `^\-(.*)`: it removes from the current value
    ")

macros
