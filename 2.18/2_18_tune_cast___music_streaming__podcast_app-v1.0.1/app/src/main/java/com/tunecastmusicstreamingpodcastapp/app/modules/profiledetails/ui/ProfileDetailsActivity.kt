package com.tunecastmusicstreamingpodcastapp.app.modules.profiledetails.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityProfileDetailsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.followersdetailstabcontainer.ui.FollowersDetailsTabContainerActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetails.`data`.model.ProfiledetailsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetails.`data`.viewmodel.ProfileDetailsVM
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ProfileDetailsActivity :
    BaseActivity<ActivityProfileDetailsBinding>(R.layout.activity_profile_details) {
  private val viewModel: ProfileDetailsVM by viewModels<ProfileDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val profileDetailsAdapter =
    ProfileDetailsAdapter(viewModel.profileDetailsList.value?:mutableListOf())
    binding.recyclerProfileDetails.adapter = profileDetailsAdapter
    profileDetailsAdapter.setOnItemClickListener(
    object : ProfileDetailsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ProfiledetailsRowModel) {
        onClickRecyclerProfileDetails(view, position, item)
      }
    }
    )
    viewModel.profileDetailsList.observe(this) {
      profileDetailsAdapter.updateData(it)
    }
    binding.profileDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnFollow.setOnClickListener {
      val destIntent = SongPlayActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.linearAutoLayoutVertical.setOnClickListener {
      val destIntent = FollowersDetailsTabContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerProfileDetails(
    view: View,
    position: Int,
    item: ProfiledetailsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PROFILE_DETAILS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ProfileDetailsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
