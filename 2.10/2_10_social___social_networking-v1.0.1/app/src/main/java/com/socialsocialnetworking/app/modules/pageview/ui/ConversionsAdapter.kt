package com.socialsocialnetworking.app.modules.pageview.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.socialsocialnetworking.app.R
import com.socialsocialnetworking.app.databinding.RowConversionsBinding
import com.socialsocialnetworking.app.modules.pageview.`data`.model.ConversionsRowModel
import kotlin.Int
import kotlin.collections.List

class ConversionsAdapter(
  var list: List<ConversionsRowModel>
) : RecyclerView.Adapter<ConversionsAdapter.RowConversionsVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowConversionsVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_conversions,parent,false)
    return RowConversionsVH(view)
  }

  override fun onBindViewHolder(holder: RowConversionsVH, position: Int) {
    val conversionsRowModel = ConversionsRowModel()
    // TODO uncomment following line after integration with data source
    // val conversionsRowModel = list[position]
    holder.binding.conversionsRowModel = conversionsRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ConversionsRowModel>) {
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
      item: ConversionsRowModel
    ) {
    }
  }

  inner class RowConversionsVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowConversionsBinding = RowConversionsBinding.bind(itemView)
  }
}
