# Cambios

A gem that displays a yaml-based change log file.

# Usage

Add the following the your Gemfile and run bundler.

```
gem 'cambios'
```

Add the following to your config/routes.rb

```
mount Cambios::Engine => "/change_log"
```

# Info

Cambios will read a yml file (cambios.yml) from your app's config folder, parse it, and display the entries by version. The cambios.yml format is as follows:

```
---
- :version: In Progress
- :version: 0.1.0
  :changes:
    - :jira: KEY-123
      :description: Implemented a new feature
    - :description: Cleaned up the documentation
    - :description: Did some other cool stuff

```
