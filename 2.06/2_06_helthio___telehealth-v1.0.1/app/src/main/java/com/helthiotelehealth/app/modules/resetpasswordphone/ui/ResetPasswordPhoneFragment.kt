package com.helthiotelehealth.app.modules.resetpasswordphone.ui

import androidx.fragment.app.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseFragment
import com.helthiotelehealth.app.databinding.FragmentResetPasswordPhoneBinding
import com.helthiotelehealth.app.modules.resetpasswordphone.`data`.viewmodel.ResetPasswordPhoneVM
import com.helthiotelehealth.app.modules.resetpasswordverifycode.ui.ResetPasswordVerifyCodeActivity
import kotlin.String
import kotlin.Unit

class ResetPasswordPhoneFragment :
    BaseFragment<FragmentResetPasswordPhoneBinding>(R.layout.fragment_reset_password_phone) {
  private val viewModel: ResetPasswordPhoneVM by viewModels<ResetPasswordPhoneVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.resetPasswordPhoneVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSendOTP.setOnClickListener {
      val destIntent = ResetPasswordVerifyCodeActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "RESET_PASSWORD_PHONE_FRAGMENT"

  }
}
