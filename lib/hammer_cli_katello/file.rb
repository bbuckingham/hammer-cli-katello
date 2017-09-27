module HammerCLIKatello
  class FileCommand < HammerCLIKatello::Command
    resource :file_units

    class ListCommand < HammerCLIKatello::ListCommand
      output do
        field :id, _("ID")
        field :name, _("Name")
      end

      build_options do |o|
        o.expand.including(:products, :organizations, :content_views)
      end
    end

    class InfoCommand < HammerCLIKatello::InfoCommand
      output do
        field :id, _("ID")
        field :name, _("Name")
        field :path, _("Path")
      end

      build_options
    end

    autoload_subcommands
  end
end
