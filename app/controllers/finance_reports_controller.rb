class FinanceReportsController < ApplicationController

def index

@baby_classes = BabyClass.joins(:fee_payments)
@pre_primary_ones = PrePrimaryOne.joins(:fee_payments)
@pre_primary_twos = PrePrimaryTwo.joins(:fee_payments)
@grade_ones = GradeOne.joins(:fee_payments)
@grade_twos = GradeTwo.joins(:fee_payments)
@grade_threes = GradeThree.joins(:fee_payments)
@standard_fours = StandardFour.joins(:fee_payments)
@standard_fives = StandardFive.joins(:fee_payments)
@standard_sixes = StandardSix.joins(:fee_payments)
@standard_sevens = StandardSeven.joins(:fee_payments)
@standard_eights = StandardEight.joins(:fee_payments)
@archives = Archive.joins(:fee_payments)
end
end
