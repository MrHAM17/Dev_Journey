package com.tikpikshortvideosocialnetworking.app.modules.profiletwo.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentProfileTwoBinding
import com.tikpikshortvideosocialnetworking.app.modules.editprofile.ui.EditProfileActivity
import com.tikpikshortvideosocialnetworking.app.modules.profiletwo.`data`.model.AutolayoutverticalRowModel
import com.tikpikshortvideosocialnetworking.app.modules.profiletwo.`data`.viewmodel.ProfileTwoVM
import com.tikpikshortvideosocialnetworking.app.modules.settings.ui.SettingsActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ProfileTwoFragment : BaseFragment<FragmentProfileTwoBinding>(R.layout.fragment_profile_two) {
  private val viewModel: ProfileTwoVM by viewModels<ProfileTwoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val autoLayoutVerticalAdapter =
    AutoLayoutVerticalAdapter(viewModel.autoLayoutVerticalList.value?:mutableListOf())
    binding.recyclerAutoLayoutVertical.adapter = autoLayoutVerticalAdapter
    autoLayoutVerticalAdapter.setOnItemClickListener(
    object : AutoLayoutVerticalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : AutolayoutverticalRowModel) {
        onClickRecyclerAutoLayoutVertical(view, position, item)
      }
    }
    )
    viewModel.autoLayoutVerticalList.observe(requireActivity()) {
      autoLayoutVerticalAdapter.updateData(it)
    }
    binding.profileTwoVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnEdit.setOnClickListener {
      val destIntent = EditProfileActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.imageIconlyCurvedSetting.setOnClickListener {
      val destIntent = SettingsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerAutoLayoutVertical(
    view: View,
    position: Int,
    item: AutolayoutverticalRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PROFILE_TWO_FRAGMENT"


    fun getInstance(bundle: Bundle?): ProfileTwoFragment {
      val fragment = ProfileTwoFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
