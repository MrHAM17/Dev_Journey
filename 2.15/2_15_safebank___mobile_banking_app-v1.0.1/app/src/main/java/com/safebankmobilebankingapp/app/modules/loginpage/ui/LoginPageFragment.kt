package com.safebankmobilebankingapp.app.modules.loginpage.ui

import androidx.fragment.app.viewModels
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseFragment
import com.safebankmobilebankingapp.app.databinding.FragmentLoginPageBinding
import com.safebankmobilebankingapp.app.modules.forgotpassword.ui.ForgotPasswordActivity
import com.safebankmobilebankingapp.app.modules.loginpage.`data`.viewmodel.LoginPageVM
import com.safebankmobilebankingapp.app.modules.minepagecontainer.ui.MinePageContainerActivity
import kotlin.String
import kotlin.Unit

class LoginPageFragment : BaseFragment<FragmentLoginPageBinding>(R.layout.fragment_login_page) {
  private val viewModel: LoginPageVM by viewModels<LoginPageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.loginPageVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnLogin.setOnClickListener {
      val destIntent = MinePageContainerActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.txtRemeberMeForget.setOnClickListener {
      val destIntent = ForgotPasswordActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "LOGIN_PAGE_FRAGMENT"

  }
}
