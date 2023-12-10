class Item < ApplicationRecord
    default_scope {where(deleted_at: nil)}

    def soft_delete
        self.deleted_at = DateTime.now.to_i
    end

    def restore
        self.deleted_at = nil
    end
end
