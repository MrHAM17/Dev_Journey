package com.comforthotelbookingapp.app.modules.searchtype.ui

import androidx.fragment.app.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseFragment
import com.comforthotelbookingapp.app.databinding.FragmentSearchTypeBinding
import com.comforthotelbookingapp.app.modules.searchtype.`data`.viewmodel.SearchTypeVM
import kotlin.String
import kotlin.Unit

class SearchTypeFragment : BaseFragment<FragmentSearchTypeBinding>(R.layout.fragment_search_type) {
  private val viewModel: SearchTypeVM by viewModels<SearchTypeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.searchTypeVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SEARCH_TYPE_FRAGMENT"

  }
}
