; inherits: html_tags

[
  (defer_start_expression)
  (for_start_expression)
  (if_start_expression)
  (switch_start_expression)
  (case_expression)
  (default_expression)
] @indent.begin

[
 (placeholder_expression)
 (loading_expression)
 (error_expression)
 (empty_expression)
 (else_if_expression)
 (else_expression)
] @indent.branch

[
 (defer_end_expression)
 (for_end_expression)
 (if_end_expression)
 (case_end_expression)
 (default_end_expression)
 (switch_end_expression)
] @indent.end

