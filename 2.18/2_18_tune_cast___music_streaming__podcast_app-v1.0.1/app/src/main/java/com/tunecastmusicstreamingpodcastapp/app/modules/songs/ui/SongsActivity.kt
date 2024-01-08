package com.tunecastmusicstreamingpodcastapp.app.modules.songs.ui

import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivitySongsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.songs.`data`.model.SongsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.songs.`data`.viewmodel.SongsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SongsActivity : BaseActivity<ActivitySongsBinding>(R.layout.activity_songs) {
  private val viewModel: SongsVM by viewModels<SongsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val songsAdapter = SongsAdapter(viewModel.songsList.value?:mutableListOf())
    binding.recyclerSongs.adapter = songsAdapter
    songsAdapter.setOnItemClickListener(
    object : SongsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SongsRowModel) {
        onClickRecyclerSongs(view, position, item)
      }
    }
    )
    viewModel.songsList.observe(this) {
      songsAdapter.updateData(it)
    }
    binding.songsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSongs(
    view: View,
    position: Int,
    item: SongsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "SONGS_ACTIVITY"

  }
}
