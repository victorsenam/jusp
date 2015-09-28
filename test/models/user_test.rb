require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Test", email: "test@example.com",
                      email_confirmation: "test@example.com",
                      problems_solved: 107, password: "blabli",
                      password_confirmation: "blabli", institute: "usp")
  end

  test "user is valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = ""
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.name = "a" * 31
    assert_not @user.valid?
  end

  test "name should be unique" do
    dup_user = @user.dup
    dup_user.name = @user.name.upcase
    @user.save
    assert_not dup_user.valid?
  end

  test "email should be present" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "email should be confirmed" do
    @user.email_confirmation = ""
    assert_not @user.valid?
  end

  test "password should be present" do
    @user.password = @user.password_confirmation = ""
    assert_not @user.valid?
  end

  test "password should have minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

  test "password should be confirmed" do
    @user.password_confirmation = ""
    assert_not @user.valid?
  end

end
