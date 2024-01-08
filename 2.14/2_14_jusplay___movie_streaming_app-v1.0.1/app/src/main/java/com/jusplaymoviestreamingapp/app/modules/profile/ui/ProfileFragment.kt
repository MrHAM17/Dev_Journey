package com.jusplaymoviestreamingapp.app.modules.profile.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseFragment
import com.jusplaymoviestreamingapp.app.databinding.FragmentProfileBinding
import com.jusplaymoviestreamingapp.app.modules.editprofile.ui.EditProfileActivity
import com.jusplaymoviestreamingapp.app.modules.history.ui.HistoryActivity
import com.jusplaymoviestreamingapp.app.modules.notification.ui.NotificationActivity
import com.jusplaymoviestreamingapp.app.modules.profile.`data`.viewmodel.ProfileVM
import com.jusplaymoviestreamingapp.app.modules.setting.ui.SettingActivity
import kotlin.String
import kotlin.Unit

class ProfileFragment : BaseFragment<FragmentProfileBinding>(R.layout.fragment_profile) {
  private val viewModel: ProfileVM by viewModels<ProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.profileVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearFrame.setOnClickListener {
      val destIntent = EditProfileActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearFrame1.setOnClickListener {
      val destIntent = NotificationActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearFrame2.setOnClickListener {
      val destIntent = HistoryActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearFrame4.setOnClickListener {
      val destIntent = SettingActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "PROFILE_FRAGMENT"


    fun getInstance(bundle: Bundle?): ProfileFragment {
      val fragment = ProfileFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
