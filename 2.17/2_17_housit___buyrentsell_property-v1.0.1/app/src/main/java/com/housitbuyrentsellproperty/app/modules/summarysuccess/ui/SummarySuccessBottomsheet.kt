package com.housitbuyrentsellproperty.app.modules.summarysuccess.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.housitbuyrentsellproperty.app.databinding.BottomsheetSummarySuccessBinding
import com.housitbuyrentsellproperty.app.modules.summarysuccess.`data`.viewmodel.SummarySuccessVM
import kotlin.String
import kotlin.Unit

class SummarySuccessBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetSummarySuccessBinding>(R.layout.bottomsheet_summary_success)
    {
  private val viewModel: SummarySuccessVM by viewModels<SummarySuccessVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.summarySuccessVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SUMMARY_SUCCESS_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): SummarySuccessBottomsheet {
      val fragment = SummarySuccessBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
