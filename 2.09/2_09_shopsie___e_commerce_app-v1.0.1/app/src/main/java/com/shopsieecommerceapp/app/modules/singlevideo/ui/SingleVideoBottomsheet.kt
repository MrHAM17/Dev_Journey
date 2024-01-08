package com.shopsieecommerceapp.app.modules.singlevideo.ui

import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.shopsieecommerceapp.app.databinding.BottomsheetSingleVideoBinding
import com.shopsieecommerceapp.app.modules.singlevideo.`data`.viewmodel.SingleVideoVM
import kotlin.String
import kotlin.Unit

class SingleVideoBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetSingleVideoBinding>(R.layout.bottomsheet_single_video)
    {
  private val viewModel: SingleVideoVM by viewModels<SingleVideoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.singleVideoVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SINGLE_VIDEO_BOTTOMSHEET"

  }
}
