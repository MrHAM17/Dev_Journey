package com.shopsieecommerceapp.app.modules.events.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.shopsieecommerceapp.app.R
import com.shopsieecommerceapp.app.databinding.RowEventsBinding
import com.shopsieecommerceapp.app.modules.events.`data`.model.EventsRowModel
import kotlin.Int
import kotlin.collections.List

class EventsAdapter(
  var list: List<EventsRowModel>
) : RecyclerView.Adapter<EventsAdapter.RowEventsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowEventsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_events,parent,false)
    return RowEventsVH(view)
  }

  override fun onBindViewHolder(holder: RowEventsVH, position: Int) {
    val eventsRowModel = EventsRowModel()
    // TODO uncomment following line after integration with data source
    // val eventsRowModel = list[position]
    holder.binding.eventsRowModel = eventsRowModel
  }

  override fun getItemCount(): Int = 2
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<EventsRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: EventsRowModel
    ) {
    }
  }

  inner class RowEventsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowEventsBinding = RowEventsBinding.bind(itemView)
    init {
      binding.btnOne.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, EventsRowModel())
      }
      binding.btnInterested.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, EventsRowModel())
      }
    }
  }
}
