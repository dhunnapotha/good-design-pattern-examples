require_relative 'subject'
require_relative 'employee'
require_relative 'payroll'
require_relative 'tax_man'

fred = Employee.new('Fred Flintstone', 'Crane Operator', 30000)

payroll = Payroll.new
fred.add_watcher(payroll)

tax_man = TaxMan.new
fred.add_watcher(tax_man)

# Give Fred a raise
fred.salary = 35000
