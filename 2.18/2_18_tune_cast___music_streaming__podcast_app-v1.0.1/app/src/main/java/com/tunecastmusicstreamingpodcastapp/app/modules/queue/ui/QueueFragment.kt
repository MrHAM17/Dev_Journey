package com.tunecastmusicstreamingpodcastapp.app.modules.queue.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentQueueBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.queue.`data`.model.QueueRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.queue.`data`.viewmodel.QueueVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class QueueFragment : BaseFragment<FragmentQueueBinding>(R.layout.fragment_queue) {
  private val viewModel: QueueVM by viewModels<QueueVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val queueAdapter = QueueAdapter(viewModel.queueList.value?:mutableListOf())
    binding.recyclerQueue.adapter = queueAdapter
    queueAdapter.setOnItemClickListener(
    object : QueueAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : QueueRowModel) {
        onClickRecyclerQueue(view, position, item)
      }
    }
    )
    viewModel.queueList.observe(requireActivity()) {
      queueAdapter.updateData(it)
    }
    binding.queueVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerQueue(
    view: View,
    position: Int,
    item: QueueRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "QUEUE_FRAGMENT"

  }
}
