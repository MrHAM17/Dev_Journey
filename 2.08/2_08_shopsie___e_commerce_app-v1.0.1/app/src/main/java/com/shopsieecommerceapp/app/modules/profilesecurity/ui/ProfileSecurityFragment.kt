package com.shopsieecommerceapp.app.modules.profilesecurity.ui

import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseFragment
import com.shopsieecommerceapp.app.databinding.FragmentProfileSecurityBinding
import com.shopsieecommerceapp.app.modules.profilesecurity.`data`.viewmodel.ProfileSecurityVM
import kotlin.String
import kotlin.Unit

class ProfileSecurityFragment :
    BaseFragment<FragmentProfileSecurityBinding>(R.layout.fragment_profile_security) {
  private val viewModel: ProfileSecurityVM by viewModels<ProfileSecurityVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.profileSecurityVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "PROFILE_SECURITY_FRAGMENT"

  }
}
