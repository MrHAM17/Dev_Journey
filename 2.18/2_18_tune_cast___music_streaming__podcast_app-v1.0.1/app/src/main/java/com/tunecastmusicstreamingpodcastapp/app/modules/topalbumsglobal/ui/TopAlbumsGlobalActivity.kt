package com.tunecastmusicstreamingpodcastapp.app.modules.topalbumsglobal.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityTopAlbumsGlobalBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.topalbumsglobal.`data`.model.Topalbumsglobal2RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.topalbumsglobal.`data`.viewmodel.TopAlbumsGlobalVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TopAlbumsGlobalActivity :
    BaseActivity<ActivityTopAlbumsGlobalBinding>(R.layout.activity_top_albums_global) {
  private val viewModel: TopAlbumsGlobalVM by viewModels<TopAlbumsGlobalVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val topAlbumsGlobalAdapter =
    TopAlbumsGlobalAdapter(viewModel.topAlbumsGlobalList.value?:mutableListOf())
    binding.recyclerTopAlbumsGlobal.adapter = topAlbumsGlobalAdapter
    topAlbumsGlobalAdapter.setOnItemClickListener(
    object : TopAlbumsGlobalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Topalbumsglobal2RowModel) {
        onClickRecyclerTopAlbumsGlobal(view, position, item)
      }
    }
    )
    viewModel.topAlbumsGlobalList.observe(this) {
      topAlbumsGlobalAdapter.updateData(it)
    }
    binding.topAlbumsGlobalVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageImage.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerTopAlbumsGlobal(
    view: View,
    position: Int,
    item: Topalbumsglobal2RowModel
  ): Unit {
    when(view.id) {
      R.id.linearSongCard ->  {
        val destIntent = SongPlayActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "TOP_ALBUMS_GLOBAL_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, TopAlbumsGlobalActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
