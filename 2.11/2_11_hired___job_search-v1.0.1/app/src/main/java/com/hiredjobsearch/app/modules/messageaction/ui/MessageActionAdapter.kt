package com.hiredjobsearch.app.modules.messageaction.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.databinding.RowMessageactionBinding
import com.hiredjobsearch.app.modules.messageaction.`data`.model.MessageactionRowModel
import kotlin.Int
import kotlin.collections.List

class MessageActionAdapter(
  var list: List<MessageactionRowModel>
) : RecyclerView.Adapter<MessageActionAdapter.RowMessageactionVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMessageactionVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_messageaction,parent,false)
    return RowMessageactionVH(view)
  }

  override fun onBindViewHolder(holder: RowMessageactionVH, position: Int) {
    val messageactionRowModel = MessageactionRowModel()
    // TODO uncomment following line after integration with data source
    // val messageactionRowModel = list[position]
    holder.binding.messageactionRowModel = messageactionRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<MessageactionRowModel>) {
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
      item: MessageactionRowModel
    ) {
    }
  }

  inner class RowMessageactionVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMessageactionBinding = RowMessageactionBinding.bind(itemView)
    init {
      binding.linearEstherHoward.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, MessageactionRowModel())
      }
    }
  }
}
