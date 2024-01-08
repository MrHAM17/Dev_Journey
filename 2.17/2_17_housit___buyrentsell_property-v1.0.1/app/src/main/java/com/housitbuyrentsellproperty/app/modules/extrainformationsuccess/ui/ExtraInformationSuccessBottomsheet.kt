package com.housitbuyrentsellproperty.app.modules.extrainformationsuccess.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.housitbuyrentsellproperty.app.databinding.BottomsheetExtraInformationSuccessBinding
import com.housitbuyrentsellproperty.app.modules.extrainformationsuccess.`data`.viewmodel.ExtraInformationSuccessVM
import kotlin.String
import kotlin.Unit

class ExtraInformationSuccessBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetExtraInformationSuccessBinding>(R.layout.bottomsheet_extra_information_success)
    {
  private val viewModel: ExtraInformationSuccessVM by viewModels<ExtraInformationSuccessVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.extraInformationSuccessVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "EXTRA_INFORMATION_SUCCESS_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): ExtraInformationSuccessBottomsheet {
      val fragment = ExtraInformationSuccessBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
