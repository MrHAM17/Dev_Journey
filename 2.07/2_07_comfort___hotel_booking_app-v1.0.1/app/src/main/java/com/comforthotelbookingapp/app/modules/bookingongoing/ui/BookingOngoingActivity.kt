package com.comforthotelbookingapp.app.modules.bookingongoing.ui

import android.view.View
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityBookingOngoingBinding
import com.comforthotelbookingapp.app.modules.bookingongoing.`data`.model.Tickets1RowModel
import com.comforthotelbookingapp.app.modules.bookingongoing.`data`.viewmodel.BookingOngoingVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class BookingOngoingActivity :
    BaseActivity<ActivityBookingOngoingBinding>(R.layout.activity_booking_ongoing) {
  private val viewModel: BookingOngoingVM by viewModels<BookingOngoingVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val ticketsAdapter = TicketsAdapter(viewModel.ticketsList.value?:mutableListOf())
    binding.recyclerTickets.adapter = ticketsAdapter
    ticketsAdapter.setOnItemClickListener(
    object : TicketsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Tickets1RowModel) {
        onClickRecyclerTickets(view, position, item)
      }
    }
    )
    viewModel.ticketsList.observe(this) {
      ticketsAdapter.updateData(it)
    }
    binding.bookingOngoingVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerTickets(
    view: View,
    position: Int,
    item: Tickets1RowModel
  ): Unit {
    when(view.id) {
      R.id.btnCancelBooking ->  {
        // TODO please, add your navigation code here
      }
    }
  }

  companion object {
    const val TAG: String = "BOOKING_ONGOING_ACTIVITY"

  }
}
