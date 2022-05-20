module ScheduleHelper
      # true・falseを文字に変換する
  def convert_boolean_to_character(converting_target)
    converting_target ? '○' : '×'
  end
end
