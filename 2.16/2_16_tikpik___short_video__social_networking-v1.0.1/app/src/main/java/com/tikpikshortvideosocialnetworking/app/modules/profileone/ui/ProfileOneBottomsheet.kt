package com.tikpikshortvideosocialnetworking.app.modules.profileone.ui

import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.tikpikshortvideosocialnetworking.app.databinding.BottomsheetProfileOneBinding
import com.tikpikshortvideosocialnetworking.app.modules.profileone.`data`.viewmodel.ProfileOneVM
import kotlin.String
import kotlin.Unit

class ProfileOneBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetProfileOneBinding>(R.layout.bottomsheet_profile_one) {
  private val viewModel: ProfileOneVM by viewModels<ProfileOneVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.profileOneVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "PROFILE_ONE_BOTTOMSHEET"

  }
}
