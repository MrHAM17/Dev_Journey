package com.hiredjobsearch.app.modules.confirmation.ui

import android.content.Context
import android.os.Bundle
import androidx.fragment.app.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseDialogFragment
import com.hiredjobsearch.app.databinding.DialogConfirmationBinding
import com.hiredjobsearch.app.modules.confirmation.`data`.viewmodel.ConfirmationVM
import com.hiredjobsearch.app.modules.homecontainer.ui.HomeContainerActivity
import kotlin.String
import kotlin.Unit

class ConfirmationDialog :
    BaseDialogFragment<DialogConfirmationBinding>(R.layout.dialog_confirmation) {
  private val viewModel: ConfirmationVM by viewModels<ConfirmationVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.confirmationVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnAgreeAndContinue.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      dismiss()
    }
  }

  companion object {
    const val TAG: String = "CONFIRMATION_DIALOG"


    fun getInstance(bundle: Bundle?): ConfirmationDialog {
      val fragment = ConfirmationDialog()
      fragment.arguments = bundle
      return fragment
    }
  }
}
