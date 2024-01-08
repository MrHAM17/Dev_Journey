package com.musicplayer.app.modules.artist.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.musicplayer.app.R
import com.musicplayer.app.appcomponents.base.BaseActivity
import com.musicplayer.app.databinding.ActivityArtistBinding
import com.musicplayer.app.modules.albums.ui.AlbumsActivity
import com.musicplayer.app.modules.artist.`data`.model.RenaissanceRowModel
import com.musicplayer.app.modules.artist.`data`.viewmodel.ArtistVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ArtistActivity : BaseActivity<ActivityArtistBinding>(R.layout.activity_artist) {
  private val viewModel: ArtistVM by viewModels<ArtistVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val renaissanceAdapter =
    RenaissanceAdapter(viewModel.renaissanceList.value?:mutableListOf())
    binding.recyclerRenaissance.adapter = renaissanceAdapter
    renaissanceAdapter.setOnItemClickListener(
    object : RenaissanceAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : RenaissanceRowModel) {
        onClickRecyclerRenaissance(view, position, item)
      }
    }
    )
    viewModel.renaissanceList.observe(this) {
      renaissanceAdapter.updateData(it)
    }
    binding.artistVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerRenaissance(
    view: View,
    position: Int,
    item: RenaissanceRowModel
  ): Unit {
    when(view.id) {
      R.id.linearUrgentSiege -> {
        val destIntent = AlbumsActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "ARTIST_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ArtistActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
