package com.ecommerce.app.modules.account.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseFragment
import com.ecommerce.app.databinding.FragmentAccountBinding
import com.ecommerce.app.modules.account.`data`.viewmodel.AccountVM
import com.ecommerce.app.modules.addpayment.ui.AddPaymentActivity
import com.ecommerce.app.modules.notification.ui.NotificationActivity
import com.ecommerce.app.modules.profile.ui.ProfileActivity
import kotlin.String
import kotlin.Unit

class AccountFragment : BaseFragment<FragmentAccountBinding>(R.layout.fragment_account) {
  private val viewModel: AccountVM by viewModels<AccountVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.accountVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearAccountOption.setOnClickListener {
      val destIntent = ProfileActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearAccountOption3.setOnClickListener {
      val destIntent = AddPaymentActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.imageNotificationIcon.setOnClickListener {
      val destIntent = NotificationActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "ACCOUNT_FRAGMENT"


    fun getInstance(bundle: Bundle?): AccountFragment {
      val fragment = AccountFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
