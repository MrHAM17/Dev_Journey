package com.tikpikshortvideosocialnetworking.app.modules.findfriends.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityFindFriendsBinding
import com.tikpikshortvideosocialnetworking.app.modules.findfriends.`data`.model.FindfriendsRowModel
import com.tikpikshortvideosocialnetworking.app.modules.findfriends.`data`.viewmodel.FindFriendsVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class FindFriendsActivity : BaseActivity<ActivityFindFriendsBinding>(R.layout.activity_find_friends)
    {
  private val viewModel: FindFriendsVM by viewModels<FindFriendsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val findFriendsAdapter =
    FindFriendsAdapter(viewModel.findFriendsList.value?:mutableListOf())
    binding.recyclerFindFriends.adapter = findFriendsAdapter
    findFriendsAdapter.setOnItemClickListener(
    object : FindFriendsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FindfriendsRowModel) {
        onClickRecyclerFindFriends(view, position, item)
      }
    }
    )
    viewModel.findFriendsList.observe(this) {
      findFriendsAdapter.updateData(it)
    }
    binding.findFriendsVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerFindFriends(
    view: View,
    position: Int,
    item: FindfriendsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
      override fun onQueryTextSubmit(p0 : String) : Boolean {
        // Performs search when user hit
        // the search button on the keyboard
        return false
      }
      override fun onQueryTextChange(p0 : String) : Boolean {
        // Start filtering the list as user
        // start entering the characters
        return false
      }
      })
    }

    companion object {
      const val TAG: String = "FIND_FRIENDS_ACTIVITY"

    }
  }
