class TeachingPeriod < ActiveRecord::Base
    has_many :units

    def add_teaching_period (start_date, end_date)
        period = self
        period.period = self
        period.start_date = start_date
        period.end_date = end_date
        period.save!
        period
    end

    def all_teaching_periods
        TeachingPeriod.all
    end

    def find_specific_period(id)
        TeachingPeriod.find_by(id: id)
    end
end
