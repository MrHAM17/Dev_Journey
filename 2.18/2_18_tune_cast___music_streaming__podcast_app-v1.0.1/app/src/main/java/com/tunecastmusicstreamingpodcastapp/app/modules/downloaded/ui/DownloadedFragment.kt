package com.tunecastmusicstreamingpodcastapp.app.modules.downloaded.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentDownloadedBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.downloaded.`data`.model.DownloadedRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.downloaded.`data`.viewmodel.DownloadedVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class DownloadedFragment : BaseFragment<FragmentDownloadedBinding>(R.layout.fragment_downloaded) {
  private val viewModel: DownloadedVM by viewModels<DownloadedVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val downloadedAdapter = DownloadedAdapter(viewModel.downloadedList.value?:mutableListOf())
    binding.recyclerDownloaded.adapter = downloadedAdapter
    downloadedAdapter.setOnItemClickListener(
    object : DownloadedAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : DownloadedRowModel) {
        onClickRecyclerDownloaded(view, position, item)
      }
    }
    )
    viewModel.downloadedList.observe(requireActivity()) {
      downloadedAdapter.updateData(it)
    }
    binding.downloadedVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerDownloaded(
    view: View,
    position: Int,
    item: DownloadedRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "DOWNLOADED_FRAGMENT"

  }
}
