module MyCustomHelper
  def my_number_format(number)
    number_to_currency(number, separator: ",", format: '%n')
  end
end
