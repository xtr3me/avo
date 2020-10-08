
module Avo
  module Fields
    module ColorPicker
      class ToolProvider
        ROOT_PATH = Pathname.new(File.join(__dir__))

        def self.boot
          Avo::App.initializing do
            Avo::App.script 'color_picker_field.js', "#{File.dirname(__FILE__)}/frontend"
          end
        end
      end
    end
  end
end
