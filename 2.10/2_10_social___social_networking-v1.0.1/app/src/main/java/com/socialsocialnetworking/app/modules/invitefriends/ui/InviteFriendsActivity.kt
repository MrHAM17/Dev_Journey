package com.socialsocialnetworking.app.modules.invitefriends.ui

import android.view.View
import androidx.activity.viewModels
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.base.BaseActivity
import com.socialsocialnetworking.app.databinding.ActivityInviteFriendsBinding
import com.socialsocialnetworking.app.modules.invitefriends.`data`.model.FriendlistRowModel
import com.socialsocialnetworking.app.modules.invitefriends.`data`.viewmodel.InviteFriendsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class InviteFriendsActivity :
    BaseActivity<ActivityInviteFriendsBinding>(R.layout.activity_invite_friends) {
  private val viewModel: InviteFriendsVM by viewModels<InviteFriendsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val friendListAdapter = FriendListAdapter(viewModel.friendListList.value?:mutableListOf())
    binding.recyclerFriendList.adapter = friendListAdapter
    friendListAdapter.setOnItemClickListener(
    object : FriendListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FriendlistRowModel) {
        onClickRecyclerFriendList(view, position, item)
      }
    }
    )
    viewModel.friendListList.observe(this) {
      friendListAdapter.updateData(it)
    }
    binding.inviteFriendsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageClose.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerFriendList(
    view: View,
    position: Int,
    item: FriendlistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "INVITE_FRIENDS_ACTIVITY"

  }
}
