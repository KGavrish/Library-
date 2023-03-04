module Validations
    private

    def check_instance(param, class_instance, main_class)
        raise ::StandardError, "#{param} wrong instance" unless class_instance.instance_of?(main_class)
    end
end
