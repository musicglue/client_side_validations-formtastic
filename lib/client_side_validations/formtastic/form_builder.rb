module ClientSideValidations
  module Formtastic
    module FormBuilder
      extend ActiveSupport::Concern

      included do#
        include ClassMethods
      end

      module ClassMethods
        def client_side_form_settings(options, form_helper)
          {
            :type => self.class.to_s,
            :inline_error_class => ::Formtastic::FormBuilder.default_inline_error_class
          }
        end
      end

    end
  end
end

Formtastic::FormBuilder.send(:include, ClientSideValidations::Formtastic::FormBuilder)

