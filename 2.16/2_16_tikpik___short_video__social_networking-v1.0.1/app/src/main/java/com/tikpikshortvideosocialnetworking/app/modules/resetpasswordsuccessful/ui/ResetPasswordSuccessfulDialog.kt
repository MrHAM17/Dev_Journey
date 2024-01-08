package com.tikpikshortvideosocialnetworking.app.modules.resetpasswordsuccessful.ui

import android.content.Context
import android.os.Bundle
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseDialogFragment
import com.tikpikshortvideosocialnetworking.app.databinding.DialogResetPasswordSuccessfulBinding
import com.tikpikshortvideosocialnetworking.app.modules.resetpasswordsuccessful.`data`.viewmodel.ResetPasswordSuccessfulVM
import kotlin.String
import kotlin.Unit

class ResetPasswordSuccessfulDialog :
    BaseDialogFragment<DialogResetPasswordSuccessfulBinding>(R.layout.dialog_reset_password_successful)
    {
  private val viewModel: ResetPasswordSuccessfulVM by viewModels<ResetPasswordSuccessfulVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.resetPasswordSuccessfulVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "RESET_PASSWORD_SUCCESSFUL_DIALOG"


    fun getInstance(bundle: Bundle?): ResetPasswordSuccessfulDialog {
      val fragment = ResetPasswordSuccessfulDialog()
      fragment.arguments = bundle
      return fragment
    }
  }
}
