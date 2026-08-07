#!/usr/bin/env bash

# Needs no arguments.

# Set up variables and functions for the test -----
test_dir="$(pwd)/_temp/auto/"
template_dir="$(pwd)"

# Needs these arguments:
#
# 1. Template directory
# 2. Destination directory
copy () {
  # '-r HEAD' means use the HEAD, including uncommitted changes.
  uvx copier copy $1 $2 \
    -r HEAD \
    --defaults \
    --overwrite
}

# Pre-test setup -----
# Remove the leftover directory from previous runs
rm -rf $test_dir
mkdir -p $test_dir

# Check initial creation -----
# Any step that fails will exit the script with an error and not continue
echo "Testing copy for new projects -----------"
(
  cd $test_dir &&
    copy $template_dir $test_dir &&
    git init -b main &&
    git add . &&
    git commit --quiet -m "test: initial copy" &&
    # Check that recopy works -----
    echo "Testing recopy -----------" &&
    rm .gitignore &&
    git add . &&
    git commit --quiet -m "test: preparing to recopy from the template" &&
    uvx copier recopy \
      -r HEAD \
      --defaults \
      --overwrite &&
    # Check that copying onto an existing project works -----
    echo "Testing copy in existing projects -----------" &&
    rm .gitignore .copier-answers.yml &&
    git add . &&
    git commit --quiet -m "test: preparing to copy onto an existing project" &&
    copy $template_dir $test_dir
)
