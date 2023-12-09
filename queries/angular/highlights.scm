; inherits: html_tags

(identifier) @variable
(pipe_operator) @operator
(string) @string
(number) @number
 (pipe_call
   name: (identifier) @function)
 (pipe_call
   arguments: (pipe_arguments
                (identifier) @parameter))

(structural_directive
  ["*"] @keyword
  (identifier) @keyword
)

(attribute
  (attribute_name) @property
  (#lua-match? @property "#.*"))

(binding_name
  (identifier) @keyword)

(event_binding
  (binding_name
    (identifier) @event.name))

(structural_assignment
  operator: (identifier) @keyword)

(member_expression
  property: (identifier) @property)

(call_expression
  function: (identifier) @function)

(call_expression
  function: ((identifier) @function.builtin
    (#eq? @function.builtin "$any")))

(pair
  key: ((identifier) @variable.builtin
  (#eq? @variable.builtin "$implicit")))

(control_keyword) @type.control
(special_keyword) @type

((identifier) @boolean
  (#any-of? @boolean "true" "false"))
((identifier) @variable.builtin
  (#any-of? @variable.builtin "this" "\$event" "null"))

[
 (ternary_operator)
 (conditional_operator)
] @conditional.ternary

;
; (if_statement "\@" @type)
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  "{{"
  "}}"
] @punctuation.bracket

(start_tag
  [ "<" ">" "/>"] @tag.delimiter
)
(self_closing_tag
  [ "<" ">" "/>"] @tag.delimiter
)
(end_tag
  [ "</" ">" ] @tag.delimiter
)
(erroneous_end_tag
  [ "</" ">" ] @tag.delimiter
)

[
  ";"
  "."
  ","
  "?."
] @punctuation.delimiter

(concatination_expression ["+"] @operator)

(binary_expression
  [
    "-"
    "&&"
    "+"
    "<"
    "<="
    "="
    "=="
    "==="
    "!="
    "!=="
    ">"
    ">="
    "*"
    "/"
    "||"
    "%"
  ] @operator
)

