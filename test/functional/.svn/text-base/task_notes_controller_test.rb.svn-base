require File.dirname(__FILE__) + '/../test_helper'

class TaskNotesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:task_notes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_task_note
    assert_difference('TaskNote.count') do
      post :create, :task_note => { }
    end

    assert_redirected_to task_note_path(assigns(:task_note))
  end

  def test_should_show_task_note
    get :show, :id => task_notes(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => task_notes(:one).id
    assert_response :success
  end

  def test_should_update_task_note
    put :update, :id => task_notes(:one).id, :task_note => { }
    assert_redirected_to task_note_path(assigns(:task_note))
  end

  def test_should_destroy_task_note
    assert_difference('TaskNote.count', -1) do
      delete :destroy, :id => task_notes(:one).id
    end

    assert_redirected_to task_notes_path
  end
end
