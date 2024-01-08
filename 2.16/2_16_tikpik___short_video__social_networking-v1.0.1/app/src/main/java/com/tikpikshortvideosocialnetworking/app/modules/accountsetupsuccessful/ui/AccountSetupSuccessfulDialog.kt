package com.tikpikshortvideosocialnetworking.app.modules.accountsetupsuccessful.ui

import android.content.Context
import android.os.Bundle
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseDialogFragment
import com.tikpikshortvideosocialnetworking.app.databinding.DialogAccountSetupSuccessfulBinding
import com.tikpikshortvideosocialnetworking.app.modules.accountsetupsuccessful.`data`.viewmodel.AccountSetupSuccessfulVM
import kotlin.String
import kotlin.Unit

class AccountSetupSuccessfulDialog :
    BaseDialogFragment<DialogAccountSetupSuccessfulBinding>(R.layout.dialog_account_setup_successful)
    {
  private val viewModel: AccountSetupSuccessfulVM by viewModels<AccountSetupSuccessfulVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.accountSetupSuccessfulVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "ACCOUNT_SETUP_SUCCESSFUL_DIALOG"


    fun getInstance(bundle: Bundle?): AccountSetupSuccessfulDialog {
      val fragment = AccountSetupSuccessfulDialog()
      fragment.arguments = bundle
      return fragment
    }
  }
}
