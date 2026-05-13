# Create Upgrade Workaround Matrix

Analyze vendor release notes, known incidents, and local workaround notes.

Use the active Cobol Compass profile.

## Required Output

Create a table with these columns:

- Vendor issue ID
- Case/reference number
- Fixed version
- Runtime area
- Description
- Locally impacted? Y/N
- Existing workaround? Y/N
- Workaround location
- Recommended action
- Safe to remove? Y/N
- Required test
- Owner
- Status

## Rules

- Do not recommend removing a workaround without regression tests.
- Use only public vendor details in public repository artifacts.
- Keep customer-specific case notes in a private overlay.

