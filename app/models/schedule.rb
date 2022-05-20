class Schedule < ApplicationRecord
    validates :title, presence:true
    validates :start_at, presence:true
    validates :finish_at, presence:true
    validate :date_before_start
    validate :date_before_finish

    def date_before_start
        return if start_at.blank?
        errors.add(:start_at, "は今日以降のものを選択してください") if start_at < Date.today-1
    end
    
    def date_before_finish
        return if finish_at.blank? || start_at.blank?
        errors.add(:finish_at, "は開始日以降のものを選択してください") if finish_at < start_at
    end
end
