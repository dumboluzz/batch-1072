require_relative "../views/sessions_view"

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @sessions_view = SessionsView.new
  end

  def login
    # ask for username
    username = @sessions_view.ask_for_stuff("username")
    # ask for password
    password = @sessions_view.ask_for_stuff("password")
    # get the employee with the username
    employee = @employee_repository.find_by_username(username)
    # check if the password is correct
    return employee if employee && employee.password == password
    # if not retry the login
    @sessions_view.wrong_credentials

    login
  end
end
