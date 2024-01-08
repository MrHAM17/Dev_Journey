package com.tunecastmusicstreamingpodcastapp.app.modules.profilesettings.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentProfileSettingsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.audiovideo.ui.AudioVideoActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.datasaverstorage.ui.DataSaverStorageActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.language.ui.LanguageActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.notificationsettings.ui.NotificationSettingsActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.playback.ui.PlaybackActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetailsone.ui.ProfileDetailsOneActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.profilesettings.`data`.viewmodel.ProfileSettingsVM
import com.tunecastmusicstreamingpodcastapp.app.modules.security.ui.SecurityActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.subscribe.ui.SubscribeActivity
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
    binding.linearAutoLayoutHorizontal.setOnClickListener {
      val destIntent = ProfileDetailsOneActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearAutoLayoutHorizontal6.setOnClickListener {
      val destIntent = LanguageActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearAutoLayoutHorizontal4.setOnClickListener {
      val destIntent = DataSaverStorageActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearAutoLayoutHorizontal5.setOnClickListener {
      val destIntent = SecurityActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.btnGetPremium.setOnClickListener {
      val destIntent = SubscribeActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearAutoLayoutHorizontal3.setOnClickListener {
      val destIntent = PlaybackActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearAutoLayoutHorizontal1.setOnClickListener {
      val destIntent = NotificationSettingsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearAutoLayoutHorizontal2.setOnClickListener {
      val destIntent = AudioVideoActivity.getIntent(requireActivity(), null)
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
