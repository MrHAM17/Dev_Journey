package com.tunecastmusicstreamingpodcastapp.app.modules.songplayoverscreen.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentSongPlayOverScreenBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.songplayoverscreen.`data`.model.SongplayoverscreenRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.songplayoverscreen.`data`.viewmodel.SongPlayOverScreenVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SongPlayOverScreenFragment :
    BaseFragment<FragmentSongPlayOverScreenBinding>(R.layout.fragment_song_play_over_screen) {
  private val viewModel: SongPlayOverScreenVM by viewModels<SongPlayOverScreenVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val songPlayOverScreenAdapter =
    SongPlayOverScreenAdapter(viewModel.songPlayOverScreenList.value?:mutableListOf())
    binding.recyclerSongPlayOverScreen.adapter = songPlayOverScreenAdapter
    songPlayOverScreenAdapter.setOnItemClickListener(
    object : SongPlayOverScreenAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SongplayoverscreenRowModel) {
        onClickRecyclerSongPlayOverScreen(view, position, item)
      }
    }
    )
    viewModel.songPlayOverScreenList.observe(requireActivity()) {
      songPlayOverScreenAdapter.updateData(it)
    }
    binding.songPlayOverScreenVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.linearAutoLayoutVertical.setOnClickListener {
      val destIntent = SongPlayActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerSongPlayOverScreen(
    view: View,
    position: Int,
    item: SongplayoverscreenRowModel
  ): Unit {
    when(view.id) {
      R.id.linearSongCard ->  {
        onClickRecyclerSongPlayOverScreenLinearSongCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerSongPlayOverScreenLinearSongCard(
    view: View,
    position: Int,
    item: SongplayoverscreenRowModel
  ) {
    /** TODO As per your logic, Add constant type for item click.*/
    when(0) {
      0 ->  {
        val destIntent = SongPlayActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      1 ->  {
        val destIntent = SongPlayActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      2 ->  {
        val destIntent = SongPlayActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      3 ->  {
        val destIntent = SongPlayActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
      4 ->  {
        val destIntent = SongPlayActivity.getIntent(requireActivity(), null)
        startActivity(destIntent)
        requireActivity().onBackPressed()
      }
    }
  }

  companion object {
    const val TAG: String = "SONG_PLAY_OVER_SCREEN_FRAGMENT"

  }
}
