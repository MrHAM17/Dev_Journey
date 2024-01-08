package com.tikpikshortvideosocialnetworking.app.modules.followers.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentFollowersBinding
import com.tikpikshortvideosocialnetworking.app.modules.followers.`data`.model.FollowersRowModel
import com.tikpikshortvideosocialnetworking.app.modules.followers.`data`.viewmodel.FollowersVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class FollowersFragment : BaseFragment<FragmentFollowersBinding>(R.layout.fragment_followers) {
  private val viewModel: FollowersVM by viewModels<FollowersVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val followersAdapter = FollowersAdapter(viewModel.followersList.value?:mutableListOf())
    binding.recyclerFollowers.adapter = followersAdapter
    followersAdapter.setOnItemClickListener(
    object : FollowersAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FollowersRowModel) {
        onClickRecyclerFollowers(view, position, item)
      }
    }
    )
    viewModel.followersList.observe(requireActivity()) {
      followersAdapter.updateData(it)
    }
    binding.followersVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerFollowers(
    view: View,
    position: Int,
    item: FollowersRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "FOLLOWERS_FRAGMENT"

  }
}
