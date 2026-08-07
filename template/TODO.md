# For admin/repo creator

Review the [template guide](https://t-squared.seedcase-project.org/docs/guide/)
for more information on how to use the template and the next steps after copying
the project.

Run `git init -b main` to create the project as a Git repository.

Run `just list-todos` and complete all the TODO items.

Optionally install the [`spaid`](https://github.com/seedcase-project/spaid) CLI
tool and run these setup steps:

- `spaid_gh_create_repo_from_local -h` to create a GitHub repository from the
  local repository.
- `spaid_gh_set_repo_settings -h` to set the repository settings.
- `spaid_gh_ruleset_basic_protect_main -h` to protect the main branch.

Install or add the
[add-to-board-token](https://github.com/apps/add-to-board-token) GitHub App:

- Connect the `ADD_TO_BOARD_TOKEN` secret for the GitHub App (or create one if
  you haven't yet) to the repository.
- Connect the `ADD_TO_BOARD_APP_ID` variable of the GitHub Apps' IDs (or create
  the variable if you haven't yet) to the repository.

# For researcher

- Review all TODO items in this file and throughout the project files that have
  a `TODO` tag.
- Review the README files to better understand the file and folder structure.
- Update the main README file with a description of the project (one of the TODO
  items).
- Fill out the `dp-next.yaml` file with information about this project. This
  file helps the managers and coordinators to keep track of what's going on and
  what the progress is for all the projects.
