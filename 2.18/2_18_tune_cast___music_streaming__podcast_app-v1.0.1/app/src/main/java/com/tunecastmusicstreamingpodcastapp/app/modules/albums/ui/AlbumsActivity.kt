package com.tunecastmusicstreamingpodcastapp.app.modules.albums.ui

import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityAlbumsBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.albums.`data`.model.AlbumsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.albums.`data`.viewmodel.AlbumsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AlbumsActivity : BaseActivity<ActivityAlbumsBinding>(R.layout.activity_albums) {
  private val viewModel: AlbumsVM by viewModels<AlbumsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val albumsAdapter = AlbumsAdapter(viewModel.albumsList.value?:mutableListOf())
    binding.recyclerAlbums.adapter = albumsAdapter
    albumsAdapter.setOnItemClickListener(
    object : AlbumsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : AlbumsRowModel) {
        onClickRecyclerAlbums(view, position, item)
      }
    }
    )
    viewModel.albumsList.observe(this) {
      albumsAdapter.updateData(it)
    }
    binding.albumsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerAlbums(
    view: View,
    position: Int,
    item: AlbumsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ALBUMS_ACTIVITY"

  }
}
