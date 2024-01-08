package com.shopsieecommerceapp.app.modules.userprofile.ui

import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseFragment
import com.shopsieecommerceapp.app.databinding.FragmentUserProfileBinding
import com.shopsieecommerceapp.app.modules.userprofile.`data`.viewmodel.UserProfileVM
import kotlin.String
import kotlin.Unit

class UserProfileFragment : BaseFragment<FragmentUserProfileBinding>(R.layout.fragment_user_profile)
    {
  private val viewModel: UserProfileVM by viewModels<UserProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.userProfileVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "USER_PROFILE_FRAGMENT"

  }
}
