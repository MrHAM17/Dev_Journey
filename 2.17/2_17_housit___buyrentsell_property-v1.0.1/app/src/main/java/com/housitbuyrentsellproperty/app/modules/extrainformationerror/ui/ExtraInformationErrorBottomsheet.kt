package com.housitbuyrentsellproperty.app.modules.extrainformationerror.ui

import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.housitbuyrentsellproperty.app.databinding.BottomsheetExtraInformationErrorBinding
import com.housitbuyrentsellproperty.app.modules.extrainformationerror.`data`.viewmodel.ExtraInformationErrorVM
import kotlin.String
import kotlin.Unit

class ExtraInformationErrorBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetExtraInformationErrorBinding>(R.layout.bottomsheet_extra_information_error)
    {
  private val viewModel: ExtraInformationErrorVM by viewModels<ExtraInformationErrorVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.extraInformationErrorVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "EXTRA_INFORMATION_ERROR_BOTTOMSHEET"

  }
}
