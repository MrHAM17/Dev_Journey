package com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityPodcastsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.charts.ui.ChartsActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.newreleases.ui.NewReleasesActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.model.ArtistsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.model.Frame3RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.model.PodcastsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.podcasts.`data`.viewmodel.PodcastsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PodcastsActivity : BaseActivity<ActivityPodcastsBinding>(R.layout.activity_podcasts) {
  private val viewModel: PodcastsVM by viewModels<PodcastsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val frameAdapter = FrameAdapter(viewModel.frameList.value?:mutableListOf())
    binding.recyclerFrame.adapter = frameAdapter
    frameAdapter.setOnItemClickListener(
    object : FrameAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Frame3RowModel) {
        onClickRecyclerFrame(view, position, item)
      }
    }
    )
    viewModel.frameList.observe(this) {
      frameAdapter.updateData(it)
    }
    val artistsAdapter = ArtistsAdapter(viewModel.artistsList.value?:mutableListOf())
    binding.recyclerArtists.adapter = artistsAdapter
    artistsAdapter.setOnItemClickListener(
    object : ArtistsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ArtistsRowModel) {
        onClickRecyclerArtists(view, position, item)
      }
    }
    )
    viewModel.artistsList.observe(this) {
      artistsAdapter.updateData(it)
    }
    val podcastsAdapter = PodcastsAdapter(viewModel.podcastsList.value?:mutableListOf())
    binding.recyclerPodcasts.adapter = podcastsAdapter
    podcastsAdapter.setOnItemClickListener(
    object : PodcastsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PodcastsRowModel) {
        onClickRecyclerPodcasts(view, position, item)
      }
    }
    )
    viewModel.podcastsList.observe(this) {
      podcastsAdapter.updateData(it)
    }
    binding.podcastsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerFrame(
    view: View,
    position: Int,
    item: Frame3RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerArtists(
    view: View,
    position: Int,
    item: ArtistsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerPodcasts(
    view: View,
    position: Int,
    item: PodcastsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearExploreCard -> {
        onClickRecyclerPodcastsLinearExploreCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerPodcastsLinearExploreCard(
    view: View,
    position: Int,
    item: PodcastsRowModel
  ): Unit {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 -> {
        val destIntent = NewReleasesActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      1 -> {
        val destIntent = ChartsActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "PODCASTS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PodcastsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
