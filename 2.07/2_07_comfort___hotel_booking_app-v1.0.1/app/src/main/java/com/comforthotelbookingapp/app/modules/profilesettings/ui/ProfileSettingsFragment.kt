package com.comforthotelbookingapp.app.modules.profilesettings.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseFragment
import com.comforthotelbookingapp.app.databinding.FragmentProfileSettingsBinding
import com.comforthotelbookingapp.app.modules.editprofile.ui.EditProfileActivity
import com.comforthotelbookingapp.app.modules.notificationsettings.ui.NotificationSettingsActivity
import com.comforthotelbookingapp.app.modules.profilesettings.`data`.viewmodel.ProfileSettingsVM
import com.comforthotelbookingapp.app.modules.security.ui.SecurityActivity
import kotlin.String
import kotlin.Unit

class ProfileSettingsFragment :
    BaseFragment<FragmentProfileSettingsBinding>(R.layout.fragment_profile_settings) {
  private val viewModel: ProfileSettingsVM by viewModels<ProfileSettingsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.profileSettingsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearNotifications.setOnClickListener {
      val destIntent = NotificationSettingsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearIconlyCurvedShield.setOnClickListener {
      val destIntent = SecurityActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearLock.setOnClickListener {
      val destIntent = EditProfileActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "PROFILE_SETTINGS_FRAGMENT"


    fun getInstance(bundle: Bundle?): ProfileSettingsFragment {
      val fragment = ProfileSettingsFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
