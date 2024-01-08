package com.hiredjobsearch.app.modules.logoutpopup.ui

import android.content.Context
import android.os.Bundle
import androidx.fragment.app.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseDialogFragment
import com.hiredjobsearch.app.databinding.DialogLogoutPopupBinding
import com.hiredjobsearch.app.modules.logoutpopup.`data`.viewmodel.LogoutPopupVM
import com.hiredjobsearch.app.modules.settings.ui.SettingsActivity
import com.hiredjobsearch.app.modules.signupcreateacount.ui.SignUpCreateAcountActivity
import kotlin.String
import kotlin.Unit

class LogoutPopupDialog : BaseDialogFragment<DialogLogoutPopupBinding>(R.layout.dialog_logout_popup)
    {
  private val viewModel: LogoutPopupVM by viewModels<LogoutPopupVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.logoutPopupVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnLogOut.setOnClickListener {
      val destIntent = SignUpCreateAcountActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      dismiss()
    }
    binding.btnCancel.setOnClickListener {
      val destIntent = SettingsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      dismiss()
    }
  }

  companion object {
    const val TAG: String = "LOGOUT_POPUP_DIALOG"


    fun getInstance(bundle: Bundle?): LogoutPopupDialog {
      val fragment = LogoutPopupDialog()
      fragment.arguments = bundle
      return fragment
    }
  }
}
