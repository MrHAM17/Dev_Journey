package com.socialsocialnetworking.app.modules.messages.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.databinding.RowMessageslistBinding
import com.socialsocialnetworking.app.modules.messages.`data`.model.MessageslistRowModel
import kotlin.Int
import kotlin.collections.List

class MessagesListAdapter(
  var list: List<MessageslistRowModel>
) : RecyclerView.Adapter<MessagesListAdapter.RowMessageslistVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowMessageslistVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_messageslist,parent,false)
    return RowMessageslistVH(view)
  }

  override fun onBindViewHolder(holder: RowMessageslistVH, position: Int) {
    val messageslistRowModel = MessageslistRowModel()
    // TODO uncomment following line after integration with data source
    // val messageslistRowModel = list[position]
    holder.binding.messageslistRowModel = messageslistRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<MessageslistRowModel>) {
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
      item: MessageslistRowModel
    ) {
    }
  }

  inner class RowMessageslistVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowMessageslistBinding = RowMessageslistBinding.bind(itemView)
  }
}
