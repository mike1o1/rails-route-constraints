module Constraints
  class UsernameRouteConstrainer
    def matches?(request)
      param_id = request.params[:id]
      
      return false if param_id.blank?

      return false if is_static_page?(param_id)

      User.where(username: param_id).any?
    end

    private

      def is_static_page?(param_id)
        HighVoltage::page_ids.include?(param_id)
      end
  end
end