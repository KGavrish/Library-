module Validations
    private

    def validate_instance(param, class_instance, main_class)
        raise ::StandardError, "#{param} wrong instance" unless class_instance.instance_of?(main_class)
    end

    def check_emptiness(*args)
        raise ::ArgumentError if args.empty?
    end
end
