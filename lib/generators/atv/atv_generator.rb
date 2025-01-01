require "rails/generators/named_base"

class AtvGenerator < Rails::Generators::NamedBase # :nodoc:
  source_root File.expand_path("templates", __dir__)

  def copy_view_files
    @attribute = attribute_value(controller_name)
    template "controller.js", "app/javascript/controllers/#{controller_name}_atv.js"
  end

  private
    def controller_name
      name.underscore.gsub(/_atv$/, "")
    end

    def attribute_value(controller_name)
      controller_name.gsub(/\//, "--").gsub("_", "-")
    end
end
