package com.shopsieecommerceapp.app.modules.myfriends.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseActivity
import com.shopsieecommerceapp.app.databinding.ActivityMyFriendsBinding
import com.shopsieecommerceapp.app.modules.myfriends.`data`.model.MyfriendsRowModel
import com.shopsieecommerceapp.app.modules.myfriends.`data`.viewmodel.MyFriendsVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class MyFriendsActivity : BaseActivity<ActivityMyFriendsBinding>(R.layout.activity_my_friends) {
  private val viewModel: MyFriendsVM by viewModels<MyFriendsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val myFriendsAdapter = MyFriendsAdapter(viewModel.myFriendsList.value?:mutableListOf())
    binding.recyclerMyFriends.adapter = myFriendsAdapter
    myFriendsAdapter.setOnItemClickListener(
    object : MyFriendsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : MyfriendsRowModel) {
        onClickRecyclerMyFriends(view, position, item)
      }
    }
    )
    viewModel.myFriendsList.observe(this) {
      myFriendsAdapter.updateData(it)
    }
    binding.myFriendsVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.btnButtonIcon.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerMyFriends(
    view: View,
    position: Int,
    item: MyfriendsRowModel
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
      const val TAG: String = "MY_FRIENDS_ACTIVITY"

    }
  }
