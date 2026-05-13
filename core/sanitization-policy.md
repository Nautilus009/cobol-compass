# Sanitization Policy

Do not commit sensitive customer or production information to public Cobol Compass repositories.

Avoid:

- Customer names
- Internal project names
- Hostnames
- IP addresses
- Usernames
- Production paths
- Job names
- Queue names
- Database names
- Credentials
- Proprietary source code
- Proprietary copybooks
- Production logs
- Real account or customer data
- Vendor case details that are not public

Use neutral placeholders such as:

- `CUSTOMER_A`
- `SAMPLE_JOB`
- `SAMPLE_SERVICE`
- `APP_STATUS`
- `APP_FREE_TEXT`
- `HOST_A`
- `/app/runtime/path`
- `/app/tmp`

