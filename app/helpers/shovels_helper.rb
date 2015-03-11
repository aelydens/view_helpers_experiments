module ShovelsHelper
  def my_number_format(number)
    number_to_currency(number, separator: "-- This is a helper --", format: '%n')
  end
end
