# Snowflake Terraform on HCP

This repo provisions a Snowflake warehouse using Terraform on HCP Terraform with secure environment variables.

---

## 🔧 Prerequisites

- A Snowflake account (save org name, account name, region, username, and password)
- HCP Terraform account
- GitHub account

---

## 📁 Files

| File | Purpose |
|------|---------|
| `main.tf` | Defines the Snowflake warehouse |
| `providers.tf` | Configures the Snowflake provider |
| `variables.tf` | Declares input variables |
| `.gitignore` | Prevents committing state/secrets |
| `README.md` | Explains the setup |

---

## 🌐 HCP Terraform Setup

1. **Create a Workspace** (Type: Version Control)
2. **Connect to this GitHub repo**
3. Go to `Variables` → `Environment Variables` and add:

| Name | Value | Sensitive? |
|------|-------|------------|
| `TF_VAR_snowflake_account_name` | `DW` | ❌ |
| `TF_VAR_snowflake_organization_name` | `TEMPERPACK` | ❌ |
| `TF_VAR_snowflake_username` | `your_username` | ❌ |
| `TF_VAR_snowflake_password` | `your_password` | ✅ ✅ ✅ |
| `TF_VAR_snowflake_role` | `ACCOUNTADMIN` | ❌ |
| `TF_VAR_snowflake_region` | `aws_us_west_2` | ❌ |

---

## 🚀 Usage

1. Push changes to GitHub
2. HCP Terraform will automatically trigger `plan`
3. Click **Apply** to provision the warehouse

---

## 🔐 Security Best Practices

- Do not store passwords or secrets in `.tf` or `.tfvars` files.
- Use HCP Terraform’s environment variables instead.

---

## 🧩 Next Steps

- Add `snowflake_database`, `snowflake_schema`, `snowflake_user`, etc.
- Convert this to a module for reuse

