variable "data_catalog_tag_template_iam_bindings" {
  description = <<EOT
Map of data_catalog_tag_template_iam_bindings, attributes below
Required:
    - members
    - role
    - tag_template
Optional:
    - project
    - region
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members      = set(string)
    role         = string
    tag_template = string
    project      = optional(string)
    region       = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

