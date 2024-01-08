package com.ecommerce.app.modules.searchresultnodatafound.ui

import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivitySearchResultNoDataFoundBinding
import com.ecommerce.app.modules.searchresultnodatafound.`data`.model.SpinnerBottomiconModel
import com.ecommerce.app.modules.searchresultnodatafound.`data`.viewmodel.SearchResultNoDataFoundVM
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class SearchResultNoDataFoundActivity :
    BaseActivity<ActivitySearchResultNoDataFoundBinding>(R.layout.activity_search_result_no_data_found)
    {
  private val viewModel: SearchResultNoDataFoundVM by viewModels<SearchResultNoDataFoundVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    viewModel.spinnerBottomiconList.value = mutableListOf(
    SpinnerBottomiconModel("Item1"),
    SpinnerBottomiconModel("Item2"),
    SpinnerBottomiconModel("Item3"),
    SpinnerBottomiconModel("Item4"),
    SpinnerBottomiconModel("Item5")
    )
    val spinnerBottomiconAdapter =
    SpinnerBottomiconAdapter(this,R.layout.spinner_item,viewModel.spinnerBottomiconList.value?:
    mutableListOf())
    binding.spinnerBottomicon.adapter = spinnerBottomiconAdapter
    binding.searchResultNoDataFoundVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
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
      const val TAG: String = "SEARCH_RESULT_NO_DATA_FOUND_ACTIVITY"

    }
  }
