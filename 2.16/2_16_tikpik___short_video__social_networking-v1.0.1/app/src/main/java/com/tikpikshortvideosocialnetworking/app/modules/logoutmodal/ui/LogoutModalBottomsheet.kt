package com.tikpikshortvideosocialnetworking.app.modules.logoutmodal.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.tikpikshortvideosocialnetworking.app.databinding.BottomsheetLogoutModalBinding
import com.tikpikshortvideosocialnetworking.app.modules.logoutmodal.`data`.viewmodel.LogoutModalVM
import com.tikpikshortvideosocialnetworking.app.modules.settings.ui.SettingsActivity
import kotlin.String
import kotlin.Unit

class LogoutModalBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetLogoutModalBinding>(R.layout.bottomsheet_logout_modal)
    {
  private val viewModel: LogoutModalVM by viewModels<LogoutModalVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.logoutModalVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnCancel.setOnClickListener {
      val destIntent = SettingsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      dismiss()
    }
  }

  companion object {
    const val TAG: String = "LOGOUT_MODAL_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): LogoutModalBottomsheet {
      val fragment = LogoutModalBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
