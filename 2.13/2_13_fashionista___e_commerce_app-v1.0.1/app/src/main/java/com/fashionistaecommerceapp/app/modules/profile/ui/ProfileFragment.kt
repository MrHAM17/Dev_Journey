package com.fashionistaecommerceapp.app.modules.profile.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseFragment
import com.fashionistaecommerceapp.app.databinding.FragmentProfileBinding
import com.fashionistaecommerceapp.app.modules.discountitems.ui.DiscountItemsActivity
import com.fashionistaecommerceapp.app.modules.profile.`data`.viewmodel.ProfileVM
import com.fashionistaecommerceapp.app.modules.settings.ui.SettingsActivity
import kotlin.String
import kotlin.Unit

class ProfileFragment : BaseFragment<FragmentProfileBinding>(R.layout.fragment_profile) {
  private val viewModel: ProfileVM by viewModels<ProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.profileVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearTelevision.setOnClickListener {
      val destIntent = DiscountItemsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.linearSearch.setOnClickListener {
      val destIntent = SettingsActivity.getIntent(requireActivity(), null)
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
