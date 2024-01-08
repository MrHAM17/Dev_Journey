package com.moviestreaming.app.modules.channelfour.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.moviestreaming.app.R
import com.moviestreaming.app.databinding.RowChannelfourBinding
import com.moviestreaming.app.modules.channelfour.`data`.model.ChannelfourRowModel
import kotlin.Int
import kotlin.collections.List

class ChannelFourAdapter(
  var list: List<ChannelfourRowModel>
) : RecyclerView.Adapter<ChannelFourAdapter.RowChannelfourVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowChannelfourVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_channelfour,parent,false)
    return RowChannelfourVH(view)
  }

  override fun onBindViewHolder(holder: RowChannelfourVH, position: Int) {
    val channelfourRowModel = ChannelfourRowModel()
    // TODO uncomment following line after integration with data source
    // val channelfourRowModel = list[position]
    holder.binding.channelfourRowModel = channelfourRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<ChannelfourRowModel>) {
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
      item: ChannelfourRowModel
    ) {
    }
  }

  inner class RowChannelfourVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowChannelfourBinding = RowChannelfourBinding.bind(itemView)
  }
}
