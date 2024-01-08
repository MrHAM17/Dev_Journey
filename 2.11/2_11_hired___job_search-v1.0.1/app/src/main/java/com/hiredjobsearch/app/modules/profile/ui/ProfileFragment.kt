package com.hiredjobsearch.app.modules.profile.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseFragment
import com.hiredjobsearch.app.databinding.FragmentProfileBinding
import com.hiredjobsearch.app.modules.profile.`data`.model.ProfileRowModel
import com.hiredjobsearch.app.modules.profile.`data`.viewmodel.ProfileVM
import com.hiredjobsearch.app.modules.settings.ui.SettingsActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ProfileFragment : BaseFragment<FragmentProfileBinding>(R.layout.fragment_profile) {
  private val viewModel: ProfileVM by viewModels<ProfileVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val profileAdapter = ProfileAdapter(viewModel.profileList.value?:mutableListOf())
    binding.recyclerProfile.adapter = profileAdapter
    profileAdapter.setOnItemClickListener(
    object : ProfileAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ProfileRowModel) {
        onClickRecyclerProfile(view, position, item)
      }
    }
    )
    viewModel.profileList.observe(requireActivity()) {
      profileAdapter.updateData(it)
    }
    binding.profileVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageImage1.setOnClickListener {
      val destIntent = SettingsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.imageImage.setOnClickListener {
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerProfile(
    view: View,
    position: Int,
    item: ProfileRowModel
  ): Unit {
    when(view.id) {
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
