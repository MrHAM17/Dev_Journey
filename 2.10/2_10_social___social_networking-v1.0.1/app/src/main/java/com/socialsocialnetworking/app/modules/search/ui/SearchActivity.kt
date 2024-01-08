package com.socialsocialnetworking.app.modules.search.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.appcomponents.base.BaseActivity
import com.socialsocialnetworking.app.databinding.ActivitySearchBinding
import com.socialsocialnetworking.app.modules.search.`data`.model.RecentsearchesRowModel
import com.socialsocialnetworking.app.modules.search.`data`.viewmodel.SearchVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchActivity : BaseActivity<ActivitySearchBinding>(R.layout.activity_search) {
  private val viewModel: SearchVM by viewModels<SearchVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val recentSearchesAdapter =
    RecentSearchesAdapter(viewModel.recentSearchesList.value?:mutableListOf())
    binding.recyclerRecentSearches.adapter = recentSearchesAdapter
    recentSearchesAdapter.setOnItemClickListener(
    object : RecentSearchesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : RecentsearchesRowModel) {
        onClickRecyclerRecentSearches(view, position, item)
      }
    }
    )
    viewModel.recentSearchesList.observe(this) {
      recentSearchesAdapter.updateData(it)
    }
    binding.searchVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerRecentSearches(
    view: View,
    position: Int,
    item: RecentsearchesRowModel
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
      const val TAG: String = "SEARCH_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, SearchActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
