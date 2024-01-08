package com.firstbankdigitalbanking.app.modules.forgotpassword.ui

import androidx.activity.viewModels
import com.firstbankdigitalbanking.app.R
import com.firstbankdigitalbanking.app.appcomponents.base.BaseActivity
import com.firstbankdigitalbanking.app.databinding.ActivityForgotPasswordBinding
import com.firstbankdigitalbanking.app.modules.forgotpassword.`data`.viewmodel.ForgotPasswordVM
import kotlin.String

class ForgotPasswordActivity :
        BaseActivity<ActivityForgotPasswordBinding>(R.layout.activity_forgot_password) {
    private val viewModel: ForgotPasswordVM by viewModels<ForgotPasswordVM>()

    override fun onInitialized() {
        viewModel.navArguments = intent.extras?.getBundle("bundle")
        binding.forgotPasswordVM = viewModel
    }

    override fun setUpClicks() {
    }

    companion object {
        const val TAG: String = "FORGOT_PASSWORD_ACTIVITY"
    }
}
