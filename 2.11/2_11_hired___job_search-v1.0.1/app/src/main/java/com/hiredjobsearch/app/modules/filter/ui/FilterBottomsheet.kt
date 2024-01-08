package com.hiredjobsearch.app.modules.filter.ui

import androidx.fragment.app.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.hiredjobsearch.app.databinding.BottomsheetFilterBinding
import com.hiredjobsearch.app.modules.filter.`data`.viewmodel.FilterVM
import com.hiredjobsearch.app.modules.homecontainer.ui.HomeContainerActivity
import kotlin.String
import kotlin.Unit

class FilterBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetFilterBinding>(R.layout.bottomsheet_filter) {
  private val viewModel: FilterVM by viewModels<FilterVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.filterVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnApplyFilter.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      dismiss()
    }
    binding.imageClose.setOnClickListener {
      dismiss()
    }
  }

  companion object {
    const val TAG: String = "FILTER_BOTTOMSHEET"

  }
}
