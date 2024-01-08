package com.housitbuyrentsellproperty.app.modules.editsuccess.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.housitbuyrentsellproperty.app.databinding.BottomsheetEditSuccessBinding
import com.housitbuyrentsellproperty.app.modules.editsuccess.`data`.viewmodel.EditSuccessVM
import kotlin.String
import kotlin.Unit

class EditSuccessBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetEditSuccessBinding>(R.layout.bottomsheet_edit_success)
    {
  private val viewModel: EditSuccessVM by viewModels<EditSuccessVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.editSuccessVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "EDIT_SUCCESS_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): EditSuccessBottomsheet {
      val fragment = EditSuccessBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
