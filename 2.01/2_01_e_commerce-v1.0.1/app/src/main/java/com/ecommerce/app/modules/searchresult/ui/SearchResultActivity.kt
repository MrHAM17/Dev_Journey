package com.ecommerce.app.modules.searchresult.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivitySearchResultBinding
import com.ecommerce.app.extensions.loadFragment
import com.ecommerce.app.modules.filter.ui.FilterFragment
import com.ecommerce.app.modules.searchresult.`data`.model.SearchresultRowModel
import com.ecommerce.app.modules.searchresult.`data`.model.SpinnerDownIconModel
import com.ecommerce.app.modules.searchresult.`data`.viewmodel.SearchResultVM
import com.ecommerce.app.modules.sortby.ui.SortByActivity
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SearchResultActivity :
    BaseActivity<ActivitySearchResultBinding>(R.layout.activity_search_result) {
  private val viewModel: SearchResultVM by viewModels<SearchResultVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerDownIconList.value = mutableListOf(
    SpinnerDownIconModel("Item1"),
    SpinnerDownIconModel("Item2"),
    SpinnerDownIconModel("Item3"),
    SpinnerDownIconModel("Item4"),
    SpinnerDownIconModel("Item5")
    )
    val spinnerDownIconAdapter =
    SpinnerDownIconAdapter(this,R.layout.spinner_item,viewModel.spinnerDownIconList.value?:
    mutableListOf())
    binding.spinnerDownIcon.adapter = spinnerDownIconAdapter
    val searchResultAdapter =
    SearchResultAdapter(viewModel.searchResultList.value?:mutableListOf())
    binding.recyclerSearchResult.adapter = searchResultAdapter
    searchResultAdapter.setOnItemClickListener(
    object : SearchResultAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SearchresultRowModel) {
        onClickRecyclerSearchResult(view, position, item)
      }
    }
    )
    viewModel.searchResultList.observe(this) {
      searchResultAdapter.updateData(it)
    }
    binding.searchResultVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.imageFilter.setOnClickListener {
      val destFragment = FilterFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = FilterFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
    }
    binding.imageShortIcon.setOnClickListener {
      val destIntent = SortByActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerSearchResult(
    view: View,
    position: Int,
    item: SearchresultRowModel
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
      const val TAG: String = "SEARCH_RESULT_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, SearchResultActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
