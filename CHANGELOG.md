# Changelog

Since we follow [Conventional
Commits](https://decisions.seedcase-project.org/why-conventional-commits/) when
writing commit messages, we're able to automatically create formal "releases" of
the template based on the commit messages. Releases in the context of template
are when changes occur to the `template/` files or to the `copier.yaml` files.
The releases are also published to Zenodo for easier discovery, archival, and
citation purposes. We use
[Cocogitto](https://decisions.seedcase-project.org/why-semantic-release-with-cocogitto/)
to be able to automatically create these releases, which uses
[SemVar](https://semverdoc.org) as the version numbering scheme, and [Git
Cliff](https://decisions.seedcase-project.org/why-changelog-with-git-cliff/) to
generate the changelog based on the commit messages.

Because releases are created based on commit messages, a new release is created
quite often---sometimes several times in a day. This also means that any
individual release will not have many changes within it. Below is a list of the
releases we've made so far, along with what was changed within each release.

Commits from bots, like `dependabot` or `pre-commit-ci`, are not included in the
changelog.

## [0.2.1](https://github.com/dp-next/template-project/compare/0.2.0..0.2.1) - 2026-08-25

### 📝 Documentation

- Uncomment release badge
  [#8](https://github.com/dp-next/template-project/pull/8) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([45c7cb4](https://github.com/dp-next/template-project/commit/45c7cb4e029ed09629beceb378f404e67a18589c))

## [0.2.0](https://github.com/dp-next/template-project/compare/0.1.0..0.2.0) - 2026-08-25

### ✨ Features

- Add a `now` date stamp to the `dp-next.yaml`
  [#4](https://github.com/dp-next/template-project/pull/4) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([191c1cf](https://github.com/dp-next/template-project/commit/191c1cf2b23c67e75f116695cbdd92fb073bcfa9))

### ♻️ Refactor

- Clarify the actual next steps that the creator takes
  [#6](https://github.com/dp-next/template-project/pull/6) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2241d21](https://github.com/dp-next/template-project/commit/2241d21aec1748851590602f9afbfd860ce3efd2))

### 📝 Documentation

- Move Lychee install instructions to contributing
  [#7](https://github.com/dp-next/template-project/pull/7) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ee5a060](https://github.com/dp-next/template-project/commit/ee5a0601635a2115eb710af3d2b924bfb7ab6127))

### ❤️ New contributors

- `@pre-commit-ci[bot]` started making automated contributions

## [0.1.0] - 2026-08-07

### ✨ Features

- Add start of a template project by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a10da61](https://github.com/dp-next/template-project/commit/a10da618f401d3c366f942aecd5262118d037b71))

### 🐛 Fixes

- Use `*` to ignore everything but the README files by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([234ad89](https://github.com/dp-next/template-project/commit/234ad8995d243a592aa76db28e28fe1940f62315))

### ♻️ Refactor

- Keep `sandbox.qmd` simple by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ee7cb95](https://github.com/dp-next/template-project/commit/ee7cb951921c5f9f66d449e18ee5963810eedc21))

### 📝 Documentation

- Remove some old text from guide by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([73db80c](https://github.com/dp-next/template-project/commit/73db80c83ab9f8ff21d91e064f4415990396ccf3))

### 💄 Styling

- Use `##` in paper Quarto file by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([54997e0](https://github.com/dp-next/template-project/commit/54997e0746ffb028c19e3739502912ed95c3371b))
- Reformat Markdown files by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e0675c4](https://github.com/dp-next/template-project/commit/e0675c45f86e7605589100b3cb27dbb48995e3a5))

### 👷 CI/CD

- Add workflows for checks, releases, etc by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9a40db4](https://github.com/dp-next/template-project/commit/9a40db45ce4454d29cf8ccddf07bfad266d80969))

### 👩‍💻 Miscellaneous

- Create template setup from t-squared by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([dc75771](https://github.com/dp-next/template-project/commit/dc75771423c8a26a1b7117c88007912459356f25))
- Remove formatting of non-existent `qmd.jinja` files by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([efcb0b4](https://github.com/dp-next/template-project/commit/efcb0b4f357ab47f586fc35328e59b6ac292d1f4))
- Build contributor file by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([265dbc6](https://github.com/dp-next/template-project/commit/265dbc656d080fce42447e669860e11d562f379f))
- Comment out rumdl, it mangles div blocks by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0c83105](https://github.com/dp-next/template-project/commit/0c8310535ed7b6433e6f9354d050fe814b0964fa))

### ❤️ New contributors

- `@github-actions[bot]` started making automated contributions

- [`@lwjohnst86`](https://github.com/lwjohnst86) made their first contribution
