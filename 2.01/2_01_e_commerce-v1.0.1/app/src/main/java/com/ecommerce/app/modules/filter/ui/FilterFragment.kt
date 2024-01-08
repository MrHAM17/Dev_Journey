package com.ecommerce.app.modules.filter.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseFragment
import com.ecommerce.app.databinding.FragmentFilterBinding
import com.ecommerce.app.modules.filter.`data`.viewmodel.FilterVM
import com.ecommerce.app.modules.searchresult.ui.SearchResultActivity
import kotlin.String
import kotlin.Unit

class FilterFragment : BaseFragment<FragmentFilterBinding>(R.layout.fragment_filter) {
  private val viewModel: FilterVM by viewModels<FilterVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.filterVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnApply.setOnClickListener {
      val destIntent = SearchResultActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "FILTER_FRAGMENT"


    fun getInstance(bundle: Bundle?): FilterFragment {
      val fragment = FilterFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
