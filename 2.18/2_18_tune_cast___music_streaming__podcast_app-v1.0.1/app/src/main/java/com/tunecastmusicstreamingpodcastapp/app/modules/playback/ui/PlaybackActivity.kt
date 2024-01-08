package com.tunecastmusicstreamingpodcastapp.app.modules.playback.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityPlaybackBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.playback.`data`.model.PlaybackRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.playback.`data`.viewmodel.PlaybackVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class PlaybackActivity : BaseActivity<ActivityPlaybackBinding>(R.layout.activity_playback) {
  private val viewModel: PlaybackVM by viewModels<PlaybackVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val playbackAdapter = PlaybackAdapter(viewModel.playbackList.value?:mutableListOf())
    binding.recyclerPlayback.adapter = playbackAdapter
    playbackAdapter.setOnItemClickListener(
    object : PlaybackAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : PlaybackRowModel) {
        onClickRecyclerPlayback(view, position, item)
      }
    }
    )
    viewModel.playbackList.observe(this) {
      playbackAdapter.updateData(it)
    }
    binding.playbackVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerPlayback(
    view: View,
    position: Int,
    item: PlaybackRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "PLAYBACK_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PlaybackActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
