require_dependency "cambios/application_controller"

module Cambios

  class MainController < ApplicationController

    def index

      unless File.exists? File.join(Rails.root, 'config', 'cambios.yml')
        File.open(File.join(Rails.root, 'config', 'cambios.yml'), 'w') { |file| file.write("---\n- :version: In Progress\n# - :version: 0.0.0\n#   :changes:\n#   - :jira: KEY-123\n#     :description: The name of the jira \n#   - :description: A feature/bug-fix that doesn't have a jira ticket\n  \n") }
      end

      @versions = YAML.load_file(File.join(Rails.root, 'config', 'cambios.yml'))
    end
  end
end
