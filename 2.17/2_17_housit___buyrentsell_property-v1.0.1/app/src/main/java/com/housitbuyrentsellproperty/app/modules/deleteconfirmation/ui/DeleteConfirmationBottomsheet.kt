package com.housitbuyrentsellproperty.app.modules.deleteconfirmation.ui

import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.housitbuyrentsellproperty.app.databinding.BottomsheetDeleteConfirmationBinding
import com.housitbuyrentsellproperty.app.modules.deleteconfirmation.`data`.viewmodel.DeleteConfirmationVM
import kotlin.String
import kotlin.Unit

class DeleteConfirmationBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetDeleteConfirmationBinding>(R.layout.bottomsheet_delete_confirmation)
    {
  private val viewModel: DeleteConfirmationVM by viewModels<DeleteConfirmationVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.deleteConfirmationVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "DELETE_CONFIRMATION_BOTTOMSHEET"

  }
}
