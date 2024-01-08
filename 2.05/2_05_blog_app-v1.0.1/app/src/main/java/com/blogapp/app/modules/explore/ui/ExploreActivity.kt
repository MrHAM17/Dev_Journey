package com.blogapp.app.modules.explore.ui

import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseActivity
import com.blogapp.app.databinding.ActivityExploreBinding
import com.blogapp.app.modules.explore.`data`.model.Stories1RowModel
import com.blogapp.app.modules.explore.`data`.viewmodel.ExploreVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ExploreActivity : BaseActivity<ActivityExploreBinding>(R.layout.activity_explore) {
  private val viewModel: ExploreVM by viewModels<ExploreVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val storiesAdapter = StoriesAdapter(viewModel.storiesList.value?:mutableListOf())
    binding.recyclerStories.adapter = storiesAdapter
    storiesAdapter.setOnItemClickListener(
    object : StoriesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Stories1RowModel) {
        onClickRecyclerStories(view, position, item)
      }
    }
    )
    viewModel.storiesList.observe(this) {
      storiesAdapter.updateData(it)
    }
    binding.exploreVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerStories(
    view: View,
    position: Int,
    item: Stories1RowModel
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
      const val TAG: String = "EXPLORE_ACTIVITY"

    }
  }
