package com.tunecastmusicstreamingpodcastapp.app.modules.downloads.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityDownloadsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.downloads.`data`.model.DownloadsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.downloads.`data`.viewmodel.DownloadsVM
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DownloadsActivity : BaseActivity<ActivityDownloadsBinding>(R.layout.activity_downloads) {
  private val viewModel: DownloadsVM by viewModels<DownloadsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val downloadsAdapter = DownloadsAdapter(viewModel.downloadsList.value?:mutableListOf())
    binding.recyclerDownloads.adapter = downloadsAdapter
    downloadsAdapter.setOnItemClickListener(
    object : DownloadsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : DownloadsRowModel) {
        onClickRecyclerDownloads(view, position, item)
      }
    }
    )
    viewModel.downloadsList.observe(this) {
      downloadsAdapter.updateData(it)
    }
    binding.downloadsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerDownloads(
    view: View,
    position: Int,
    item: DownloadsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearSongCard -> {
        onClickRecyclerDownloadsLinearSongCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerDownloadsLinearSongCard(
    view: View,
    position: Int,
    item: DownloadsRowModel
  ): Unit {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 -> {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      1 -> {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      2 -> {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      3 -> {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
      4 -> {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "DOWNLOADS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, DownloadsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
