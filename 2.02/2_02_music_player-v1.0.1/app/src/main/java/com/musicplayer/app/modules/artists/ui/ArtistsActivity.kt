package com.musicplayer.app.modules.artists.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.base.BaseActivity
import com.musicplayer.app.databinding.ActivityArtistsBinding
import com.musicplayer.app.modules.artists.`data`.model.ArtistRowModel
import com.musicplayer.app.modules.artists.`data`.viewmodel.ArtistsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ArtistsActivity : BaseActivity<ActivityArtistsBinding>(R.layout.activity_artists) {
  private val viewModel: ArtistsVM by viewModels<ArtistsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val artistAdapter = ArtistAdapter(viewModel.artistList.value?:mutableListOf())
    binding.recyclerArtist.adapter = artistAdapter
    artistAdapter.setOnItemClickListener(
    object : ArtistAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ArtistRowModel) {
        onClickRecyclerArtist(view, position, item)
      }
    }
    )
    viewModel.artistList.observe(this) {
      artistAdapter.updateData(it)
    }
    binding.artistsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerArtist(
    view: View,
    position: Int,
    item: ArtistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ARTISTS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ArtistsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
