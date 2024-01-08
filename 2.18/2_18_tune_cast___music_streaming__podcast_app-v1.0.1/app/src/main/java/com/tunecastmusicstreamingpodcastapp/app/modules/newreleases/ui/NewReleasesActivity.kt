package com.tunecastmusicstreamingpodcastapp.app.modules.newreleases.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityNewReleasesBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.newreleases.`data`.model.NewreleasesRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.newreleases.`data`.viewmodel.NewReleasesVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class NewReleasesActivity : BaseActivity<ActivityNewReleasesBinding>(R.layout.activity_new_releases)
    {
  private val viewModel: NewReleasesVM by viewModels<NewReleasesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val newReleasesAdapter =
    NewReleasesAdapter(viewModel.newReleasesList.value?:mutableListOf())
    binding.recyclerNewReleases.adapter = newReleasesAdapter
    newReleasesAdapter.setOnItemClickListener(
    object : NewReleasesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : NewreleasesRowModel) {
        onClickRecyclerNewReleases(view, position, item)
      }
    }
    )
    viewModel.newReleasesList.observe(this) {
      newReleasesAdapter.updateData(it)
    }
    binding.newReleasesVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerNewReleases(
    view: View,
    position: Int,
    item: NewreleasesRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "NEW_RELEASES_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, NewReleasesActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
