# HALion Script API — Documentation Source

mdBook source for the HALion Script API reference (HALion Script is a Lua-based DSL).
This repo contains **documentation only** — no application code, no tests.

Remote: `https://stash.steinberg-intra.net/scm/sdkdoc/halion-script-api.git` (Steinberg VPN required to push).

## Build & preview

Requires `mdbook`, `mdbook-toc` and `mdbook-linkcheck` on `PATH` (binaries are also checked in at the repo root).

```
mdbook build           # render to ./book (gitignored)
mdbook serve -o        # serve on :3000 with live reload
```

`build_book.bat` opens the browser and runs `mdbook serve --port 3000`.

Preview target is normally the **main checkout**, not a worktree — `main` is the version that gets published.
`.claude/launch.json` (gitignored, so per-checkout) defines the `mdbook` preview server and points at an absolute
repo path; to preview uncommitted worktree changes, point it at the worktree first.

## Layout

- `book.toml` — mdBook config. Title carries the documented HALion version (currently `HALion 7.5.0`).
- `src/SUMMARY.md` — the book's navigation. **Every new page must be listed here**, including individual
  function pages, or it won't be reachable.
- `src/HALion-Script/pages/` — all HALion Script pages (~380 files, flat).
- `src/HALion-Macro-Page/`, `src/HALion-Tutorials-Guidelines/` — the other two books' pages.
- `src/_Version.md` — shared "Since HALion x.y" badges, one anchor per version.
- `theme/` — Steinberg light/dark themes.

## The partial + anchor pattern

Reference content is written **once** in an underscore-prefixed partial and included in two places.

`_<name>-Reference.md` holds the content, wrapped in named anchors:

```
/* ANCHOR: all */

// ANCHOR: function
>**addQCAssignment(qc, element, nameOrID, scope)**
// ANCHOR_END: function

#### Description

// ANCHOR: description
...
// ANCHOR_END: description
```

- `/* ANCHOR: all */` wraps the whole partial (block-comment form, so it does not render).
- Inner anchors are `// ANCHOR: <name>` / `// ANCHOR_END: <name>` — conventionally
  `function`, `description`, `arguments`, `fields`, `example`.
- Headings inside partials are `####`, so they sit correctly under the `###` heading of a class page.

The two consumers:

- `<name>.md` — standalone page, includes anchors individually under its own `##` headings:
  `{{#include ./_<name>-Reference.md:description}}`
- the class page (`Layer.md`, `Zone.md`, …) — includes the whole partial under an `### <name>` heading:
  `{{#include ./_<name>-Reference.md:all}}`, followed by `[Jump to Top ](#layer)`

`_Template-Reference.md` is the blank skeleton for a new reference partial. It lists every section a
reference page *can* have; drop the ones the function has no content for. `#### Arguments`,
`#### Fields` and `#### Return Values` are only present when the function actually takes arguments,
exposes fields, or returns something — an empty section is never left in place as a placeholder.

## Adding a new function — registration checklist

Content lives in one file but is linked from several. All of these need touching:

1. `_<name>-Reference.md` — the partial (copy `_Template-Reference.md`).
2. `<name>.md` — the standalone page (copy an existing sibling for the breadcrumb + include layout).
3. `src/SUMMARY.md` — nav entry, under the owning class.
4. `Reference.md` — alphabetical list, in the right `## A-E` / `## F-M` / … section.
5. `Functions-by-Subject.md` — one or more subject groups (functions often appear more than once).
6. The class page it belongs to (`Layer.md`, `Zone.md`, `Program.md`, …) — `:all` include.
7. `Updates.md` — under the current version's **Added Pages**; put changes to existing functions
   under **Modified Pages** instead.
8. `_Version.md` include for the version badge, if the function is new in a specific version.

Cross-references are relative links within the folder: `[Layer](./Layer.md)`.

## Page conventions

- First line is a breadcrumb, e.g.
  `/ [HALion Developer Resource](../../HALion-Developer-Resource.md) / [HALion Script](./HALion-Script.md) / [Reference](./Reference.md) /`
- Signatures are blockquoted bold: `>**functionName(arg1, arg2)**`
- Inline code is written with **double** backticks — ` ``argName`` `. Single backticks render the same;
  double is simply the established style here, so match it rather than mixing the two.
- Referring to a field or function depends on where it is documented. On the **same page**, write it as
  inline code — ` ``.linkEnvelope`` `. On **another page**, write it as a link —
  `[.linkEnvelope](./Wavetable-Table.md#wave-fields)`. Never link to a section of the page you are already
  on; that is what the code form is for.
- Field names keep their leading dot in both forms (` ``.samplePos`` `, `[.samplePos](…)`), matching the
  first column of the field tables. Function names, argument names and Lua stdlib names take no dot —
  ` ``setWavetable`` `, ` ``channelSelection`` `, ` ``table.insert`` `.
- Notes are blockquoted and prefixed with `&#10069;` — e.g. `>&#10069; The index starts counting from 1.`
- `&#9989;` marks "supported" cells in capability tables.
- Argument/field tables are three columns: `|Argument|Description|Value Type|`, all left-aligned (`|:-|:-|:-|`).
- Each reference page ends with a `**See also:**` line of related links.
- `[[_TOC_]]` inserts a table of contents (mdbook-toc, max level 3) on long pages.
- `**Available in:** Controller, Processor.` states the script contexts a function works in.

## Working in this repo

- `.claude/` is gitignored in full — nothing under it is committed, `launch.json` included.
- Worktrees live in `.claude/worktrees/`; the tooling creates them on branch `worktree-<name>`.
- Flow: edit in the worktree → commit on its branch → merge into `main` → push (needs VPN).
- Pull `main` into the worktree at session start to pick up edits made directly on `main`.
- Verify links with the linkcheck backend before merging; a mistyped `{{#include}}` anchor renders
  as an empty section rather than failing the build, so check the rendered page.
