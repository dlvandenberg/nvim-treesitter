; inherits: html_tags

[
  (defer_start_expression)
  (for_start_expression)
  (if_start_expression)
  (switch_start_expression)
  (case_statement)
  (default_statement)
] @indent.begin

[
 (placeholder_statement)
 (loading_statement)
 (error_statement)
 (empty_statement)
 (else_if_statement)
] @indent.branch

[
 (defer_end_expression)
 (for_end_expression)
 (if_end_expression)
 (case_end_expression)
 (default_end_expression)
 (switch_end_expression)
] @indent.end
