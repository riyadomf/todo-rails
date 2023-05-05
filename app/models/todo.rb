class Todo < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    
    VALID_STATUSES = ['Next Up', 'In Progress', 'Completed']
    VALID_PRIORITIES = ['Low', 'Medium', 'High']

    validates :status, inclusion: { in: VALID_STATUSES }
    validates :priority, inclusion: { in: VALID_PRIORITIES }
end
