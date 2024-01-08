package com.shopsieecommerceapp.app.modules.singleevent.ui

import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.shopsieecommerceapp.app.databinding.BottomsheetSingleEventBinding
import com.shopsieecommerceapp.app.modules.singleevent.`data`.viewmodel.SingleEventVM
import kotlin.String
import kotlin.Unit

class SingleEventBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetSingleEventBinding>(R.layout.bottomsheet_single_event)
    {
  private val viewModel: SingleEventVM by viewModels<SingleEventVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.singleEventVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SINGLE_EVENT_BOTTOMSHEET"

  }
}
