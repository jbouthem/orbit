require "test_helper"

class SnapshotInterfaceTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:jill)
  end

  test "snapshot interface" do
    log_in_as(@user)
    get root_path
    assert_select 'div.pagination'

    # Invalid pagination
    assert_no_difference 'Snapshot.count' do
      post snapshots_path, params: { snapshot: { content: ""} }
    end
    assert_select 'div#error_explanation'
    assert_select 'a[href=?]', '/?page=2'   # correct pagination link

    # Valid pagination
    content = "Great demo!"
    assert_difference 'Snapshot.count', 1 do
      post snapshots_path, params: { snapshot: { content: content } }
    end
    assert_redirected_to root_url
    follow_redirect!
    select 'div#error_explanation'
    assert_match content, response.body

    # Delete post
    assert_select 'a', text: 'delete'
    first_snapshot = @user.snapshots.paginate(page: 1).first 
    assert_difference 'Snapshot.count', -1 do
      delete snapshot_path(first_snapshot)
    end

    # Visit different user (no delete links)
    get user_path(users(:jean))
    assert_select 'a', text: 'delete', count: 0
  end
end
