package com.musicplayer.app.modules.albums.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.base.BaseActivity
import com.musicplayer.app.databinding.ActivityAlbumsBinding
import com.musicplayer.app.modules.albums.`data`.model.AlbumsRowModel
import com.musicplayer.app.modules.albums.`data`.viewmodel.AlbumsVM
import com.musicplayer.app.modules.login.ui.LoginActivity
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
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerAlbums(
    view: View,
    position: Int,
    item: AlbumsRowModel
  ): Unit {
    when(view.id) {
      R.id.linearAlbum -> {
        val destIntent = LoginActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "ALBUMS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AlbumsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
