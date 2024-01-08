package com.helthiotelehealth.app.modules.messagehistory.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.databinding.RowMessagehistoryBinding
import com.helthiotelehealth.app.modules.messagehistory.`data`.model.MessagehistoryRowModel
import kotlin.Int
import kotlin.collections.List

class MessageHistoryAdapter(
  var list: List<MessagehistoryRowModel>
) : RecyclerView.Adapter<MessageHistoryAdapter.RowMessagehistoryVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMessagehistoryVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_messagehistory,parent,false)
    return RowMessagehistoryVH(view)
  }

  override fun onBindViewHolder(holder: RowMessagehistoryVH, position: Int) {
    val messagehistoryRowModel = MessagehistoryRowModel()
    // TODO uncomment following line after integration with data source
    // val messagehistoryRowModel = list[position]
    holder.binding.messagehistoryRowModel = messagehistoryRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<MessagehistoryRowModel>) {
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
      item: MessagehistoryRowModel
    ) {
    }
  }

  inner class RowMessagehistoryVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMessagehistoryBinding = RowMessagehistoryBinding.bind(itemView)
  }
}
