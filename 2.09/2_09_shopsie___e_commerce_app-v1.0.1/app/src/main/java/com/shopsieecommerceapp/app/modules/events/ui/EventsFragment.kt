package com.shopsieecommerceapp.app.modules.events.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.appcomponents.base.BaseFragment
import com.shopsieecommerceapp.app.databinding.FragmentEventsBinding
import com.shopsieecommerceapp.app.modules.events.`data`.model.EventsRowModel
import com.shopsieecommerceapp.app.modules.events.`data`.viewmodel.EventsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class EventsFragment : BaseFragment<FragmentEventsBinding>(R.layout.fragment_events) {
  private val viewModel: EventsVM by viewModels<EventsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val eventsAdapter = EventsAdapter(viewModel.eventsList.value?:mutableListOf())
    binding.recyclerEvents.adapter = eventsAdapter
    eventsAdapter.setOnItemClickListener(
    object : EventsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : EventsRowModel) {
        onClickRecyclerEvents(view, position, item)
      }
    }
    )
    viewModel.eventsList.observe(requireActivity()) {
      eventsAdapter.updateData(it)
    }
    binding.eventsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerEvents(
    view: View,
    position: Int,
    item: EventsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "EVENTS_FRAGMENT"

  }
}
