package com.tunecastmusicstreamingpodcastapp.app.modules.logout.ui

import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.BottomsheetLogoutBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.logout.`data`.viewmodel.LogoutVM
import kotlin.String
import kotlin.Unit

class LogoutBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetLogoutBinding>(R.layout.bottomsheet_logout) {
  private val viewModel: LogoutVM by viewModels<LogoutVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.logoutVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "LOGOUT_BOTTOMSHEET"

  }
}
