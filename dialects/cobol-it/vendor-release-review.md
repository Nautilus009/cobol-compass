# COBOL Runtime Vendor Release Review

Use this process when evaluating a COBOL compiler/runtime upgrade.

## Steps

1. Identify current version.
2. Identify target version.
3. Collect official release notes for all intermediate versions.
4. Extract fixed issues.
5. Map fixed issues to known local incidents.
6. Identify existing local workarounds.
7. Decide whether each workaround should remain, change, or be removed.
8. Define regression tests before removing any workaround.

## Suggested Tracking Columns

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

