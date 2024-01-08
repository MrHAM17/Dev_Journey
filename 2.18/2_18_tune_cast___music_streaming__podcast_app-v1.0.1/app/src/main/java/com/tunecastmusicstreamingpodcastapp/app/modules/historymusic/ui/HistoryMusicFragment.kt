package com.tunecastmusicstreamingpodcastapp.app.modules.historymusic.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentHistoryMusicBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.historymusic.`data`.model.HistorymusicRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.historymusic.`data`.viewmodel.HistoryMusicVM
import com.tunecastmusicstreamingpodcastapp.app.modules.songplay.ui.SongPlayActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HistoryMusicFragment :
    BaseFragment<FragmentHistoryMusicBinding>(R.layout.fragment_history_music) {
  private val viewModel: HistoryMusicVM by viewModels<HistoryMusicVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val historyMusicAdapter =
    HistoryMusicAdapter(viewModel.historyMusicList.value?:mutableListOf())
    binding.recyclerHistoryMusic.adapter = historyMusicAdapter
    historyMusicAdapter.setOnItemClickListener(
    object : HistoryMusicAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : HistorymusicRowModel) {
        onClickRecyclerHistoryMusic(view, position, item)
      }
    }
    )
    viewModel.historyMusicList.observe(requireActivity()) {
      historyMusicAdapter.updateData(it)
    }
    binding.historyMusicVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerHistoryMusic(
    view: View,
    position: Int,
    item: HistorymusicRowModel
  ): Unit {
    when(view.id) {
      R.id.linearSongCard ->  {
        onClickRecyclerHistoryMusicLinearSongCard(view, position, item)
      }
    }
  }

  fun onClickRecyclerHistoryMusicLinearSongCard(
    view: View,
    position: Int,
    item: HistorymusicRowModel
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
    }
  }

  companion object {
    const val TAG: String = "HISTORY_MUSIC_FRAGMENT"

  }
}
