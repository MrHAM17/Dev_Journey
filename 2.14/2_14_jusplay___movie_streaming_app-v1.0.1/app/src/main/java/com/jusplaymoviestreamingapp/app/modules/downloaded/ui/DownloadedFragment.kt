package com.jusplaymoviestreamingapp.app.modules.downloaded.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseFragment
import com.jusplaymoviestreamingapp.app.databinding.FragmentDownloadedBinding
import com.jusplaymoviestreamingapp.app.modules.downloaded.`data`.model.DownloadedRowModel
import com.jusplaymoviestreamingapp.app.modules.downloaded.`data`.viewmodel.DownloadedVM
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


    fun getInstance(bundle: Bundle?): DownloadedFragment {
      val fragment = DownloadedFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
