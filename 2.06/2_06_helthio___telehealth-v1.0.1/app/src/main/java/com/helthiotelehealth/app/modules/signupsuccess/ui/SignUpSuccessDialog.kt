package com.helthiotelehealth.app.modules.signupsuccess.ui

import android.content.Context
import android.os.Bundle
import androidx.fragment.app.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseDialogFragment
import com.helthiotelehealth.app.databinding.DialogSignUpSuccessBinding
import com.helthiotelehealth.app.modules.signupsuccess.`data`.viewmodel.SignUpSuccessVM
import kotlin.String
import kotlin.Unit

class SignUpSuccessDialog :
    BaseDialogFragment<DialogSignUpSuccessBinding>(R.layout.dialog_sign_up_success) {
  private val viewModel: SignUpSuccessVM by viewModels<SignUpSuccessVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.signUpSuccessVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "SIGN_UP_SUCCESS_DIALOG"


    fun getInstance(bundle: Bundle?): SignUpSuccessDialog {
      val fragment = SignUpSuccessDialog()
      fragment.arguments = bundle
      return fragment
    }
  }
}
