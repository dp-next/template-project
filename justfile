@_default:
  just --list --unsorted

# Run all build-related recipes in the justfile
run-all: update-quarto-theme install-deps check-all format-md test-all build-all

# Run all check-related recipes
check-all: check-spelling check-urls

# (This is kept in case we add more tests/questions)
# Run all test-related recipes
test-all: test

# Run all build-related recipes
build-all: build-contributors build-website build-readme

# List all TODO items in the repository
list-todos:
  grep -R -n \
  --exclude-dir=.quarto \
  --exclude-dir=.git \
  --exclude-dir=.rumdl_cache \
  --exclude-dir=template \
  --exclude-dir=_temp \
  --exclude-dir=_site \
  --exclude=justfile \
  --exclude=copier.yaml \
  "TODO" .

# Install the pre-commit hooks
install-precommit:
  uvx pre-commit install
  uvx pre-commit autoupdate
  uvx pre-commit run --all-files

# Install dependencies
install-deps:
  uv tool install --with jinja2-time copier

# Update (or add if not present) the Quarto dp-next-theme extension
update-quarto-theme:
  quarto update dp-next/dp-next-theme --no-prompt

# Check for spelling errors in files
check-spelling:
  uvx typos --config .config/typos.toml

# Check that URLs work
check-urls:
  lychee . \
    --verbose \
    --extensions md,qmd,jinja \
    --exclude "github\.com" \
    --exclude-path "_badges.qmd"

# Format Markdown files
format-md:
  # Use both rumdl and panache, for different purposes
  # uvx rumdl fmt --silent
  # `includes` option doesn't work with Jinja files, so do manually
  # uvx rumdl fmt --silent **/*.md.jinja
  uvx --from panache-cli panache format . --quiet

# Test template creation
test:
  sh ./test-template.sh

# Test template creation through use of the question approach
test-manual:
  mkdir -p _temp/manual
  rm -rf _temp/manual/test-template
  uvx copier copy --trust -r HEAD . _temp/manual/test-template

# Clean up any leftover and temporary build files
cleanup:
  rm -rf _temp

# Re-build the README file from the Quarto version
build-readme:
  uvx --from quarto quarto render README.qmd --to gfm

# Generate a Quarto include file with the contributors
build-contributors:
  sh ./tools/get-contributors.sh dp-next/template-project > docs/includes/_contributors.qmd

# Build the website using Quarto
build-website:
  uvx --from quarto quarto render

# Preview the website with automatic reload on changes
preview-website:
  uvx --from quarto quarto preview

# Check for and apply updates from the template
update-from-template:
  uvx copier update --defaults

# Reset repo changes to match the template
reset-from-template:
  uvx copier recopy --defaults
