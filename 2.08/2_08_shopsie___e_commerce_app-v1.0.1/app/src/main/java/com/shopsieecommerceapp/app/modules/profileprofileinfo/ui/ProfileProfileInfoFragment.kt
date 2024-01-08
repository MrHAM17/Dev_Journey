package com.shopsieecommerceapp.app.modules.profileprofileinfo.ui

import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseFragment
import com.shopsieecommerceapp.app.databinding.FragmentProfileProfileInfoBinding
import com.shopsieecommerceapp.app.modules.profileprofileinfo.`data`.viewmodel.ProfileProfileInfoVM
import kotlin.String
import kotlin.Unit

class ProfileProfileInfoFragment :
    BaseFragment<FragmentProfileProfileInfoBinding>(R.layout.fragment_profile_profile_info) {
  private val viewModel: ProfileProfileInfoVM by viewModels<ProfileProfileInfoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.profileProfileInfoVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "PROFILE_PROFILE_INFO_FRAGMENT"

  }
}
