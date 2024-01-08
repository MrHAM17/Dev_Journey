package com.comforthotelbookingapp.app.modules.bookingcompleted.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseFragment
import com.comforthotelbookingapp.app.databinding.FragmentBookingCompletedBinding
import com.comforthotelbookingapp.app.modules.bookingcompleted.`data`.model.TicketsRowModel
import com.comforthotelbookingapp.app.modules.bookingcompleted.`data`.viewmodel.BookingCompletedVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class BookingCompletedFragment :
    BaseFragment<FragmentBookingCompletedBinding>(R.layout.fragment_booking_completed) {
  private val viewModel: BookingCompletedVM by viewModels<BookingCompletedVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val ticketsAdapter = TicketsAdapter(viewModel.ticketsList.value?:mutableListOf())
    binding.recyclerTickets.adapter = ticketsAdapter
    ticketsAdapter.setOnItemClickListener(
    object : TicketsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TicketsRowModel) {
        onClickRecyclerTickets(view, position, item)
      }
    }
    )
    viewModel.ticketsList.observe(requireActivity()) {
      ticketsAdapter.updateData(it)
    }
    binding.bookingCompletedVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerTickets(
    view: View,
    position: Int,
    item: TicketsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "BOOKING_COMPLETED_FRAGMENT"

  }
}
