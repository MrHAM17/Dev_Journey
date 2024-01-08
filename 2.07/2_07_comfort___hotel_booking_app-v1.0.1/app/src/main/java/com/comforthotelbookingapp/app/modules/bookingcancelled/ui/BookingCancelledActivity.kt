package com.comforthotelbookingapp.app.modules.bookingcancelled.ui

import android.view.View
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityBookingCancelledBinding
import com.comforthotelbookingapp.app.modules.bookingcancelled.`data`.model.Tickets2RowModel
import com.comforthotelbookingapp.app.modules.bookingcancelled.`data`.viewmodel.BookingCancelledVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class BookingCancelledActivity :
    BaseActivity<ActivityBookingCancelledBinding>(R.layout.activity_booking_cancelled) {
  private val viewModel: BookingCancelledVM by viewModels<BookingCancelledVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val ticketsAdapter = TicketsAdapter(viewModel.ticketsList.value?:mutableListOf())
    binding.recyclerTickets.adapter = ticketsAdapter
    ticketsAdapter.setOnItemClickListener(
    object : TicketsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Tickets2RowModel) {
        onClickRecyclerTickets(view, position, item)
      }
    }
    )
    viewModel.ticketsList.observe(this) {
      ticketsAdapter.updateData(it)
    }
    binding.bookingCancelledVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerTickets(
    view: View,
    position: Int,
    item: Tickets2RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "BOOKING_CANCELLED_ACTIVITY"

  }
}
