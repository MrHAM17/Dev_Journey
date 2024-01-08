package com.helthiotelehealth.app.modules.resetpasswordemail.ui

import androidx.fragment.app.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseFragment
import com.helthiotelehealth.app.databinding.FragmentResetPasswordEmailBinding
import com.helthiotelehealth.app.modules.resetpasswordemail.`data`.viewmodel.ResetPasswordEmailVM
import com.helthiotelehealth.app.modules.resetpasswordverifycode.ui.ResetPasswordVerifyCodeActivity
import kotlin.String
import kotlin.Unit

class ResetPasswordEmailFragment :
    BaseFragment<FragmentResetPasswordEmailBinding>(R.layout.fragment_reset_password_email) {
  private val viewModel: ResetPasswordEmailVM by viewModels<ResetPasswordEmailVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.resetPasswordEmailVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSendOTP.setOnClickListener {
      val destIntent = ResetPasswordVerifyCodeActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "RESET_PASSWORD_EMAIL_FRAGMENT"

  }
}
