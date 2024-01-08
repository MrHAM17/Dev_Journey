package com.vertexrealestateapp.app.modules.profile.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseFragment
import com.vertexrealestateapp.app.databinding.FragmentProfileBinding
import com.vertexrealestateapp.app.modules.editprofile.ui.EditProfileActivity
import com.vertexrealestateapp.app.modules.favorite.ui.FavoriteActivity
import com.vertexrealestateapp.app.modules.pasttours.ui.PastToursActivity
import com.vertexrealestateapp.app.modules.profile.`data`.viewmodel.ProfileVM
import com.vertexrealestateapp.app.modules.recentlyviews.ui.RecentlyViewsActivity
import com.vertexrealestateapp.app.modules.settings.ui.SettingsActivity
import kotlin.String
import kotlin.Unit

class ProfileFragment : BaseFragment<FragmentProfileBinding>(R.layout.fragment_profile) {
  private val viewModel: ProfileVM by viewModels<ProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.profileVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearRecentltyViewed.setOnClickListener {
      val destIntent = RecentlyViewsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.btnTelevision.setOnClickListener {
      val destIntent = EditProfileActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearSettings.setOnClickListener {
      val destIntent = SettingsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearMyFavorites.setOnClickListener {
      val destIntent = FavoriteActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.btnArrowLeft.setOnClickListener {
      requireActivity().onBackPressed()
    }
    binding.linearPastTour.setOnClickListener {
      val destIntent = PastToursActivity.getIntent(requireActivity(), null)
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
