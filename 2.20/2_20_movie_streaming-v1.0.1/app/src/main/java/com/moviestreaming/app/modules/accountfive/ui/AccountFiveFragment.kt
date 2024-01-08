package com.moviestreaming.app.modules.accountfive.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseFragment
import com.moviestreaming.app.databinding.FragmentAccountFiveBinding
import com.moviestreaming.app.modules.accountfive.`data`.viewmodel.AccountFiveVM
import kotlin.String
import kotlin.Unit

class AccountFiveFragment : BaseFragment<FragmentAccountFiveBinding>(R.layout.fragment_account_five)
    {
  private val viewModel: AccountFiveVM by viewModels<AccountFiveVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.accountFiveVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "ACCOUNT_FIVE_FRAGMENT"


    fun getInstance(bundle: Bundle?): AccountFiveFragment {
      val fragment = AccountFiveFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
