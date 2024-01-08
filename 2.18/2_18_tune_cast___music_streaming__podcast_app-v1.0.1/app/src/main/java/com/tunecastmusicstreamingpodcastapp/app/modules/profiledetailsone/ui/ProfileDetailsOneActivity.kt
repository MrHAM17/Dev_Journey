package com.tunecastmusicstreamingpodcastapp.app.modules.profiledetailsone.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityProfileDetailsOneBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.editprofile.ui.EditProfileActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetailsone.`data`.model.ProfiledetailsoneRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetailsone.`data`.viewmodel.ProfileDetailsOneVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ProfileDetailsOneActivity :
    BaseActivity<ActivityProfileDetailsOneBinding>(R.layout.activity_profile_details_one) {
  private val viewModel: ProfileDetailsOneVM by viewModels<ProfileDetailsOneVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val profileDetailsOneAdapter =
    ProfileDetailsOneAdapter(viewModel.profileDetailsOneList.value?:mutableListOf())
    binding.recyclerProfileDetailsOne.adapter = profileDetailsOneAdapter
    profileDetailsOneAdapter.setOnItemClickListener(
    object : ProfileDetailsOneAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ProfiledetailsoneRowModel) {
        onClickRecyclerProfileDetailsOne(view, position, item)
      }
    }
    )
    viewModel.profileDetailsOneList.observe(this) {
      profileDetailsOneAdapter.updateData(it)
    }
    binding.profileDetailsOneVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnEditProfile.setOnClickListener {
      val destIntent = EditProfileActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerProfileDetailsOne(
    view: View,
    position: Int,
    item: ProfiledetailsoneRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PROFILE_DETAILS_ONE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ProfileDetailsOneActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
